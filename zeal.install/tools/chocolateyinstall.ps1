$packageArgs = @{
  packageName    = 'zeal.install'
  fileType       = 'msi'
  silentArgs     = '/quiet /norestart'
  validExitCodes = @(0, 3010, 1641)

  url64bit       = 'https://github.com/zealdocs/zeal/releases/download/v0.7.1/zeal-0.7.1-windows-x64.msi'
  checksum64     = '088024009bc7c327f9fd8e309d89942781e28a471c2dddef9e20177ccc135dda'
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
