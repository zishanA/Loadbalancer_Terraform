data "azurerm_subnet" "subnet" {
  name                 = "my-subnet1"
  virtual_network_name = "zishan-vnet"
  resource_group_name  = "zishan-resourcegroup"
}