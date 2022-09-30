namespace='--query "data" --raw-output'

instance-principal() {
    oci os ns get --auth instance_principal $namespace
}

login-interactive() {
    oci session authenticate
}

session() {
    oci os ns get --config-file ~/.oci/config --profile DEFAULT --auth security_token $namespace
}

$@
