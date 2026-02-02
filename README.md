# 🛡️ Linux-Defender.sh

**Author:** [CYBER-4RMY](https://github.com/CYBER-4RMY)  
**Purpose:** Harden your Linux system with one script — efficient, practical, and secure.  

---

## 📌 Overview

`Linux-Defender.sh` is a comprehensive Linux system hardening script built for security professionals, enthusiasts, and system admins.  
It automates the installation and configuration of key security tools across popular Linux distributions.

---

## 🚀 Features

- ✅ **Firewall setup** using `ufw`
- 🦠 **Malware & rootkit scanners**: `chkrootkit`, `rkhunter`, `clamav`
- 🔍 **Audit daemon** for system activity: `audit` / `auditd`
- 🌐 **TOR support** and optional **Anonsurf** for Kali
- **AI Implemented** now i added tgpt for ai support and your query solution
- ⚙️ Auto-detection of distro: Arch, Debian, Kali, Parrot
- 💣 Fail-safe: gives manual package install instructions on failure
- 🛡️ **System Hardening**: Kernel, SSH, and USB hardening options.
- 📈 **Enhanced Auditing & Monitoring**: Integrate `auditd` rules and `logwatch` for comprehensive system surveillance.
- 📡 **Advanced Network Security**: Detect port scans, mitigate SYN floods, and configure secure DNS.
- 👤 **User & Access Control**: Enforce strong password policies, set up SSH 2FA, and check for risky user accounts.
- 🗃️ **Filesystem & Malware Enhancements**: Make critical files immutable, schedule regular malware scans, and enable malware quarantine.
- 📊 **Usability & Reporting**: Centralized configuration, interactive system check-ups, and email notifications.

---

## 🐧 Supported Distros

- Arch Linux
- Kali Linux
- Parrot OS
- Debian
- Ubuntu

---

## 📦 Tools Installed

| Category           | Tool(s)                                         |
|--------------------|--------------------------------------------------|
| Firewall           | `ufw`, `iptables`                                |
| Malware Protection | `chkrootkit`, `rkhunter`, `clamav`               |
| Monitoring         | `audit` / `auditd`, `inotify-tools`, `inxi`, `logwatch` |
| Anonymity (Kali)   | `tor`, [`kali-anonsurf`](https://github.com/Und3rf10w/kali-anonsurf) |
| Arch-only Tool     | `torctl`                                         |
| AI                 | `TGPT`                                           |
| Hardening          | `sysctl`, `modprobe`                             |
| Network Security   | `iptables`, `sysctl`, `resolvconf`               |
| User Management    | `pam`, `libpam-pwquality`, `libpam-google-authenticator` |
| Filesystem         | `chattr`                                         |
| Reporting          | `postfix`, `mailutils`                           |
| Core Dependencies  | `curl`, `unzip`, `grep`, `sort`                  |

---

## ⚙️ Installation

```bash
git clone https://github.com/CYBER-4RMY/LINUX-DEFENDER.git
cd LINUX-DEFENDER
chmod +x setup.py
sudo ./setup.py
````

If setup fails, the script will suggest exact commands for manual installation based on your OS. The `setup.py` script will install all necessary dependencies including: `auditd`, `audispd-plugins`, `logwatch`, `libpam-pwquality`, `libpam-google-authenticator`, `postfix`, `mailutils`, `curl`, `unzip`, `grep`, and `sort`.

---

## 🧰 Running the Defender

Once dependencies are installed:

(RUN THIS SCRIPT IN ROOT USER)
```bash
chmod +x defender.sh
sudo ./defender.sh
```

This will initiate all hardening operations tailored for your Linux system. You can now use the `harden`, `audit`, `network`, `user`, `filesystem`, and `reporting` commands to access the new features.
--- 

## 🧾 License

This project is licensed under the [MIT License](LICENSE).

---

## 🙋‍♂️ Author

Built with care and cybersecurity principles by [CYBER-4RMY](https://github.com/CYBER-4RMY)
*“Secure it before someone else exploits it.”*

---

## ☕ Support & Contribution

For major changes, open an issue first to discuss what you would like to change.
If this project helps secure your systems, consider giving it a ⭐ on GitHub.
