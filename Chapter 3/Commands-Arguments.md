# Chapter 3 Commands & Arguments
### **Relevant Commands**
- `terraform init`: Initializes the working directory containing the Terraform configuration files. It is the first command that should be run after writing a new terraform configuration; it also helps set up the backed for storing stage files and follows desired configuration; providers are downloaded when this command is executed
  - `-upgrade`: Flag that will upgrade the providers to the latest version consistent within the version constraints specified in the configuration
- `terraform plan`: Presents a plan of action that will be taken based on the configuration prior to the actual execution
- `terrafrom apply`: Execures the deployment of resources into the real environment based on the configuration files also tracking them through a state file
- `terraform destroy`: Destructive command that deletes all resources being tracked by the state file


### **Relevant Arguments**
- `alias`: This can be used to create multiple configurations using the _same_ provider

    ```
    # The default provider configuration; resources that begin with `aws_` will use
    # it as the default, and it can be referenced as `aws`.
    provider "aws" {
        region = "us-east-1"
    }

    # Additional provider configuration for west coast region; resources can
    # reference this as `aws.west`.
    provider "aws" {
        alias  = "west"
        region = "us-west-2"
    }
    ```
