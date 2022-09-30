set -e

search() {
    local compartmentName=$1
    shift # shift 1 step to skip $1
    # get compartment ocid list from compartment name (blur match)
    
    oci iam compartment list --all --compartment-id-in-subtree true --query "data[?contains(name, '${compartmentName}')].id" $@
}

list() {
    # TODO provide short format
    oci iam compartment list --all $@
}

policy() {
    oci iam policy list $@
}

$@
