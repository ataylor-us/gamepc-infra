# gamepc playbook

This automates some of the setup for my living room gaming PC.

Much of this is bent around the state packages  were during initial installation.  For example, the `ea-app` application failed the checksum check, so there's a way to ignore that. The Playnite package returned an error despite installing fine -- so there's also a way to ignore that.

There's still manual steps involved, but the goal of this is to document and automate as much as I could, and to practice Windows automation.


```bash
# This should be loaded by direnv, if not:
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
ansible-playbook master.yml
```

## Manual Install Steps

1. Flash a USB drive **from a Windows machine** using the official [Media Creation Tool](https://www.microsoft.com/en-us/software-download/windows11).
2. Boot from USB.
3. Enter the product key manually.
4. Pick the target disk — delete every partition on it until the whole disk is **Unallocated Space**.
5. Let Windows install and reboot.
6. Region: **United States**.
7. Keyboard layout: **US**.
8. Skip the second keyboard layout.
9. On the networking prompt, choose **"I don't have internet"**.
    - If doing a reset and that option is missing, hit `Shift+F10` and run `start ms-cxh:localonly`.
10. Enter your name (Alex).
11. Skip the password.
12. Decline all privacy settings (if asked).
13. Boot into Windows.
14. ~~Get wireless drivers [from the motherboard website](https://www.msi.com/Motherboard/MAG-Z690-TOMAHAWK-WIFI-DDR4/support#driver) onto the PC.~~
15. ~~Connect to the IoT network.~~
16. Allow Windows Update to run; reboot when asked.
17. When the MSI Recommended Installer appears, deselect the unnecessary entries. I selected:
    - Intel Chipset Drivers
    - Intel SVGA Drivers
    - Intel Network Drivers
    - Intel Bluetooth Drivers
    - Intel WiFi Drivers (reselect)
    - Realtek HD Universal Drivers
    - Intel Serial IO Drivers
18. Set a password via Settings.
19. After updating, follow steps 1–5 of [faezehghiasi/ansible-windows-playbooks](https://github.com/faezehghiasi/ansible-windows-playbooks) to prepare the host for Ansible.
20. Turn on **Maximum Power** for the Nvidia card.
21. Install [AntiMicroX](https://github.com/antimicroX/antimicroX) manually
22. Install [libCEC](https://support.pulse-eight.com/support/solutions/articles/30000027406-how-to-install-libcec-windows-) manually

## Things not covered:
+ Kodi settings
+ Playnite settings
+ Ludusavi save mapping
+ AntiMicroX keymaps
