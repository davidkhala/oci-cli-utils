extend-disk(){
  sudo /usr/libexec/oci-growfs -y
}
view-metadata(){
  oci-metadata --human-readable  
}
view-public-ip(){
  oci-public-ip --human-readable
}
$@
