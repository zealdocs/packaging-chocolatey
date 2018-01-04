$packageArgs = @{
  packageName    = 'zeal.install'
  fileType       = 'msi'
  url            = 'https://github.com/zealdocs/zeal/releases/download/v0.5.0/zeal-0.5.0-windows-x86.msi'
  checksum       = 'edb710ac977762726365f934f5fadb327c504f1ec4d7bbf71c1b84a52d6cbd18'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/zealdocs/zeal/releases/download/v0.5.0/zeal-0.5.0-windows-x64.msi'
  checksum64     = 'b73ea868f0abeba3cc5c181e78173204c1de0a1af2c74f18cbe8e097b591b238'
  checksumType64 = 'sha256'
  silentArgs     = '/quiet'
  validExitCodes = @(0,3010)
}

Install-ChocolateyPackage @packageArgs
