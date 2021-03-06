##############################################################################
# This file creates various network resources for the solution.
#  - VPC in user specified region and resource_group
#  - Address_Prefix in user specified region, zone and resource_group (for poc is using default)
#  - Public_Gateway in user specified region, zone and resource_group
#  - Subnet in user specified region, zone and resource_group
#  - Floating_IP attached to virtual server's primary network interface
##############################################################################


##############################################################################
# Read/validate VPC
##############################################################################
data "ibm_is_vpc" "vnf_vpc" {
  name = "${var.vpc_name}"
}

data "ibm_is_subnet" "vnf_subnet"{
   identifier = "${var.subnet_id}"
}
