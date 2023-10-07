import-module -Name $PSScriptRoot\..\au\AU

$latest_release_url = 'https://api.github.com/repos/zealdocs/zeal/releases/latest'

function global:au_GetLatest {
  $latest_release = Invoke-WebRequest $latest_release_url | ConvertFrom-Json

  return @{
    Version      = $latest_release | Select -ExpandProperty name
    ReleaseNotes = $latest_release | Select -ExpandProperty body
  }
}

function global:au_SearchReplace {
  return @{
    "$($Latest.PackageName).nuspec" = @{
      '(<dependency id="zeal.install" version=")[0-9.]+"' = "`${1}$($Latest.Version)`""
    }
  }
}

function global:au_BeforeUpdate($pkg) {
  $pkg.NuspecXml.package.metadata.releaseNotes = $global:Latest.ReleaseNotes.ToString()
}

update
