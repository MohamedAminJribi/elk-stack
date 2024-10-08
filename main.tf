terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.4.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "myResourceGroup"         # Resource group name of the storage account
    storage_account_name  = "myterraformstate"        # Storage account name for the state file
    container_name        = "tfstate"                 # Container name within the storage account
    key                   = "terraform.tfstate"       # State file name or path within the container
    subscription_id       = "3e46735e-0bec-4d79-b3f7-06e45329de56" # Subscription ID for Azure
  }
}

provider "azurerm" {
  subscription_id = "3e46735e-0bec-4d79-b3f7-06e45329de56"
  features {
    
  }
}


resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "France Central"
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = "example-aks1"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_A4_v2"
  }

  identity {
    type = "SystemAssigned"
  }


 
  tags = {
    Environment = "Production"
  }
}


output "client_certificate" {
  value     = azurerm_kubernetes_cluster.example.kube_config[0].client_certificate
  sensitive = true
}

output "kube_config" {
  value     = azurerm_kubernetes_cluster.example.kube_config_raw
  sensitive = true
} 
