fromMacBrew() {
  brew uninstall oci-cli

}
fromMacScript() {
  # rarely used
  rm -rf $HOME/lib/oracle-cli
  rm -rf $HOME/bin/oci
  rm -rf $HOME/bin/oci-cli-scripts

}
dnf() {
  sudo dnf -y remove python36-oci-cli
}
yum() {
  sudo yum -y remove python36-oci-cli
}
manual() {
  pip uninstall --user oci-cli
}
$@
