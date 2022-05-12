list(){
    oci os bucket list --query "data" $@
}

$@