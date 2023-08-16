resource "azurerm_cdn_frontdoor_profile" "my_front_door" {
  name                = var.afdp_name
  resource_group_name = azurerm_resource_group.rg.name
  sku_name            = var.adfp_sku
}

resource "azurerm_cdn_frontdoor_endpoint" "my_endpoint" {
  name                     = var.adfp_cdn_endpoint_name
  cdn_frontdoor_profile_id = azurerm_cdn_frontdoor_profile.my_front_door.id
}

resource "azurerm_cdn_frontdoor_origin_group" "my_origin_group" {
  name                     = var.adfp_cdn_og_name
  cdn_frontdoor_profile_id = azurerm_cdn_frontdoor_profile.my_front_door.id
  session_affinity_enabled = var.adfp_cdn_og_session_affinity

  load_balancing {
    sample_size                 = var.adfp_cdn_og_lb_sample_size
    successful_samples_required = var.adfp_cdn_og_lb_samples_required
  }

  health_probe {
    path                = var.adfp_cdn_og_health_check_path
    request_type        = var.adfp_cdn_og_health_check_request_type
    protocol            = var.adfp_cdn_og_health_check_protocol
    interval_in_seconds = var.adfp_cdn_og_health_check_interval_in_seconds
  }
}

resource "azurerm_cdn_frontdoor_origin" "my_app_service_origin" {
  name                          = var.afd_cdn_origin_name
  cdn_frontdoor_origin_group_id = azurerm_cdn_frontdoor_origin_group.my_origin_group.id

  enabled                        = var.afd_cdn_origin_enable
  host_name                      = azurerm_linux_web_app.webapp.default_hostname
  http_port                      = var.afd_cdn_origin_http_port
  https_port                     = var.afd_cdn_origin_https_port
  origin_host_header             = azurerm_linux_web_app.webapp.default_hostname
  priority                       = var.afd_cdn_origin_priority
  weight                         = var.afd_cdn_origin_weight
  certificate_name_check_enabled = var.afd_cdn_origin_crt_name_check_enable
}

resource "azurerm_cdn_frontdoor_route" "my_route" {
  name                          = var.afd_cdn_route_name
  cdn_frontdoor_endpoint_id     = azurerm_cdn_frontdoor_endpoint.my_endpoint.id
  cdn_frontdoor_origin_group_id = azurerm_cdn_frontdoor_origin_group.my_origin_group.id
  cdn_frontdoor_origin_ids      = [azurerm_cdn_frontdoor_origin.my_app_service_origin.id]

  supported_protocols    = var.afd_routes_supported_protocols
  patterns_to_match      = var.afd_routes_patterns
  forwarding_protocol    = "HttpsOnly"
  link_to_default_domain = var.afd_routes_link_default_domain
  https_redirect_enabled = var.afd_routes_https_redirect_enabled
}