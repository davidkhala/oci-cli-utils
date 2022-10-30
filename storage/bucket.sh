list() {
    oci os bucket list $@
}
delete() {
    local name=$1
    shift 1
    oci os bucket delete --bucket-name=$name --empty --force $@
}
$@
