data "azurerm_subnet" "subnet" {
  name                 = "AzureBastionSubnet"
  virtual_network_name = "zishan-vnet"
  resource_group_name  = "zishan-resourcegroup"
}

data "azurerm_public_ip" "public_ip" {
  name                = "zishanpublicip01"
  resource_group_name = "zishan-resourcegroup"
}