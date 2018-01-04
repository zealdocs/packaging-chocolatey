$packageArgs = @{
  packageName    = 'zeal.install'
  fileType       = 'msi'
  url            = 'https://dl.bintray.com/zealdocs/windows/zeal-0.5.0-windows-x64.msi'
  checksum       = 'B73EA868F0ABEBA3CC5C181E78173204C1DE0A1AF2C74F18CBE8E097B591B238'
  checksumType   = 'sha256'
  silentArgs     = '/quiet'
  validExitCodes = @(0,3010)
}

Install-ChocolateyPackage @packageArgs
