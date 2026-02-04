# 🛡️ Linux-Defender.sh
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![GitHub stars](https://img.shields.io/github/stars/CYBER-4RMY/LINUX-DEFENDER.svg?style=social)
![GitHub forks](https://img.shields.io/github/forks/CYBER-4RMY/LINUX-DEFENDER.svg?style=social)



## 📝 Table of Contents

- [📌 Overview](#-overview)
- [🚀 Features](#-features)
- [🐧 Supported Distros](#-supported-distros)
- [📦 Tools Installed](#-tools-installed)
- [⚙️ Installation](#️-installation)
  - [Building from Source (General)](#building-from-source-general)
  - [📦 Package Installation](#-package-installation)
    - [Debian (.deb) Package](#debian-deb-package)
    - [Arch Linux Package](#arch-linux-package)
- [🧰 Running the Defender](#-running-the-defender)
- [🧾 License](#-license)
- [🙋‍♂️ Author](#‍♂️-author)
- [☕ Support & Contribution](#☕-support--contribution)

---

## 📌 Overview

**Linux Defender** is a robust and easy-to-use Bash script designed to significantly enhance the security posture of your Linux system. Targeting security professionals, enthusiasts, and system administrators, this tool automates the intricate process of installing, configuring, and managing essential security tools across a wide range of popular Linux distributions. With Linux Defender, fortifying your system against threats becomes efficient, practical, and straightforward.

---

## 🚀 Features

- ✅ **Automated Firewall Management**: Effortlessly set up and manage your system's firewall with `ufw` and `iptables` for robust network protection.
- 🦠 **Advanced Malware & Rootkit Detection**: Integrate powerful scanning tools like `chkrootkit`, `rkhunter`, and `clamav` to detect and neutralize malicious software.
- 🔍 **Comprehensive System Auditing**: Utilize `auditd` to meticulously log system activity, providing a detailed trail for security analysis and incident response.
- 🌐 **Enhanced Anonymity & Privacy**: Support for TOR for anonymous browsing and optional integration with `Anonsurf` (for Kali Linux) to route all traffic through the Tor network.
- 🧠 **AI-Powered Assistance**: Leverage `TGPT` for intelligent assistance and query resolution directly within your security workflow.
- ⚙️ **Intelligent Distribution Detection**: Automatically identifies your Linux distribution (Arch, Debian, Kali, Parrot, Ubuntu) to apply tailored security configurations.
- 🛡️ **Robust System Hardening**: Implement critical hardening measures for the kernel, SSH configurations, and control USB device access to minimize attack surfaces.
- 📈 **Proactive Auditing & Monitoring**: Seamlessly integrate `auditd` rules and `logwatch` to gain comprehensive insights into system events and security alerts.
- 📡 **Sophisticated Network Security**: Deploy capabilities to detect port scans, mitigate SYN flood attacks, and configure secure DNS settings for enhanced network resilience.
- 👤 **Secure User & Access Control**: Enforce strong password policies, facilitate the setup of SSH two-factor authentication (2FA), and perform checks for potentially risky user accounts.
- 🗃️ **Filesystem Integrity & Malware Defense**: Protect critical system files by making them immutable, schedule regular malware scans, and manage a secure quarantine for suspicious files.
- 📊 **Intuitive Usability & Reporting**: Benefit from centralized configuration, execute interactive system health checks, and receive automated email notifications for critical security alerts.
- 💣 **Fail-Safe Mechanisms**: Provides clear, manual package installation instructions if automated dependency resolution encounters issues, ensuring smooth setup.

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

Linux Defender offers flexible installation methods to suit your preferences. It is generally recommended to install via your distribution's package manager where possible for system integration and easier updates.

### 🛠️ Manual Installation (from Source)

This method involves cloning the repository and running the `setup.py` script, which automates dependency installation and sets up the `linux-defender` command system-wide.

```bash
git clone https://github.com/CYBER-4RMY/LINUX-DEFENDER.git
cd LINUX-DEFENDER
sudo python3 ./setup.py
```

The `setup.py` script will detect your distribution and install all necessary dependencies, including: `auditd`, `audispd-plugins`, `logwatch`, `libpam-pwquality`, `libpam-google-authenticator`, `postfix`, `mailutils`, `inotify-tools`, `rkhunter`, `clamav`, `ufw`, `inxi`, `xterm`, `curl`, `unzip`, `grep`, and `sort`.

### 📦 Package-Based Installation (Recommended)

For more robust system integration and easier management, package-based installation is recommended.

#### Debian (.deb) Package

To install on Debian-based systems (Debian, Ubuntu, Kali, Parrot), you need to build the `.deb` package first.

1.  **Build the .deb package:**
    Ensure you have `dpkg-dev` and `devscripts` installed:
    `sudo apt update && sudo apt install -y dpkg-dev devscripts`
    Navigate to the project root and build the package:
    `dpkg-buildpackage -us -uc`
    This will generate a `.deb` file (e.g., `linux-defender_1.3-1_all.deb`) in the parent directory.

2.  **Install the package:**
    `sudo dpkg -i ../linux-defender_*.deb`

3.  **Resolve dependencies (if prompted):**
    `sudo apt install -f`

#### Arch Linux Package

To install on Arch Linux, use `makepkg` to build and install the package from the PKGBUILD.

1.  **Ensure `git` and `base-devel` are installed:**
    `sudo pacman -S --needed git base-devel`

2.  **Clone the repository:**
    `git clone https://github.com/CYBER-4RMY/LINUX-DEFENDER.git`
    `cd LINUX-DEFENDER`

3.  **Build and install the package:**
    `makepkg -si`
    This command will handle dependencies, build the package, and install it system-wide.

---

## 🧰 Running the Defender

Once dependencies are installed, execute the script with root privileges:

```bash
sudo linux-defender
```
This command will initiate the Linux Defender interface, providing access to all hardening operations and security features. You can then navigate through commands such as `harden`, `audit`, `network`, `user`, `filesystem`, and `reporting` to manage your system's security.
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