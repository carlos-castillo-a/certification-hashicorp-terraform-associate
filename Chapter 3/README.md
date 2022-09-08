# Chapter 3
### **Understand Terraform basics**
- [X] **[Lab-01](./Lab-01/main.tf): Install and version Terraform providers**
- [X] **Describe plugin-based architecture**
- [x] **[Lab-02](./Lab-02/README.md): Write Terraform configuration using multiple providers**
- [x] **Describe how Terraform finds and fetches providers**

___
### **Install and version Terraform providers**
All Terraform configurations must declare which providers they require so Terraform can install the libraries required to use them. By default, Terrafrom looks for providers in the [Terrafrom Provider Registry](https://registry.terraform.io/browse/providers), but providers can also be sourced locally and referenced in the code.

_Example from [Lab-01](./Lab-01/main.tf):_  

```
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.15.0"
    }
  }
}

provider "docker" {}
```
___
### **Describe plugin-based architecture**
Providers are essentially _plugins_ that have releases seperately to Terraform itself, with each provider having different version numbers.

Each provider is responsible for creating the necessary files and code needed to interact with a specific platform (i.e. AWS, Azure, Oracle). Providers can also be created manually
___
### **Write Terraform configuration using multiple providers**
Terraform can work with multiple providers using the same configuration files so long as the providers are specified.

_See [Lab-02](./Lab-02/README.md) for more._

___
### **Describe how Terraform finds and fetches providers**
Terraform fetches the provider after the `terrafrom init` command is issued. The way it finds the necessary files is by checking the configuration for providers and then checking if there are plugins locally. If there are none, it will fetch the provider plugins via the Terraform Provider Registry.  
After finding the providers, it will download and install the plugins locally and save the configuration in a hidden folder called `.terraform` 

_Here is an excerpt from initializing Terrafrom in the Lab-02 directory showing the process:_  

```
$ terraform init

Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/random versions matching "3.0.0"...
- Finding kreuzwerker/docker versions matching "~> 2.15.0"...
- Installing kreuzwerker/docker v2.15.0...
- Installed kreuzwerker/docker v2.15.0 (self-signed, key ID 0000000000000000)
- Using previously-installed hashicorp/random v3.0.0

Terraform has made some changes to the provider dependency selections recorded
in the .terraform.lock.hcl file. Review those changes and commit them to your
version control system if they represent changes you intended to make.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```
___

[ ◀︎ Previous](/Chapter%202/) | [Next ▶︎ ](/Chapter%204/)