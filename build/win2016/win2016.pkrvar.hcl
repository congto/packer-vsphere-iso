# vCenter credentials
# Use environment variables or pass with build command
# vcenter_username = ""
# vcenter_password = ""

# vCenter details
vcenter_server = "vc.hcdlab.local"
vcenter_sslconnection = true
vcenter_datacenter = "HCD-DC01"
vcenter_cluster = "HCD-Cluster02"
vcenter_datastore = "datastore4-r620"
vcenter_folder = "Templates"

# VM Hardware Configuration
vm_os_type = "windows9Server64Guest"
vm_firmware = "efi"
vm_hardware_version = 17
vm_cpu_sockets = 2
vm_cpu_cores = 1
vm_ram = 4096
vm_nic_type = "vmxnet3"
vm_network = ""
vm_disk_controller = ["pvscsi"]
vm_disk_size = 20480
vm_disk_thin = true
config_parameters = {
        "devices.hotplug" = "FALSE",
        "guestInfo.svga.wddm.modeset" = "FALSE",
        "guestInfo.svga.wddm.modesetCCD" = "FALSE",
        "guestInfo.svga.wddm.modesetLegacySingle" = "FALSE",
        "guestInfo.svga.wddm.modesetLegacyMulti" = "FALSE"
}

# Removable Media Configuration
vcenter_iso_datastore = "datastore4-r620"
os_iso_path = "ISO"
os_iso_file = "win2016.iso"
vmtools_iso_path = "ISO"
vmtools_iso_file = "VMware-tools-windows-12.0.0-19345655.iso"
vm_cdrom_remove = true

# Build Settings
build_repo = "https://github.com/cwestwater/packer-vsphere-iso"
vm_convert_template = false
winrm_username = "Administrator"
winrm_password = "VMware1!"

# Provisioner Settings
powershell_scripts = [
    "../../scripts/win2016/disable-tls.ps1",
    "../../scripts/win2016/disable-services.ps1",
    "../../scripts/win2016/remove-features.ps1",
    "../../scripts/win2016/config-os.ps1",
]
