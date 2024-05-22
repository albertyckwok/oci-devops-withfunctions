## Copyright (c) 2021, Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# 

provider "oci" {
            tenancy-ocid = var.tenancy-ocid
            region       = var.region

}

provider "oci" {
            alias        = "home-region"
            tenancy-ocid = var.tenancy-ocid
            region       = lookup(data.oci-identity-regions.home-region.regions[0], "name")


}

provider "oci" {
            alias        = "current-region"
            tenancy-ocid = var.tenancy-ocid
            region       = var.region


}
