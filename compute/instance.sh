set -e
CURRENT=$(cd $(dirname ${BASH_SOURCE}) && pwd)
search() {

    local instance=$1 # instance name
    shift             # shift 1 step to skip $1

    oci compute instance list --auth ${auth:-security_token} --all --query "data[?\"display-name\"=='${instance}'].id | [0]" --raw-output $@

}
inspect() {
    oci compute instance get --instance-id $1
}
list() {
    
    oci compute instance list --all $@
}
$@
