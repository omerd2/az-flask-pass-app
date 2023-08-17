variable "subscription_id" {
  description = "Subscription ID of Azure account"
  type = string
}

variable "rg_name" {
    description = "The name of the resoruce group"
    default = "python-app-group"
    type = string
  
}

variable "rg_location" {
    description = "The location of the resource group (west-europe, east-europe, etc..)"
    type = string
    default = "West Europe"
  
}



variable "asp_name" {
  description = "The name of the service plan app"
  default = "service-plan-python-app"
  type        = string
}

variable "app_zip_file_path" {
  description = "The path to the zip file app"
  default = "./app-main.zip"
  type        = string
}

variable "asp_os_type" {
  description = "The OS type (linux,windows) of the service plan"
  type        = string
  default     = "Linux"
}

variable "asp_sku_name" {
  description = "The App Service  plan type: https://learn.microsoft.com/en-us/azure/app-service/overview-hosting-plans"
  type        = string
  default     = "P1v3"
}

variable "webapp_name" {
  description = "The name of the webapp"
  default = "webapp-python-app"
  type        = string
}

variable "webaapp_https_only" {
  description = "Enable https access only to the webapp"
  default     = true
}

variable "webapp_ftps_state" {
  description = "The ftps state of the webapp"
  type        = string
  default = "Disabled"
}

variable "webapp_python_version" {
  description = "The python version of the webapp"
  type        = string
  default = "3.9"
}

variable "webapp_ip_address_allow" {
  description = "The ip address CIDR to allow traffic to the application."
  type        = string
  default = "0.0.0.0/0"
}

variable "afdp_name" {
    default = "front-door-python-app"
    type = string
}

variable "adfp_sku" {
    description = "The Azure front door tier"
    type        = string
    default     = "Standard_AzureFrontDoor"
}

variable "adfp_cdn_endpoint_name" {
    description = "The Azure front door CDN endpoint name"
    default = "fd-cdn-endpoint-pythonapp"
    type        = string
}


variable "adfp_cdn_og_name" {
    description = "The Azure front door CDN origin group name"
    default = "fd-cdn-pythonapp-origin"
    type        = string
}

variable "adfp_cdn_og_session_affinity" {
  description = "Enable session affinity ?"
  default     = true
}

variable "adfp_cdn_og_lb_sample_size" {
  description = "Load balance sample size"
  default     = 4
}

variable "adfp_cdn_og_lb_samples_required" {
  description = "Load balance samples required"
  default     = 3
}

variable "adfp_cdn_og_health_check_path" {
  type = string
  default     = "/"
}

variable "adfp_cdn_og_health_check_request_type" {
  type = string
  default     = "HEAD"
}

variable "adfp_cdn_og_health_check_protocol" {
  type = string
  default     = "Https"
}


variable "adfp_cdn_og_health_check_interval_in_seconds" {
  default     = 100
}

variable "afd_cdn_origin_name" {
    type = string
    default = "fd-cdn-origin-pythonapp"
}


variable "afd_cdn_origin_enable" {
    default = true
}

variable "afd_cdn_origin_http_port" {
  description = "default http port for service plan origin frontdoor"
  default     = 80
}

variable "afd_cdn_origin_https_port" {
  description = "default https port for service plan origin frontdoor"
  default     = 443
}

variable "afd_cdn_origin_priority" {
  default     = 1
}

variable "afd_cdn_origin_weight" {
  default     = 1000
}

variable "afd_cdn_origin_crt_name_check_enable" {
  default     = false
}

variable "afd_cdn_route_name" {
  default = "fd-cdn-route-pythonapp"
    type = string
}

variable "afd_routes_supported_protocols" {
  description = "Supported protocols for front door routing"
  type        = set(string)
  default     = ["Http", "Https"]
}


variable "afd_routes_patterns" {
  description = "Patterns to match"
  type        = set(string)
  default     = ["/*"]
}

variable "afd_routes_link_default_domain" {
  default     = true
}

variable "afd_routes_https_redirect_enabled" {
  default     = true
}