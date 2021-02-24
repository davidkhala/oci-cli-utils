Set-ExecutionPolicy RemoteSigned
Invoke-WebRequest https://raw.githubusercontent.com/oracle/oci-cli/master/scripts/install/install.ps1 -OutFile install-temp.ps1
./install-temp.ps1 -AcceptAllDefaults  
Remove-Item install-temp.ps1
