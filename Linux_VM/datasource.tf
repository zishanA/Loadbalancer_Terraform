data "azurerm_subnet" "subnet" {
  name                 = "my-subnet1"
  virtual_network_name = "zishan-vnet"
  resource_group_name  = "zishan-Resourcegroup"
}

data "azurerm_key_vault" "keyvault" {
  name                = "Vmuserlogin-zishan"
  resource_group_name = "zishan-Resourcegroup"
}

data "azurerm_key_vault_secret" "keyvaultsecret1" {
  name         = "vm-username"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}
data "azurerm_key_vault_secret" "keyvaultsecret2" {
  name         = "vm-password"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}