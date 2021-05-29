set -e
search() {
    local compartmentName=$1
    shift # shift 1 step to skip $1
    # get compartment ocid from compartment name
    oci iam compartment list --all --compartment-id-in-subtree true --query "data[?name=='${compartmentName}'].id | [0]" --raw-output $@

}
$@
