$packageArgs = @{
  packageName    = 'zeal.install'
  fileType       = 'msi'
  url            = 'https://bintray.com/artifact/download/zealdocs/windows/zeal-0.4.0-windows-x64.msi'
  checksum       = '02C9A27F7E7B63DCE066DB35E78077CBD535C28794D52F8EE66D72F493B6A72F'
  checksumType   = 'sha256'
  silentArgs     = '/quiet'
  validExitCodes = @(0,3010)
}

Install-ChocolateyPackage @packageArgs
