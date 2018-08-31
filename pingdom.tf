variable "pingdom_user" {}
variable "pingdom_password" {}
variable "pingdom_api_key" {}

# variable "pingdom_account_email" {} # Optional: only required for multi-user accounts

provider "pingdom" {
  user     = "${var.pingdom_user}"
  password = "${var.pingdom_password}"
  api_key  = "${var.pingdom_api_key}"

  # account_email = "${var.pingdom_account_email}" # Optional: only required for multi-user accounts
}

resource "pingdom_check" "example" {
  type       = "http"
  name       = "my http check 1015"
  host       = "example.com"
  resolution = 5
}

# resource "pingdom_check" "example_with_alert" {
#   type                     = "http"
#   name                     = "my http check"
#   host                     = "example.com"
#   resolution               = 5
#   sendnotificationwhendown = 2


#   integrationids = [
#     12345678,
#     23456789,
#   ]
# }


# * pingdom_check.ping_example: 500 Internal Server Error: Internal Server Error
# resource "pingdom_check" "ping_example" {
#   type       = "ping"
#   name       = "my ping check"
#   host       = "example.com"
#   resolution = 5


#   sendnotificationwhendown = 2
# }

