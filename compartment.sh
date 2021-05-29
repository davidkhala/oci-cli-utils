search() {
    local compartmentName=$1
    # get compartment ocid from compartment name
    oci iam compartment list --all --compartment-id-in-subtree true | jq -r ".data | map(select(.name == \"${compartmentName}\" ))[0].\"compartment-id\""

}
$@
