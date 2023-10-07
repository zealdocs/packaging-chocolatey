$packageArgs = @{
  packageName    = 'zeal.install'
  fileType       = 'msi'
  url            = 'https://github.com/zealdocs/zeal/releases/download/v0.6.1/zeal-0.6.1-windows-x86.msi'
  checksum       = 'f4796664b64d30317cf50914f0ff730139bb0b40656aaba5376769976896025a'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/zealdocs/zeal/releases/download/v0.6.1/zeal-0.6.1-windows-x64.msi'
  checksum64     = '875a91b0aa91a7dc56ef23b551006fd64b33ebfb16b710e4924c391751e6d515'
  checksumType64 = 'sha256'
  silentArgs     = '/quiet'
  validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
