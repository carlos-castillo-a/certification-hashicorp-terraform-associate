# Chapter 4: Commands & Arguments
### **Relevant Commands**
- `terraform import [options] ADDRESS ID`: This command will import resources made outside of Terraform to the state by mapping the resource to a defined object within the configuration; `[options]` will allow for additional flags:
  - `-configure=path`: Path to directory of Terraform configuration files that configure provider for import; default is working directory
- `terraform state <subcommand> [options] [args]`: This command is used to alter the Terraform state file as needed:
  - `terraform state list [options] [address...]`: shows resource addresses for every resource Terraform knows about in the configuration; can be filtered by partial resource address
  - `terraform state show [options] ADDRESS`: displays detailed data about one resource
  - `terraform refresh [options]`: updates the state data to match the real-world condition of the managed resources in the configuration; this is automatically done during plans and applies, but not when interacting with the state directly

