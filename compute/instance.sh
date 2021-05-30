set -e
CURRENT=$(cd $(dirname ${BASH_SOURCE}) && pwd)
search() {

    local instance=$1 # instance name
    shift             # shift 1 step to skip $1
    if [ -z $compartmentID ]; then
        local compartment=$1
        export compartmentID=$($CURRENT/../compartment.sh search $compartment)
        
        shift # shift 1 step to skip $1
    fi

    oci compute instance list --auth ${auth:-security_token} --all --compartment-id $compartmentID --query "data[?\"display-name\"=='${instance}'].id | [0]" --raw-output $@

}
list() {
    if [ -z $compartmentID ]; then
        local compartment=$1
        export compartmentID=$($CURRENT/../compartment.sh search $compartment)
        shift # shift 1 step to skip $1
    fi
    oci compute instance list --auth ${auth:-security_token} --all --compartment-id $compartmentID --query "data" $@
}
$@
