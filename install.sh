
linux(){
  curl https://raw.githubusercontent.com/davidkhala/linux-utils/main/oracle/oci-cli.sh | bash -s install 
}
OracleLinux7(){
  sudo yum install python36-oci-cli

}
brew(){
  brew update && brew install oci-cli

}

$@
