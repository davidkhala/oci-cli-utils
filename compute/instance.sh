set -e
CURRENT=$(cd $(dirname ${BASH_SOURCE}) && pwd)
search() {
    
    local instance=$1 # instance name
    shift # shift 1 step to skip $1
    if [ -z $compartmentID ]; then
        local compartment=$1
        compartmentID=$($CURRENT/../compartment.sh search $compartment)
        shift # shift 1 step to skip $1
    fi
    
    oci compute instance list --all --compartment-id $compartmentID --query "data[?name=='${instance}'].id | [0]" --raw-output $@

}
