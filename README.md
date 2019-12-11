# random
The repo is for an example code on how to use the random resource

## What does the random provider do 

Random provider generates a random sequence of characters. It keeps this sequence steady until we change something in its configuration

## What this code does

This code will generate a random_id value and it is listed by using the output section of the code in a hexa-decimal variant

## Why use this code

With this code you can practicaly see the use of the random provider

## How to use the code in this repo

 * Install Terraform
 ```
 https://www.terraform.io/downloads.html
 ```
 
 * Clone this repository
 ```
 git clone https://github.com/yordanivh/random
 ```
 
 * Change directory
 ```
 cd random
 ```
 
 * Initialize the project ( Terraform will download provider plugins)
 
 ```
 terraform init
 ```
 
 * Plan the operation so that you see what actions will taken
 
 ```
 terraform plan
 ```
 
 * Run Terraform apply to create the resources
 ```
 terraform apply
 ```

* To destroy the created resources

 ```
 terraform destroy
 ```

## Sample Output
## What is expected

1.Running terraform init downloads the necessary rpovider plugins
```
random (newbrnach) $ terraform init

Initializing the backend...

Initializing provider plugins...
- Checking for available provider plugins...
- Downloading plugin for provider "random" (hashicorp/random) 2.2.1...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.random: version = "~> 2.2"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```
2. Plan command give a plan of actions
```
random (newbrnach) $ terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.


------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # random_id.example will be created
  + resource "random_id" "example" {
      + b64         = (known after apply)
      + b64_std     = (known after apply)
      + b64_url     = (known after apply)
      + byte_length = 8
      + dec         = (known after apply)
      + hex         = (known after apply)
      + id          = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.
```

3.Apply performs the changes
```
random (newbrnach) $ terraform apply

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # random_id.example will be created
  + resource "random_id" "example" {
      + b64         = (known after apply)
      + b64_std     = (known after apply)
      + b64_url     = (known after apply)
      + byte_length = 8
      + dec         = (known after apply)
      + hex         = (known after apply)
      + id          = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

random_id.example: Creating...
random_id.example: Creation complete after 0s [id=W69N_LNUd6M]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

id = 5baf4dfcb35477a3
```
4. Destroy removes the resource
```
random (newbrnach) $ terraform destroy
random_id.example: Refreshing state... [id=W69N_LNUd6M]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # random_id.example will be destroyed
  - resource "random_id" "example" {
      - b64         = "W69N_LNUd6M" -> null
      - b64_std     = "W69N/LNUd6M=" -> null
      - b64_url     = "W69N_LNUd6M" -> null
      - byte_length = 8 -> null
      - dec         = "6606584926111561635" -> null
      - hex         = "5baf4dfcb35477a3" -> null
      - id          = "W69N_LNUd6M" -> null
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

random_id.example: Destroying... [id=W69N_LNUd6M]
random_id.example: Destruction complete after 0s

Destroy complete! Resources: 1 destroyed.

```
