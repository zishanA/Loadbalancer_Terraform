resource "azurerm_mssql_server" "sqlserver" {
  name                         = "zishan-sqlserver"
  resource_group_name          = var.rg_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "sqladminstrator"
  administrator_login_password = "Thisisadog11"
  minimum_tls_version          = "1.2"

}

resource "azurerm_mssql_database" "sqldatabase" {
  name           = "zishan-sqldatabase"
  server_id      = azurerm_mssql_server.sqlserver.id

}
