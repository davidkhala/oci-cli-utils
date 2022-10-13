fromMacBrew(){
  brew uninstall oci-cli
 
}
fromMacScript(){
    rm -rf $HOME/lib/oracle-cli
    rm -rf $HOME/bin/oci
    rm -rf $HOME/bin/oci-cli-scripts

}
fromPIP(){
  pip uninstall oci-cli
}
$@
