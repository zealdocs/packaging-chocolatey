$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName    = 'zeal.portable'
  UnzipLocation  = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

  Url64bit       = 'https://github.com/zealdocs/zeal/releases/download/v0.7.1/zeal-0.7.1-portable-windows-x64.7z'
  Checksum64     = 'a8a03ec9671823d744fd7afe504c8b46146cb1f6b96c6b019c7ac21a3aa523b1'
  ChecksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
