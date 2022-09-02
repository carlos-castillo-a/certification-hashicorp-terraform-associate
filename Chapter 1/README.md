# Chapter 1
### Understand infrastructure as code (IaC) concepts
- [X] Explain what IaC is  
- [X] Describe advantages of IaC patterns
- [X] [Lab-01](/Chapter%201/Lab-01/)

---

### **Explain what IaC is**
Infrastructure as Code (IaC) refers to tools that allow for the management of infrastructure using configuration files instead of manual changes via a GUI. The use of IaC gives engineers the ability to manage infrastructure in a consistent and repeatable way. 

Terraform is an IaC tool made by HashiCorp that allows for the definition of resources through human-readable code (written in HCL) stored in configuration files. Terraform is cloud agnostic and can be used on many platforms/providers so long as they are supported. It can also be used to version control the infrastructure deployments allowing for sharing and collaboration.

---

### **Describe advantages of IaC patterns**
IaC tools have many advantages over traditional deployment methods, primary the following:
  - Remove the need for GUI
    - IaC consists of human-readable code that allows engineers to write what they would like to deploy without the need of navigating through GUIs
  - Enable DevOps tools
    - The use of code allows deployments to be tracked and version controlled giving it more visibility and allowing for simpler collaboration between teams
  - Declare Infrastructure
    - IaC is typically declarative via code meaning engineers can write the resources they want to be created without needing to worry about the underlying API calls
    - Allows for the code to serve as documentation for what has been deployed
  - Speed, Cost, Risk
    - Because there is no need for clicking during deployments, the chances of human errors are much lower which over all reduces costs
    - IaC can help standardize deployments and give engineers the ability to redeploy version of their resources multiple times instantly
    - IaC can give engineers the chance to easily create and implement security rules throughout all infrastructure 

![Example](https://mktg-content-api-hashicorp.vercel.app/api/assets?product=tutorials&version=main&asset=public%2Fimg%2Fterraform%2Fterraform-iac.png)