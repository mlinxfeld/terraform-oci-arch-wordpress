resource "oci_bastion_bastion" "bastion_service" {
  bastion_type                 = "STANDARD"
  compartment_id               = var.compartment_ocid
  target_subnet_id             = oci_core_subnet.wordpress_subnet.id
  client_cidr_block_allow_list = ["0.0.0.0/0"]
  name                         = "BastionService4WordPress"
  max_session_ttl_in_seconds   = 10800
}

