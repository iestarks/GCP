# azure-terraform

name - (Required) Specifies the name of the Virtual Machine. Changing this forces a new resource to be created.
--

resource_group_name - (Required) Specifies the name of the Resource Group in which the Virtual Machine should exist. Changing this forces a new resource to be created.
---

location - (Required) Specifies the Azure Region where the Virtual Machine exists. Changing this forces a new resource to be created.
---

network_interface_ids - (Required) A list of Network Interface ID's which should be associated with the Virtual Machine.
---

os_profile_linux_config - (Required, when a Linux machine) A os_profile_linux_config block.
--

os_profile_windows_config - (Required, when a Windows machine) A os_profile_windows_config block.
--

vm_size - (Required) Specifies the size of the Virtual Machine.
--

A boot_diagnostics block supports the following:

enabled - (Required) Should Boot Diagnostics be enabled for this Virtual Machine?
---

storage_uri - (Required) The Storage Account's Blob Endpoint which should hold the virtual machine's diagnostic files.
---

A additional_capabilities block supports the following:

ultra_ssd_enabled - (Required) Should Ultra SSD disk be enabled for this Virtual Machine?

A os_profile block supports the following:

computer_name - (Required) Specifies the name of the Virtual Machine.

admin_username - (Required) Specifies the name of the local administrator account.

admin_password - (Required for Windows, Optional for Linux) The password associated with the local administrator account.
