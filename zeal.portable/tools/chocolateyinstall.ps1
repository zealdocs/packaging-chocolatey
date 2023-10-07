$packageArgs = @{
  PackageName    = 'zeal.portable'
  Url            = 'https://github.com/zealdocs/zeal/releases/download/v0.6.1/zeal-portable-0.6.1-windows-x86.7z'
  Checksum       = '9ab3fd0c15101afe3e6be18afe892868c37784d4bf556a81311b3544621501ae'
  ChecksumType   = 'sha256'
  Url64bit       = 'https://github.com/zealdocs/zeal/releases/download/v0.6.1/zeal-portable-0.6.1-windows-x64.7z'
  Checksum64     = '08e9992f620ba0a5ea348471d8ac9c85059e95eedd950118928be639746e3f94'
  ChecksumType64 = 'sha256'
  UnzipLocation  = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
