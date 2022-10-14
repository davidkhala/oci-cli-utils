linux() {
  curl https://raw.githubusercontent.com/davidkhala/linux-utils/main/oracle/oci-cli.sh | bash -s install
}
dnf() {
  sudo dnf -y install oraclelinux-developer-release-el8
  sudo dnf -y install python36-oci-cli

}
yum() {
  echo [WARN] Recommend for Oracle Linux 7 only
  sudo yum -y install python36-oci-cli

}
brew() {
  brew update && brew install oci-cli

}
manual() {
  pip install --user oci-cli
}
init() {
  oci setup oci-cli-rc
  vi ~/.oci/oci_cli_rc
}

$@
