$packageArgs = @{
  packageName    = 'zeal.install'
  fileType       = 'msi'
  silentArgs     = '/quiet /norestart'
  validExitCodes = @(0, 3010, 1641)

  url64bit       = 'https://github.com/zealdocs/zeal/releases/download/v0.7.2/zeal-0.7.2-windows-x64.msi'
  checksum64     = 'aa41c00c143e2ceb020b080b7a61c9d1bd5e9bb358645a1f8c1ecb5a4af2abc8'
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
