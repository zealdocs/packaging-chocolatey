import-module -Name $PSScriptRoot\..\au\AU

$latest_release_url = 'https://api.github.com/repos/zealdocs/zeal/releases/latest'

function global:au_GetLatest {
  $latest_release = Invoke-WebRequest $latest_release_url | ConvertFrom-Json

  return @{
    Version      = $latest_release | Select -ExpandProperty name
    URL32        = $latest_release `
    | Select -ExpandProperty assets `
    | Where { $_.browser_download_url -Like '*-x86.7z' } `
    | Select -ExpandProperty browser_download_url
    URL64        = $latest_release `
    | Select -ExpandProperty assets `
    | Where { $_.browser_download_url -Like '*-x64.7z' } `
    | Select -ExpandProperty browser_download_url
    ReleaseNotes = $latest_release `
    | Select -ExpandProperty body
  }
}

function global:au_SearchReplace {
  return @{
    "tools\chocolateyinstall.ps1" = @{
      "(Url\s+=\s+)'[^']*'"        = "`${1}'$($Latest.URL32)'"
      "(Checksum\s+=\s+)'[^']*'"   = "`${1}'$($Latest.Checksum32)'"
      "(Url64bit\s+=\s+)'[^']*'"   = "`${1}'$($Latest.URL64)'"
      "(Checksum64\s+=\s+)'[^']*'" = "`${1}'$($Latest.Checksum64)'"
    }
  }
}

function global:au_BeforeUpdate($pkg) {
  $pkg.NuspecXml.package.metadata.releaseNotes = $global:Latest.ReleaseNotes.ToString()
}

update
