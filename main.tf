terraform {
    required_providers {
        digitalocean = {
            source = "digitalocean/digitalocean"
        }
    }
}

provider "digitalocean" {
    token = var.do_token
}

resource "digitalocean_droplet" "droplet" {
    # one droplet for each element of var.droplet
    for_each = var.droplet
    
    image   = each.value.image
    name    = each.value.name
    region  = each.value.region
    size    = each.value.size
}