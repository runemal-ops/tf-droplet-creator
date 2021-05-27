variable "do_token" {}
variable "droplet" {
    type = map(object({
        image   = string
        name    = string
        region  = string
        size    = string
    }))
}