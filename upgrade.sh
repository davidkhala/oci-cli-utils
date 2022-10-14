linux() {
    bash -c "$(curl -L https://raw.githubusercontent.com/oracle/oci-cli/master/scripts/install/install.sh)"
}
manual() {
    pip install oci-cli --upgrade
}

brew() {
    brew update && brew upgrade oci-cli
}
$@
