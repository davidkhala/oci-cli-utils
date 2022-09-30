set -e
CURRENT=$(cd $(dirname ${BASH_SOURCE}) && pwd)
list() {
    
    local instanceName=$1
    local query="data"
    if [ -n $instanceName ];then
        "instance-id": "ocid1.instance.oc1.ap-seoul-1.anuwgljrhxv2vbycdorwqs5obj5a5ofq2hz7uaokxkaj54fqki7lcn5pdzhq"
    fi
    oci compute instance-console-connection list --query "data" --all
}


$@
