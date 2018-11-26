data "extip" "external_ip" {}

output "external_ip" {
  value = "${data.extip.external_ip.ipaddress}"
}
resource "null_resource" "uname" {
  provisioner "local-exec" {
    command = "uname -a"
  }
}
