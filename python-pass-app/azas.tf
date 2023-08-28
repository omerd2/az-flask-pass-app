resource "azurerm_service_plan" "appserviceplan" {
  name                = var.asp_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = var.asp_os_type
  sku_name            = var.asp_sku_name
  per_site_scaling_enabled = true
  worker_count  = 2
}

resource "azurerm_linux_web_app" "webapp" {
  name                  = var.webapp_name
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  service_plan_id       = azurerm_service_plan.appserviceplan.id
  https_only            = var.webaapp_https_only
  zip_deploy_file       = var.app_zip_file_path

  site_config {
    always_on             = true
    ftps_state          = var.webapp_ftps_state

    application_stack {
      python_version      = var.webapp_python_version
    }

    ip_restriction {
      ip_address            = var.webapp_ip_address_allow
      action                = "Allow"
      priority              = 100

      headers {
        x_azure_fdid      = [azurerm_cdn_frontdoor_profile.my_front_door.resource_guid]
        x_fd_health_probe = []
        x_forwarded_for   = []
        x_forwarded_host  = []
      }

      name = "Allow traffic from Front Door"
    }
  }

  app_settings = {
    SCM_DO_BUILD_DURING_DEPLOYMENT = true
  }
}


