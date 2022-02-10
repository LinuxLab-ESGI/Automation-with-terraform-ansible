# Configure the Microsoft Azure Provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}
provider "azurerm" {
  features {}
}

# Create a resource group if it doesn't exist
resource "azurerm_resource_group" "linuxlabgroup" {
  name     = var.ressource_groupe_name
  location = var.location

  tags = {
    environment = "Terraform Demo"
  }
}

### Network configuration

# Create virtual network
resource "azurerm_virtual_network" "linuxlabnetwork" {
  name                = "linuxLabNetwork"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.linuxlabgroup.name

  tags = {
    environment = "Terraform Demo"
  }
}

# Create subnet
resource "azurerm_subnet" "linuxlabsubnet" {
  name                 = "linuxlabsubnet"
  resource_group_name  = azurerm_resource_group.linuxlabgroup.name
  virtual_network_name = azurerm_virtual_network.linuxlabnetwork.name
  address_prefixes     = ["10.0.1.0/24"]
}

# Create Network Security Group and rule
resource "azurerm_network_security_group" "linuxlabsg" {
  name                = "LinuxLabSecurityGroup"
  location            = var.location
  resource_group_name = azurerm_resource_group.linuxlabgroup.name

  security_rule {
    name                       = "SSH"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "Minecraft"
    priority                   = 1002
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "25565"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }



  tags = {
    environment = "Terraform Demo"
  }
}

###

# Create public IPs
resource "azurerm_public_ip" "linuxlabEIP-minecraft" {
  name                = "linuxLabEIP-minecraft"
  location            = var.location
  resource_group_name = azurerm_resource_group.linuxlabgroup.name
  allocation_method   = "Dynamic"

  tags = {
    environment = "Terraform Demo"
  }

}

resource "azurerm_network_interface" "linuxlabNIC-minecraft" {
  name                = "linuxlabNIC-minecraft"
  location            = var.location
  resource_group_name = azurerm_resource_group.linuxlabgroup.name

  ip_configuration {
    name                          = "myNicConfiguration"
    subnet_id                     = azurerm_subnet.linuxlabsubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.linuxlabEIP-minecraft.id
  }

  tags = {
    environment = "Terraform Demo"
  }
}


# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "example" {
  network_interface_id      = azurerm_network_interface.linuxlabNIC-minecraft.id
  network_security_group_id = azurerm_network_security_group.linuxlabsg.id
}

# Create virtual machine
resource "azurerm_linux_virtual_machine" "VM_minecraft" {
  name                  = "VM_minecraft"
  location              = var.location
  resource_group_name   = azurerm_resource_group.linuxlabgroup.name
  network_interface_ids = [azurerm_network_interface.linuxlabNIC-minecraft.id]
  size                  = "Standard_DS1_v2"

  os_disk {
    name                 = "OsDisk_minecraft"
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  computer_name                   = "minecraft"
  admin_username                  = var.username
  disable_password_authentication = true

  admin_ssh_key {
    username   = var.username
    public_key = file("./testKey.pub")
  }

  tags = {
    environment = "Terraform Demo"
  }
}

###

# Create public IPs
resource "azurerm_public_ip" "linuxlabEIP-minecraft2" {
  name                = "linuxLabEIP-minecraft2"
  location            = var.location
  resource_group_name = azurerm_resource_group.linuxlabgroup.name
  allocation_method   = "Dynamic"

  tags = {
    environment = "Terraform Demo"
  }
}

resource "azurerm_network_interface" "linuxlabNIC-minecraft2" {
  name                = "linuxlabNIC-minecraft2"
  location            = var.location
  resource_group_name = azurerm_resource_group.linuxlabgroup.name

  ip_configuration {
    name                          = "myNicConfiguration"
    subnet_id                     = azurerm_subnet.linuxlabsubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.linuxlabEIP-minecraft2.id
  }

  tags = {
    environment = "Terraform Demo"
  }
}


# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "example2" {
  network_interface_id      = azurerm_network_interface.linuxlabNIC-minecraft2.id
  network_security_group_id = azurerm_network_security_group.linuxlabsg.id
}

# Create virtual machine
resource "azurerm_linux_virtual_machine" "VM_minecraft2" {
  name                  = "VM_minecraft2"
  location              = var.location
  resource_group_name   = azurerm_resource_group.linuxlabgroup.name
  network_interface_ids = [azurerm_network_interface.linuxlabNIC-minecraft2.id]
  size                  = "Standard_DS1_v2"

  os_disk {
    name                 = "OsDisk_minecraft2"
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  computer_name                   = "minecraft2"
  admin_username                  = var.username
  disable_password_authentication = true

  admin_ssh_key {
    username   = var.username
    public_key = file("./testKey.pub")
  }

  tags = {
    environment = "Terraform Demo"
  }
}

###

# Create public IPs
resource "azurerm_public_ip" "linuxlabEIP-minecraft3" {
  name                = "linuxLabEIP-minecraft3"
  location            = var.location
  resource_group_name = azurerm_resource_group.linuxlabgroup.name
  allocation_method   = "Dynamic"

  tags = {
    environment = "Terraform Demo"
  }
}

resource "azurerm_network_interface" "linuxlabNIC-minecraft3" {
  name                = "linuxlabNIC-minecraft3"
  location            = var.location
  resource_group_name = azurerm_resource_group.linuxlabgroup.name

  ip_configuration {
    name                          = "myNicConfiguration"
    subnet_id                     = azurerm_subnet.linuxlabsubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.linuxlabEIP-minecraft3.id
  }

  tags = {
    environment = "Terraform Demo"
  }
}


# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "example3" {
  network_interface_id      = azurerm_network_interface.linuxlabNIC-minecraft3.id
  network_security_group_id = azurerm_network_security_group.linuxlabsg.id
}

# Create virtual machine
resource "azurerm_linux_virtual_machine" "VM_minecraft3" {
  name                  = "VM_minecraft3"
  location              = var.location
  resource_group_name   = azurerm_resource_group.linuxlabgroup.name
  network_interface_ids = [azurerm_network_interface.linuxlabNIC-minecraft3.id]
  size                  = "Standard_DS1_v2"

  os_disk {
    name                 = "OsDisk_minecraft3"
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  computer_name                   = "minecraft3"
  admin_username                  = var.username
  disable_password_authentication = true

  admin_ssh_key {
    username   = var.username
    public_key = file("./testKey.pub")
  }

  tags = {
    environment = "Terraform Demo"
  }
}