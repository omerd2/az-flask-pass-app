## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.69.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_cdn_frontdoor_endpoint.my_endpoint](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cdn_frontdoor_endpoint) | resource |
| [azurerm_cdn_frontdoor_origin.my_app_service_origin](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cdn_frontdoor_origin) | resource |
| [azurerm_cdn_frontdoor_origin_group.my_origin_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cdn_frontdoor_origin_group) | resource |
| [azurerm_cdn_frontdoor_profile.my_front_door](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cdn_frontdoor_profile) | resource |
| [azurerm_cdn_frontdoor_route.my_route](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cdn_frontdoor_route) | resource |
| [azurerm_linux_web_app.webapp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_web_app) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_service_plan.appserviceplan](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_adfp_cdn_endpoint_name"></a> [adfp\_cdn\_endpoint\_name](#input\_adfp\_cdn\_endpoint\_name) | The Azure front door CDN endpoint name | `string` | `"fd-cdn-endpoint-pythonapp"` | no |
| <a name="input_adfp_cdn_og_health_check_interval_in_seconds"></a> [adfp\_cdn\_og\_health\_check\_interval\_in\_seconds](#input\_adfp\_cdn\_og\_health\_check\_interval\_in\_seconds) | n/a | `number` | `100` | no |
| <a name="input_adfp_cdn_og_health_check_path"></a> [adfp\_cdn\_og\_health\_check\_path](#input\_adfp\_cdn\_og\_health\_check\_path) | n/a | `string` | `"/"` | no |
| <a name="input_adfp_cdn_og_health_check_protocol"></a> [adfp\_cdn\_og\_health\_check\_protocol](#input\_adfp\_cdn\_og\_health\_check\_protocol) | n/a | `string` | `"Https"` | no |
| <a name="input_adfp_cdn_og_health_check_request_type"></a> [adfp\_cdn\_og\_health\_check\_request\_type](#input\_adfp\_cdn\_og\_health\_check\_request\_type) | n/a | `string` | `"HEAD"` | no |
| <a name="input_adfp_cdn_og_lb_sample_size"></a> [adfp\_cdn\_og\_lb\_sample\_size](#input\_adfp\_cdn\_og\_lb\_sample\_size) | Load balance sample size | `number` | `4` | no |
| <a name="input_adfp_cdn_og_lb_samples_required"></a> [adfp\_cdn\_og\_lb\_samples\_required](#input\_adfp\_cdn\_og\_lb\_samples\_required) | Load balance samples required | `number` | `3` | no |
| <a name="input_adfp_cdn_og_name"></a> [adfp\_cdn\_og\_name](#input\_adfp\_cdn\_og\_name) | The Azure front door CDN origin group name | `string` | `"fd-cdn-pythonapp-origin"` | no |
| <a name="input_adfp_cdn_og_session_affinity"></a> [adfp\_cdn\_og\_session\_affinity](#input\_adfp\_cdn\_og\_session\_affinity) | Enable session affinity ? | `bool` | `true` | no |
| <a name="input_adfp_sku"></a> [adfp\_sku](#input\_adfp\_sku) | The Azure front door tier | `string` | `"Standard_AzureFrontDoor"` | no |
| <a name="input_afd_cdn_origin_crt_name_check_enable"></a> [afd\_cdn\_origin\_crt\_name\_check\_enable](#input\_afd\_cdn\_origin\_crt\_name\_check\_enable) | n/a | `bool` | `false` | no |
| <a name="input_afd_cdn_origin_enable"></a> [afd\_cdn\_origin\_enable](#input\_afd\_cdn\_origin\_enable) | n/a | `bool` | `true` | no |
| <a name="input_afd_cdn_origin_http_port"></a> [afd\_cdn\_origin\_http\_port](#input\_afd\_cdn\_origin\_http\_port) | default http port for service plan origin frontdoor | `number` | `80` | no |
| <a name="input_afd_cdn_origin_https_port"></a> [afd\_cdn\_origin\_https\_port](#input\_afd\_cdn\_origin\_https\_port) | default https port for service plan origin frontdoor | `number` | `443` | no |
| <a name="input_afd_cdn_origin_name"></a> [afd\_cdn\_origin\_name](#input\_afd\_cdn\_origin\_name) | n/a | `string` | `"fd-cdn-origin-pythonapp"` | no |
| <a name="input_afd_cdn_origin_priority"></a> [afd\_cdn\_origin\_priority](#input\_afd\_cdn\_origin\_priority) | n/a | `number` | `1` | no |
| <a name="input_afd_cdn_origin_weight"></a> [afd\_cdn\_origin\_weight](#input\_afd\_cdn\_origin\_weight) | n/a | `number` | `1000` | no |
| <a name="input_afd_cdn_route_name"></a> [afd\_cdn\_route\_name](#input\_afd\_cdn\_route\_name) | n/a | `string` | `"fd-cdn-route-pythonapp"` | no |
| <a name="input_afd_routes_https_redirect_enabled"></a> [afd\_routes\_https\_redirect\_enabled](#input\_afd\_routes\_https\_redirect\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_afd_routes_link_default_domain"></a> [afd\_routes\_link\_default\_domain](#input\_afd\_routes\_link\_default\_domain) | n/a | `bool` | `true` | no |
| <a name="input_afd_routes_patterns"></a> [afd\_routes\_patterns](#input\_afd\_routes\_patterns) | Patterns to match | `set(string)` | <pre>[<br>  "/*"<br>]</pre> | no |
| <a name="input_afd_routes_supported_protocols"></a> [afd\_routes\_supported\_protocols](#input\_afd\_routes\_supported\_protocols) | Supported protocols for front door routing | `set(string)` | <pre>[<br>  "Http",<br>  "Https"<br>]</pre> | no |
| <a name="input_afdp_name"></a> [afdp\_name](#input\_afdp\_name) | n/a | `string` | `"front-door-python-app"` | no |
| <a name="input_app_zip_file_path"></a> [app\_zip\_file\_path](#input\_app\_zip\_file\_path) | The path to the zip file app | `string` | `"./app-main.zip"` | no |
| <a name="input_asp_name"></a> [asp\_name](#input\_asp\_name) | The name of the service plan app | `string` | `"service-plan-python-app"` | no |
| <a name="input_asp_os_type"></a> [asp\_os\_type](#input\_asp\_os\_type) | The OS type (linux,windows) of the service plan | `string` | `"Linux"` | no |
| <a name="input_asp_sku_name"></a> [asp\_sku\_name](#input\_asp\_sku\_name) | The App Service  plan type: https://learn.microsoft.com/en-us/azure/app-service/overview-hosting-plans | `string` | `"P1v3"` | no |
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | The location of the resource group (west-europe, east-europe, etc..) | `string` | `"West Europe"` | no |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | The name of the resoruce group | `string` | `"python-app-group"` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Subscription ID of Azure account | `string` | n/a | yes |
| <a name="input_webaapp_https_only"></a> [webaapp\_https\_only](#input\_webaapp\_https\_only) | Enable https access only to the webapp | `bool` | `true` | no |
| <a name="input_webapp_ftps_state"></a> [webapp\_ftps\_state](#input\_webapp\_ftps\_state) | The ftps state of the webapp | `string` | `"Disabled"` | no |
| <a name="input_webapp_ip_address_allow"></a> [webapp\_ip\_address\_allow](#input\_webapp\_ip\_address\_allow) | The ip address CIDR to allow traffic to the application. | `string` | `"0.0.0.0/0"` | no |
| <a name="input_webapp_name"></a> [webapp\_name](#input\_webapp\_name) | The name of the webapp | `string` | `"webapp-python-app"` | no |
| <a name="input_webapp_python_version"></a> [webapp\_python\_version](#input\_webapp\_python\_version) | The python version of the webapp | `string` | `"3.9"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_frontDoorEndpointHostName"></a> [frontDoorEndpointHostName](#output\_frontDoorEndpointHostName) | n/a |
