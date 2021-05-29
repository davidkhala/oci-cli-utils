set -e
list() {
    local compartmentID=$(../compartment.sh search $1)
    echo compartment-id=$compartmentID
    oci compute instance-console-connection list --compartment-id $compartmentID  --query "data" --all
}
get(){
    oci compute instance-console-connection get --instance-console-connection-id $1
}
$@
