$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName    = 'zeal.portable'
  UnzipLocation  = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

  Url64bit       = 'https://github.com/zealdocs/zeal/releases/download/v0.7.2/zeal-0.7.2-portable-windows-x64.7z'
  Checksum64     = '15d2d1417678a8a035cac58385d540949f8ffc63bceb3379d471a02509e10c32'
  ChecksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
