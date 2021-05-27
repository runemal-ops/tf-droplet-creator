# tf-droplet-creator

## Overview
This is a very simplistic terraform module used to perform digitalocean droplet creation

## Requirements to use it
* Install terraform [Terraform CLI] (https://learn.hashicorp.com/tutorials/terraform/install-cli)
* Run Terraform init inside your module folder
`terraform init`
* Modify your terraform.tfvars file to add the machines you want to create
```bash
droplet = {
  "web1" = {
      image   = "ubuntu-18-04-x64"
      name    = "web-1"
      region  = "nyc2"
      size    = "s-1vcpu-1gb"
  },
  "web2" = {
      image   = "ubuntu-18-04-x64"
      name    = "web-2"
      region  = "nyc2"
      size    = "s-1vcpu-1gb"
  }
}
```
* Run Terraform plan inside your module folder
`terraform plan`
* If everything goes well the ouput will look like this
```bash
$ terraform plan
var.do_token
  Enter a value: 


Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # digitalocean_droplet.droplet["web1"] will be created
  + resource "digitalocean_droplet" "droplet" {
      + backups              = false
      + created_at           = (known after apply)
      + disk                 = (known after apply)
      + id                   = (known after apply)
      + image                = "ubuntu-18-04-x64"
      + ipv4_address         = (known after apply)
      + ipv4_address_private = (known after apply)
      + ipv6                 = false
      + ipv6_address         = (known after apply)
      + locked               = (known after apply)
      + memory               = (known after apply)
      + monitoring           = false
      + name                 = "web-1"
      + price_hourly         = (known after apply)
      + price_monthly        = (known after apply)
      + private_networking   = (known after apply)
      + region               = "nyc2"
      + resize_disk          = true
      + size                 = "s-1vcpu-1gb"
      + status               = (known after apply)
      + urn                  = (known after apply)
      + vcpus                = (known after apply)
      + volume_ids           = (known after apply)
      + vpc_uuid             = (known after apply)
    }

  # digitalocean_droplet.droplet["web2"] will be created
  + resource "digitalocean_droplet" "droplet" {
      + backups              = false
      + created_at           = (known after apply)
      + disk                 = (known after apply)
      + id                   = (known after apply)
      + image                = "ubuntu-18-04-x64"
      + ipv4_address         = (known after apply)
      + ipv4_address_private = (known after apply)
      + ipv6                 = false
      + ipv6_address         = (known after apply)
      + locked               = (known after apply)
      + memory               = (known after apply)
      + monitoring           = false
      + name                 = "web-2"
      + price_hourly         = (known after apply)
      + price_monthly        = (known after apply)
      + private_networking   = (known after apply)
      + region               = "nyc2"
      + resize_disk          = true
      + size                 = "s-1vcpu-1gb"
      + status               = (known after apply)
      + urn                  = (known after apply)
      + vcpus                = (known after apply)
      + volume_ids           = (known after apply)
      + vpc_uuid             = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

───────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't
guarantee to take exactly these actions if you run "terraform apply" no
```

* Run terraform apply to create your machines
```
terraform apply
```

* Enjoy!