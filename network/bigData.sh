map-public() {

  PRIVATE_IP=$1
  SUBNET_OCID=$2
  DISPLAY_NAME=$3
  oci network public-ip create --display-name $DISPLAY_NAME --compartment-id $(oci network private-ip list --subnet-id $SUBNET_OCID --ip-address $PRIVATE_IP | jq -r '.data[] | ."compartment-id"') --lifetime "RESERVED" --private-ip-id $(oci network private-ip list --subnet-id $SUBNET_OCID --ip-address $PRIVATE_IP | jq -r '.data[] | ."id"')

}

list() {

  oci bds instance list --query data --compartment-id $1 --query 'data[].{id:id, displayName:"display-name", isCloudSqlConfigured:"is-cloud-sql-configured", isHighAvailability: "is-high-availability", isSecure:"is-secure", lifecycleState: "lifecycle-state", timeCreated:"time-created", numberOfNodes: "number-of-nodes"}'

}

inspect() {
  oci bds instance get --bds-instance-id $1
}
find-nodeIP() {
  # JMespath blur search
  
  oci bds instance get --bds-instance-id $1 --query 'data.nodes[].{subnet:"subnet-id", name:"display-name", hostname:hostname, ip:"ip-address"}[?contains(name,`'${name}'`)]'
}

$@
