set -e
CURRENT=$(cd $(dirname ${BASH_SOURCE}) && pwd)
list() {
    # TODO WIP
    if [ -z $compartmentID ]; then
        local compartment=$1
        compartmentID=$($CURRENT/../compartment.sh search $compartment)
        shift # shift 1 step to skip $1
    fi
    
    local instanceName=$1
    local query="data"
    if [ -n $instanceName ];then
        "instance-id": "ocid1.instance.oc1.ap-seoul-1.anuwgljrhxv2vbycdorwqs5obj5a5ofq2hz7uaokxkaj54fqki7lcn5pdzhq"
    fi
    oci compute instance-console-connection list --compartment-id $compartmentID --query "data" --all
}


$@
