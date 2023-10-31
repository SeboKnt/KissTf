provider "hcloud" {
  token = "${var.hcloud_token}"
}

resource "hcloud_ssh_key" "default" {
  name       = "ssh-key-fedora"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "hcloud_server" "server" {
    name        = "kiiis"
    image       = "ubuntu-22.04"
    server_type = "cax21"
    location    = "nbg1"
    ssh_keys    = [hcloud_ssh_key.default.id]
    user_data = file("./cloud-init")
}