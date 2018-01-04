$packageArgs = @{
  PackageName    = 'zeal.portable'
  Url            = 'https://github.com/zealdocs/zeal/releases/download/v0.5.0/zeal-portable-0.5.0-windows-x86.7z'
  Checksum       = 'c638a65b7cb9b18efaaee1192ede83cecbc716095a3b28778c31fadb9b01ef3b'
  ChecksumType   = 'sha256'
  Url64bit       = 'https://github.com/zealdocs/zeal/releases/download/v0.5.0/zeal-portable-0.5.0-windows-x64.7z'
  Checksum64     = '4a517d03825cf300efd9405ff101e890004c0824abea9a7637d661885d9d8f3c'
  ChecksumType64 = 'sha256'
  UnzipLocation  = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
