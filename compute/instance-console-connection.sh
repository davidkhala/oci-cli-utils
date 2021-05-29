set -e
list(){
    local compartmentID=$(../compartment.sh search $1)
    oci compute instance-console-connection list --compartment-id $compartmentID

}
$@