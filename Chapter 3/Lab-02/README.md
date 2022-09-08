# Lab 02: Using Multiple Providers
### File [main.tf](./main.tf)
This file expands on Lab 01, creating a Docker container in the same way but naming it using a random name provider.

### File [terraform.tf](./terraform.tf)
This file specifies the required provider version and Terraform version to be able to run the configuration. Once the configuration is initialized, both the _Docker_ provider and the _Random_ provider will be fetched and downloaded accordingly.  
Additionally, a `.terraform.lock.hcl` file will be generated in the working directoy ro ensure that Terraform alwasy uses the same provider versions when executing on the remote providers.