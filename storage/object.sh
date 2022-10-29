put() {
    oci os object put --bucket-name=$1 --file=$2
}
$@
