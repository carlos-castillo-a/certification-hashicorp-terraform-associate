# HashiCorp Certified: Terraform Associate (002)
This repository will serve as a central hub for all notes and materials created on my path to obtain the Terraform Associate Certification. The folders in the repository are divided by Chapters that correspond to sections of the exam guide (below).

![](https://www.datocms-assets.com/2885/1645553469-hcta0-badge.png?fit=max&fm=webp&q=80&w=1500)
___
# Exam Guide
1.	[Understand infrastructure as code (IaC) concepts](./Chapter%201/)
    - [X] Explain what IaC is
    - [X] Describe advantages of IaC patterns

2.	[Understand the purpose of Terraform (vs other IaC)](./Chapter%202/)
    - [X] Explain multi-cloud and provider-agnostic benefits
    - [X] Explain the benefits of state

3.	[Understand Terraform basics](./Chapter%203/)
    - [ ] Install and version Terraform providers
    - [ ] Describe plugin-based architecture
    - [ ] Write Terraform configuration using multiple providers
    - [ ] Describe how Terraform finds and fetches providers

4.	[Use Terraform outside of core workflow](./Chapter%204/)
    - [ ] Describe when to use `terraform import` to import existing infrastructure into your Terraform state
    - [ ] Use `terraform state` to view Terraform state
    - [ ] Describe when to enable verbose logging and what the outcome/value is

5.	[Interact with Terraform modules](./Chapter%205/)
    - [ ] Contrast and use different module source options including the public Terraform Module Registry
    - [ ] Interact with module inputs and outputs
    - [ ] Describe variable scope within modules/child modules
    - [ ] Set module version

6.	[Use the core Terraform workflow](./Chapter%206/)
    - [ ] Describe Terraform workflow ( Write -> Plan -> Create )
    - [ ] Initialize a Terraform working directory (`terraform init`)
    - [ ] Validate a Terraform configuration (`terraform validate`)
    - [ ] Generate and review an execution plan for Terraform (`terraform plan`)
    - [ ] Execute changes to infrastructure with Terraform (`terraform apply`)
    - [ ] Destroy Terraform managed infrastructure (`terraform destroy`)
    - [ ] Apply formatting and style adjustments to a configuration (`terraform fmt`)

7.	[Implement and maintain state](./Chapter%207/)
    - [ ] Describe default `local` backend
    - [ ] Describe state locking
    - [ ] Handle backend and cloud integration authentication methods
    - [ ] Differentiate remote state back end options
    - [ ] Manage resource drift and Terraform state
    - [ ] Describe `backend` block and cloud integration in configuration
    - [ ] Understand secret management in state files

8.	[Read, generate, and modify configuration](./Chapter%208/)
    - [ ] Demonstrate use of variables and outputs
    - [ ] Describe secure secret injection best practice
    - [ ] Understand the use of collection and structural types
    - [ ] Create and differentiate `resource` and `data` configuration
    - [ ] Use resource addressing and resource parameters to connect resources together
    - [ ] Use HCL and Terraform functions to write configuration
    - [ ] Describe built-in dependency management (order of execution based)

9.	[Understand Terraform Cloud capabilities](./Chapter%209/)
    - [ ] Explain how Terraform Cloud helps to manage infrastructure
    - [ ] Describe how Terraform Cloud enables collaboration and governance

---
_Exam scheduled for Septeber 24th, 1:30PM CST._
