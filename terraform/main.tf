resource "proxmox_virtual_environment_vm" "k3s_server" {
  name       = "k3s-server"
  node_name  = "pve-01"
  vm_id      = 101

  clone {
    vm_id = 9000
    full  = true
  }

  cpu {
    cores = 4
    type = "x86-64-v2-AES"
  }

  memory {
    dedicated = 4096
  }

  disk {
    datastore_id = "local-lvm"
    interface    = "scsi0"
    size         = 50
  }

  network_device {
    bridge = "vmbr0"
  }

  initialization {
    ip_config {
      ipv4 {
        address = "192.168.30.111/24"
        gateway = "192.168.30.1"
      }
    }

    dns {
      servers = ["192.168.30.191"]
    }

    user_account {
      username = "ubuntu"
      keys     = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGuv5lDM46bh8xFCyYmSW4+eXhx183d4DAt8nTWk7j/P terraform@ai-platform-lab"]
    }
  }
}

resource "proxmox_virtual_environment_vm" "k3s_agent_1" {
  name      = "k3s-agent-1"
  node_name = "pve-02"
  vm_id     = 102

  clone {
    vm_id  = 9000
    full   = true
  }

  cpu {
    cores = 4
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 4096
  }

  disk {
    datastore_id = "local-lvm"
    interface    = "scsi0"
    size         = 50
  }

  network_device {
    bridge = "vmbr0"
  }

  initialization {
    ip_config {
      ipv4 {
        address = "192.168.30.112/24"
        gateway = "192.168.30.1"
      }
    }

    dns {
      servers = ["192.168.30.191"]
    }

    user_account {
      username = "ubuntu"
      keys     = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGuv5lDM46bh8xFCyYmSW4+eXhx183d4DAt8nTWk7j/P terraform@ai-platform-lab"]
    }
  }
}

resource "proxmox_virtual_environment_vm" "k3s_agent_2" {
  name       = "k3s-agent-2"
  node_name  = "pve-03"
  vm_id      = 103

  clone {
    vm_id = 9000
    full  = true
  }

  cpu {
    cores = 4
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 4096
  }

  disk {
    datastore_id = "local-lvm"
    interface    = "scsi0"
    size         = 50
  }

  network_device {
    bridge = "vmbr0"
  }

  initialization {
    ip_config {
      ipv4 {
        address = "192.168.30.113/24"
        gateway = "192.168.30.1"
      }
    }

    dns {
      servers = ["192.168.30.191"]
    }

    user_account {
      username = "ubuntu"
      keys     = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGuv5lDM46bh8xFCyYmSW4+eXhx183d4DAt8nTWk7j/P terraform@ai-platform-lab"]
    }
  }
}
