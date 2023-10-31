provider "hcloud" {
  token = "${var.hcloud_token}"
}

resource "hcloud_server" "server" {
    name        = "kiiis"
    image       = "ubuntu-22.04"
    server_type = "cax21"
    location    = "nbg1"
    user_data = file("./cloud-init")
}