$packageName = 'zeal.portable'

Install-ChocolateyZipPackage -PackageName 'zeal.portable' `
 -Url 'https://bintray.com/artifact/download/zealdocs/windows/zeal-portable-0.3.1-windows-x86.7z' `
 -UnzipLocation "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" `
 -Checksum '6FF9E1E5C1680FB5ECBF21C85EB99328CC167C3B608BEADB2E0B998CF6755501' `
 -ChecksumType 'sha256'