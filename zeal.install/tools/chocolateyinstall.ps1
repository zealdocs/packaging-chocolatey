$packageArgs = @{
  packageName		= 'zeal.install'
  fileType			= 'msi'
  url				= 'https://bintray.com/artifact/download/zealdocs/windows/zeal-0.3.1-windows-x86.msi'
  checksum			= '4D93C6D2E93E0DA5663EF78EB73550A2153B8D1A0EDDA803E24F5585F90D3905'
  checksumType		= 'sha256'
  silentArgs		= '/quiet'
  validExitCodes	= @(0,3010)
}

Install-ChocolateyPackage @packageArgs
