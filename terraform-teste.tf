# Configure the OpenStack Provider
provider "openstack" {
  user_name   = "user@login.com"
  tenant_name = "**"
  auth_url    = "https://keystone.br-sp1.openstack.uolcloud.com.br:5000/v2.0"
  region      = "br-sp1"
}

# Create a web server
resource "openstack_compute_instance_v2" "terraform-alvaro" {
  name = "terraform-alvaro"
  image_id = "f54753a8-d6d6-49b7-92d6-0eba848418d6"
  flavor_id = "110d0823-3433-4332-b139-6aebd04dfed3"
  security_groups = ["default","GustavoKUB"]

	network = {
		name = "Biloludo"
	}
}
