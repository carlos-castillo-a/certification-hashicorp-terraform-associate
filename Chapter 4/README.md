# Chapter 4
### **Use Terraform outside of core workflow**
- [X] **[Lab-03](): Describe when to use `terraform import` to import existing infrastructure into your Terraform state**
- [X] **Use `terraform state` to view Terraform state**
- [X] **Describe when to enable verbose logging and what the outcome/value is**

___
### **Describe when to use `terraform import` to import existing infrastructure into your Terraform state**
When infrastructure is created outside of Terraform configurations, they cannot typically be managed by Terraform unless they have been imported.  

> Note: At the moment, Terraform only allows you to import resources into the state, it will not generate a configuration for the resources. Future versions will also generate configuration for imported resources.

- **Usage**
  - `terraform import [options] ADDRESS ID`
    - `import` will map an existing resource using an ID to a configured object in your terrafrom configuration
    - `ADDRESS` refers to a valid resource address in the Terraform configuration, and because any resource address is valid, the import command can import resources into modules as well as the root directory itself
    - `ID` is a value dependant on the provider and resource type being imported, for instance, an AWS EC2 instance would be `i-abcd1234` but a Route53 ZoneID would be `Z12ANB3UHJ0D3N`
  - This command can only inport one resources at a time and will not import an entire collection of resources such as an AWS VPC

_See [Lab-03]() for detailed example._

___
### **Use `terraform state` to view Terraform state**
As Terraform usage becomes more advanced, there are some cases when modification of the Terrafrom state may be required. Instead of modifying the state file directly, the `terraform state` commands can be used to update portions of the file.

_See [Commands & Arguments](./Commands-Arguments.md) for more information._
___
### **Describe when to enable verbose logging and what the outcome/value is**
Enabling verbose logging will assist in troubleshooting issues that could be experienced using Terraform. There are four potential types of issues that could arise that should be tackled in the following order:
- **Language Errors** 
  - Configuration files written in HCL could encounter sytax errors
- **State Errors**
  - State file stores information on resources that are provisioned and if state becomes out of sync, it may destroy or change your configuration
- **Core Errors**
  - The Terraform application that contains all logic for operations could potentially have a bug, this is where verbose logging could be very helpgul
- **Provider Errors**
  - Provider plugins that handle API calls to providers could also have issues

Terraform's detailed logs that can be enabled by setting the `TF_LOG` environment variable to any value. This will cause detailed logs to aprear on the stderr (error caputring in command line).

The `TF_LOG` can be set to the following log levels (most to least verbose):
- `TRACE` <sub>If `TF_LOG` is set to `JSON` type, it will automatically output logs at the `TRACE` level or higher and uses JSON as the formatting.</sub>
- `DEBUG`
- `WARN`
- `ERROR`

___

[ ◀︎ Previous](/Chapter%203/) | [Next ▶︎ ](/Chapter%205/)