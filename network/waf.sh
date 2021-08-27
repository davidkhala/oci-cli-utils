create() {
    # local extraOpts
    
    # if [ -n $domains ]; then
    #     extraOpts=" --additional-domains $domains"
    # fi
    echo [debug] $origins
    oci waas waas-policy create --compartment-id $compartment_id --domain $domain --origins $origins
}
$@
