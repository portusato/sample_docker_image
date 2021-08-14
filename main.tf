# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.68.0"
    }
  }
}

data "azurerm_shared_image_version" "image_info" {
  name                = var.source_image.name
  image_name          = var.source_image.image_name
  gallery_name        = var.source_image.gallery_name
  resource_group_name = var.source_image.resource_group_name
}
data "azurerm_subnet" "default" {
  name                 = var.subnet.name
  virtual_network_name = var.subnet.virtual_network_name
  resource_group_name  = var.subnet.resource_group_name
}
