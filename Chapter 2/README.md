# Chapter 2:
### Understand the purpose of Terraform (vs other IaC)  
- [X] **Explain multi-cloud and provider-agnostic benefits**  
- [X] **Explain the benefits of state**

---

### **Explain multi-cloud and provider-agnostic benefits**
Terraform has plugins called providers that let Terraform code interact with cloud platforms via APIs. There are over 1000 providers that have compatibility with Terraform including the biggest public cloud platforms (AWS, GCP, Azure). Full list can be found in the [Terraform Registry](https://registry.terraform.io/browse/providers).

This provider-agnostic approach has many benefits including:
- **One language for all**
  - Terraform is written in one uniform language (HCL) and takes care of the communication with APIs on the backend
- **Provider-agnostic**
  - Being cloud agnostic gives engineers the ability to create highly environments using standardized and DevOps managed documents
  - This includes the majority of public cloud platforms
- **Tracking**
  - Each resource that is deployed is tracked via a state file, meaning multi-cloud deployments can easily be tracked from the same place
  - This tracking also makes it easy to update and replace infrastructure without needing to worry about the deletion/replacement of the old configurations
  - Reverting back to a previous configuration is also much easier than traditional methods and leads to less human error and better collaboration.

___
### **Explain the benefits of state**
Terraform is a stateful tool, meaning that anything built by terraform is tracked. When a resource is changed or deleted in the code, and those changes are applied, Terrafrom will know what resources to delete and recreate based on the configuration. It also keeps track of what has changed for future reference.

- **Mapping**
  - Terraform requires mapping of its declared objects to real world resources
    - For example, a remote object `resource "aws_instance" "name"` needs to be able to represent the actual instance `i-abcd1234` so Terraform can keep track of changes
  - Terraform uses its own state structure that guarantees a _one-to-one_ mapping of resources
    - If a remote object is bound to multiple resources, it will cause errors
    - When importing objects created outside of Terraform, it is important to map each object to only once resources
- **Metadata**
  - In addition to tracking the mapping of objects to resources, Terraform must also track the metadata, such as resource dependencies
  - This tracking of dependecies is very important for destroying or modifying resources in an existing configuration
    - When one or more objects are removed from the configuration, the state file will still have the mapping to a resource and will know to destroy it, but it may not know the order resources will need to be deleted by
    - Terraform stores a copy of the most recent set of dependencies within the state (metadata) in order understand the order of destruction regardless of provider
    - There is also other metadata that is stored for similar reasons, such as pointers to provider configs of resources if multiple provider aliases exist
- **Performance**
  - To improve performance, Terrafrom can store a cache of the attribute values for all resources in the state (feature is optional)
  - For small infrastructues, the default behavior is that for every `plan` and `apply`, Terrafrom will sync the resources to the state
  - For larger infrastructure, the process of querying every resource and since most cloud providers do not allow the query of multiple resources at a time, Terraform would be slowed by the default process so it must use the `refresh=false` flag as well as the `-target` flag to cache the state
- **Syncing**
  - the default configuration of Terraform stores the state file in the current working directiory where Terraform was first run, but it is important to safeguard the file in a shared location to allow for collaboration
  - A _Remote State_ is recommended so Terraform can use the remote locking as a measure to avoid two or more users running different configs at the same time and ensuring the state is always up to date

___

[ ◀︎ Previous](/Chapter%201/) | [Next ▶︎ ](/Chapter%203/)