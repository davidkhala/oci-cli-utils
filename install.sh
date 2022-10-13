linux() {
  bash -c "$(curl -L https://raw.githubusercontent.com/oracle/oci-cli/master/scripts/install/install.sh)"
}
OracleLinux7() {
  sudo yum install python36-oci-cli

}
brew() {
  brew update && brew install oci-cli

}
init() {
  oci setup oci-cli-rc
  vi ~/.oci/oci_cli_rc
}

$@
