$packageName = 'zeal.portable'

Install-ChocolateyZipPackage -PackageName 'zeal.portable' `
 -Url 'https://bintray.com/artifact/download/zealdocs/windows/zeal-portable-0.4.0-windows-x64.7z' `
 -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
 -Checksum 'F25A8C8CEA9324F1907B0D646BB2994A93FB8B4A8E68C6558770D449FEB5052E' `
 -ChecksumType 'sha256'
