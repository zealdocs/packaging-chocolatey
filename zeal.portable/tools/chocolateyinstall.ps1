$packageName = 'zeal.portable'

Install-ChocolateyZipPackage -PackageName 'zeal.portable' `
 -Url 'https://dl.bintray.com/zealdocs/windows/zeal-portable-0.5.0-windows-x64.7z' `
 -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
 -Checksum '4A517D03825CF300EFD9405FF101E890004C0824ABEA9A7637D661885D9D8F3C' `
 -ChecksumType 'sha256'
