# Oracle Cloud Infrastructure CLI


## Notes
- After install ** Close and re-open PowerShell to reload changes to your PATH **
- [JSON format input template](compute-template.json) can be exported by
    - `oci compute instance launch --generate-full-command-json-input > compute-template.json`
- [interactive token auth(based on web browser)](https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/clitoken.htm)
    - `oci session authenticate`

## Reference
- [OCI CLI: Quickstart](https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/cliinstall.htm)

## Caveats
- inline install is not ready on oracle/oci-cli/install.ps1 
- `install.ps1` not work on Powershell 7
    -  `Exception setting "SecurityProtocol": "The requested security protocol is not supported."`
