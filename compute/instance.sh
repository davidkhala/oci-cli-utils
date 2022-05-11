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
inspect() {
    oci compute instance get --instance-id $1
}
list() {
    if [ -z $compartmentID ]; then
        local compartment=$1
        export compartmentID=$($CURRENT/../compartment.sh search $compartment)
        if [ -z $compartmentID ]; then
            echo "Error: no compartment-id found for name [$compartment]"
            exit 1
        fi
        shift # shift 1 step to skip $1
    fi
    oci compute instance list --all --compartment-id $compartmentID --query "data" $@
}
$@
