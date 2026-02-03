#!/bin/bash

#GITHUB => 'https://github.com/CYBER-4RMY'
#FOR any type of issue or any new suggestion give me a dm on TELEGRAM or INSTAGRAM
#also YOU can use GITHUB
#Feel free to send new suggetion and security tools to include in this script
#All time i am trying new tools for include in it and create linux more secure and easy
#to use. So feel free to send me.

# --- CONFIGURATION ---
CONFIG_FILE="/etc/linux-defender/defender.conf"

# Default values
LOGFILE="/var/log/linux_defender.log"
SCAN_DIRS=("/home" "/etc" "/usr/bin" "/usr/sbin")
BACKUP_DIR="/var/backups/linux_defender"
QUARANTINE_DIR="/var/quarantine"
EMAIL_ADDRESS="root@localhost"

# --- FUNCTIONS ---

load_config() {
    if [ -f "$CONFIG_FILE" ]; then
        source "$CONFIG_FILE"
    else
        echo "Configuration file not found. Using default values."
    fi
}

# ... (rest of the script)
# Main function
main() {
    load_config
    check_root
    display_banner1
    run_user_commands
}

# Run the main function
main "$@"

# Load history from file if it exists
if [[ -f "$HISTORY_FILE" ]]; then
    history -r "$HISTORY_FILE"
fi

# Function to check if the script is run as root
check_root() {
    if [ "$EUID" -ne 0 ]; then
        echo -e "\033[1;31m"  # Red color
        echo "   <)}==={RUN-THIS-SCRIPT-WITH-SUDO-OR-IN-ROOT-USER}==={(>"
        echo -e "\033[0m"  # Reset color
        exit 1
    fi
}

# Function to save history to file
save_history() {
    history -a "$HISTORY_FILE"
}

# Function to log messages
log_message() {
    local level="$1"
    local message="$2"
    echo "$(date '+%Y-%m-%d %H:%M:%S') [$level] $message" >> $LOGFILE
}

# Function to send alerts
send_alert() {
    local message="$1"
    echo "Sending alert: $message"  # Debugging line
}

# Function to display colorful welcome message
display_welcome() {
    echo -e "\033[1;32m"  # Green color
    echo "                       <<===============================>>"
    echo "                         <<-WELCOME-TO-LINUX-DEFENDER->>"
    echo "                       <<===============================>>"
    echo "                             <<-=-CYBER-4RMY-=->>       "
    echo -e "\033[0m"  # Reset color
}

# Function to display colorful welcome message for ufw
display_ufw_welcome() {
    echo -e "\033[1;32m"  # Green color
    echo "                       <<============================>>"
    echo "                         <<-WELCOME-TO-UFW-MANAGER->>"
    echo "                       <<============================>>"
    echo "                            <<-=-CYBER-4RMY-=->>       "
    echo -e "\033[0m"  # Reset color
}

# Function to display colorful welcome message for supdate
display_supdate_welcome() {
    echo -e "\033[1;32m"  # Green color
    echo "                       <<============================>>"
    echo "                         <<-WELCOME-TO-SYS-UPDATER->>"
    echo "                       <<============================>>"
    echo "                            <<-=-CYBER-4RMY-=->>       "
    echo -e "\033[0m"  # Reset color
}

# Function to display colorful welcome message for scan
display_scan_welcome() {
    echo -e "\033[1;32m"  # Green color
    echo "                       <<=============================>>"
    echo "                         <<-WELCOME-TO-SCAN-MANAGER->>"
    echo "                       <<=============================>>"
    echo "                            <<-=-CYBER-4RMY-=->>       "
    echo -e "\033[0m"  # Reset color
}

# Function to display colorful welcome message for ai
display_ai_welcome() {
    echo -e "\033[1;32m"  # Green color
    echo "                       <<========================================>>"
    echo "                         <<-WELCOME-TO-ARTIFICIAL-INTELLIGENCE->>"
    echo "                       <<========================================>>"
    echo "                                   <<-=-CYBER-4RMY-=->>       "
    echo -e "\033[0m"  # Reset color
}

# Function to display colorful welcome message for traffic
display_traffic_welcome() {
    echo -e "\033[1;32m"  # Green color
    echo "                       <<========================================>>"
    echo "                         <<-WELCOME-TO-NETWORK-PIRVACY-MANAGER->>"
    echo "                       <<========================================>>"
    echo "                                   <<-=-CYBER-4RMY-=->>       "
    echo -e "\033[0m"  # Reset color
}

# Function to display colorful welcome message for backup
display_backup_welcome() {
    echo -e "\033[1;32m"  # Green color
    echo "                       <<===============================>>"
    echo "                         <<-WELCOME-TO-BACKUP-MANAGER->>"
    echo "                       <<===============================>>"
    echo "                             <<-=-CYBER-4RMY-=->>       "
    echo -e "\033[0m"  # Reset color
}

# Function to display colorful welcome message for css
display_css_welcome() {
    echo -e "\033[1;32m"  # Green color
    echo "                       <<===================================>>"
    echo "                         <<-WELCOME-TO-SYS-STATUS-MANAGER->>"
    echo "                       <<===================================>>"
    echo "                                <<-=-CYBER-4RMY-=->>       "
    echo -e "\033[0m"  # Reset color
}

# Function to display colorful welcome message for css
display_cfi_welcome() {
    echo -e "\033[1;32m"  # Green color
    echo "                       <<=============================================>>"
    echo "                         <<-WELCOME-TO-CHECK-FILE-INTEGRITY-MANAGER->>"
    echo "                       <<=============================================>>"
    echo "                                     <<-=-CYBER-4RMY-=->>       "
    echo -e "\033[0m"  # Reset color
}

# Function to display colorful welcome message for css
display_report_welcome() {
    echo -e "\033[1;32m"  # Green color
    echo "                   <<==================>>---=====---<<=================>>"
    echo "                     <<-WELCOME-TO-LINUX-DEFENDER-REOPORT-GENERATOR->>"
    echo "                   <<==================>>---=====---<<=================>>"
    echo "                                    <<-=-CYBER-4RMY-=->>       "
    echo -e "\033[0m"  # Reset color
}

# Function to display colorful welcome message for system monitor
display_monitor_welcome() {
    echo -e "\033[1;32m"  # Green color
    echo "                       <<====================================>>"
    echo "                         <<-WELCOME-TO-SYS-MONITOR-SECTION->>"
    echo "                       <<====================================>>"
    echo "                               <<-=-CYBER-4RMY-=->>       "
    echo -e "\033[0m"  # Reset color
}

# Function to display a futuristic banner
display_banner1() {
    echo -e "\033[1;36m"  # Cyan color
    echo "                                             ███████╗███████╗ ██████╗██╗   ██╗██████╗ ███████╗    ███████╗██╗   ██╗███████╗"
    echo "                                             ██╔════╝██╔════╝██╔════╝██║   ██║██╔══██╗██╔════╝    ██╔════╝╚██╗ ██╔╝██╔════╝"
    echo "                                             ███████╗█████╗  ██║     ██║   ██║██████╔╝█████╗█████╗███████╗ ╚████╔╝ ███████╗"
    echo "                                             ╚════██║██╔══╝  ██║     ██║   ██║██╔══██╗██╔══╝╚════╝╚════██║  ╚██╔╝  ╚════██║"
    echo "                                             ███████║███████╗╚██████╗╚██████╔╝██║  ██║███████╗    ███████║   ██║   ███████║"
    echo "                                             ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝    ╚══════╝   ╚═╝   ╚══════╝"
    echo "                                             <<==========================>>{CYBER-4RMY}<<==============================>>"
    echo "                                                     <<==========={https://github.com/CYBER-4RMY}===========>>"
    echo "                                                             <<=======================================>> "
    echo -e "\033[0m"  # Reset color
}

#for banner command banner 
display_banner(){
    echo -e "\033[1;36m"
    echo "                         <<))===================================================================================================================((>>"
    echo "                                ██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗     ██████╗ ███████╗███████╗███████╗███╗   ██╗██████╗ ███████╗██████╗ "
    echo "                                ██║     ██║████╗  ██║██║   ██║╚██╗██╔╝     ██╔══██╗██╔════╝██╔════╝██╔════╝████╗  ██║██╔══██╗██╔════╝██╔══██╗"
    echo "                                ██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝█████╗██║  ██║█████╗  █████╗  █████╗  ██╔██╗ ██║██║  ██║█████╗  ██████╔╝"
    echo "                                ██║     ██║██║╚██╗██║██║   ██║ ██╔██╗╚════╝██║  ██║██╔══╝  ██╔══╝  ██╔══╝  ██║╚██╗██║██║  ██║██╔══╝  ██╔══██╗"
    echo "                                ███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗     ██████╔╝███████╗██║     ███████╗██║ ╚████║██████╔╝███████╗██║  ██║"
    echo "                                ╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝     ╚═════╝ ╚══════╝╚═╝     ╚══════╝╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝  ╚═╝"
    echo "                         <<))================================================={CYBER-4RMY}====================================================((>>"
    echo -e "\033[0m"
}

# Main function to run user commands
run_user_commands() {
    local current_section="HOME"

    while true; do
        # Read input with readline support
        read -e -p " {LINUX-DEFENDER}-{${current_section}}-->> " user_command

        # Exit the loop if the user types 'exit'
        if [[ "$user_command" == "exit" ]]; then
            break
        fi

        # If the input is empty, continue to the next iteration
        if [[ -z "$user_command" ]]; then
            continue
        fi

        # Add the command to history
        history -s "$user_command"

        # Execute the command if it's valid
        case "$user_command" in
            "exit")
                break
                ;;
            "help")
                echo -e "\033[1;32m" "\nAVALIABLE COMMANDS (AC):"
                echo " 1. ls        - List avaliable security tools in this framework"
                echo " 2. cd        - To enter New Choosen Section (cd ufw)"
                echo " 3. cd ..     - To get back from one section to HOME menu"
                echo " 4. clear     - Clear the terminal"
                echo " 5. exit      - Exit the command interface"
                echo " 6. banner    - To show the banner"
                echo " 7. welcome   - To show the welcome banner"
                echo ""
                echo -e "\033[1;31m"  # Red color
                echo ">> By pressing CTRL+C the whole script stops (BE CAREFULL)"
                echo -e "\033[0m"  # Reset color
                ;;
            "cd ufw")
                current_section="UFW"
                manage_firewall
                current_section="HOME"
                ;;
            "cd ai")
                current_section="AI"
                chat_ai
                current_section="HOME"
                ;;
            "cd supdate")
                current_section="SUPDATE"
                update_system
                current_section="HOME"
                ;;
            "cd scan")
                current_section="SCAN"
                scan_for_danger
                current_section="HOME"
                ;;
            "cd backup")
                current_section="BACKUP"
                backup_files
                current_section="HOME"
                ;;
            "cd cfi")
                current_section="CFI"
                check_integrity
                current_section="HOME"
                ;;
            "cd report")
                current_section="REPORT"
                generate_report
                current_section="HOME"
                ;;
            "cd css")
                current_section="SYS-STATUS"
                check_sys_status
                current_section="HOME"
                ;;
            "cd tupdate")
                current_section="TUPDATE"
                update_from_github
                current_section="HOME"
                ;;
            "cd anon")
                current_section="ANON"
                traffic_anony
                current_section="HOME"
                ;;
            "cd monitor")
                current_section="MONITOR"
                monitor_files
                current_section="HOME"
                ;;
            "cd harden")
                current_section="HARDEN"
                harden_system
                current_section="HOME"
                ;;
            "cd audit")
                current_section="AUDIT"
                manage_audit
                current_section="HOME"
                ;;
            "cd network")
                current_section="NETWORK"
                manage_network
                current_section="HOME"
                ;;
            "cd user")
                current_section="USER"
                manage_user
                current_section="HOME"
                ;;
            "cd filesystem")
                current_section="FILESYSTEM"
                manage_filesystem
                current_section="HOME"
                ;;
            "cd reporting")
                current_section="REPORTING"
                manage_reporting
                current_section="HOME"
                ;;
            "banner")
                display_banner
                ;;
            "welcome")
                display_welcome
                ;;
            "clear")
                clear  # Clear the terminal
                ;;
            "cd ..")
                current_section="HOME"  # Only set to HOME when "back" is entered
                ;;
            "ls")
                echo -e "\033[1;32m" "\nAVALIABLE DIRECTORIES (AD):"
                echo " 1.  ai         - Chat with ai"
                echo " 2.  cfi        - Check file integrity manager"
                echo " 3.  css        - Check system status"
                echo " 4.  ufw        - Manage UFW firewall rules"
                echo " 5.  scan       - Scan and find malware and rootkit"
                echo " 6.  anon       - Anonymous network traffic manager"
                echo " 7.  backup     - Backup critical files"
                echo " 8.  report     - Generate a report of your whole system"
                echo " 9.  supdate    - Update the distribution "
                echo " 10. tupdate    - Update to the latest veriosn of this tool."
                echo " 11. monitor    - Monitor files and changes while testing something on system."
                echo " 12. harden     - Harden your system with various security configurations."
                echo " 13. audit      - Configure system auditing and monitoring."
                echo " 14. network    - Configure advanced network security."
                echo " 15. user       - Manage user and access control."
                echo " 16. filesystem - Manage filesystem and malware enhancements."
                echo " 17. reporting  - Generate reports and configure notifications."
                echo -e "\033[0m"
                ;;
            *)
                if [[ -x "$(command -v "$user_command")" ]]; then
                    "$user_command"
                else
                    echo -e "\033[1;31m"
                    echo "-->> Invalid Command. Please use 'help' to see the commands."
                    echo -e "\033[0m"
                fi
                ;;
        esac

        # Save history to file
        save_history
    done
}

# Function to display colorful welcome message for reporting
display_reporting_welcome() {
    echo -e "\033[1;32m"  # Green color
    echo "                       <<===============================>>"
    echo "                         <<-WELCOME-TO-REPORTING-MANAGER->>"
    echo "                       <<===============================>>"
    echo "                             <<-=-CYBER-4RMY-=->>       "
    echo -e "\033[0m"  # Reset color
}

manage_reporting() {
    local current_section="REPORTING"

    while true; do
        read -e -p " {LINUX-DEFENDER}-{${current_section}}-->> " option

        if [[ "$option" == "exit" ]]; then
            break
        fi

        if [[ -z "$option" ]]; then
            continue
        fi

        history -s "$option"

        case $option in
            "checkup")
                system_checkup
                ;;
            "email-notify-on")
                configure_email_notifications "on"
                ;;
            "email-notify-off")
                configure_email_notifications "off"
                ;;
            "help")
                echo -e "\033[1;32m" "\nAVAILABLE COMMANDS (AC):"
                echo " 1. ls              - List available reporting options"
                echo " 2. cd ..           - Go back to the main menu"
                echo " 3. clear           - Clear the terminal"
                echo " 4. exit            - Exit the command interface"
                echo " 5. banner          - Show the banner"
                echo ""
                echo -e "\033[1;31m"  # Red color
                echo ">> By pressing CTRL+C the whole script stops (BE CAREFULL)"
                echo -e "\033[0m"  # Reset color
                ;;
            "ls")
                echo -e "\033[1;32m" "\nAVAILABLE REPORTING OPTIONS (ARO):"
                echo " 1. checkup         - Run an interactive system security check-up"
                echo " 2. email-notify-on - Enable email notifications for alerts"
                echo " 3. email-notify-off- Disable email notifications for alerts"
                echo -e "\033[0m"
                ;;
            "banner")
                display_reporting_welcome
                ;;
            "clear")
                clear
                ;;
            "cd ..")
                return
                ;;
            *)
                echo -e "\033[1;31m"
                echo "-->> Invalid Command. Please use 'help' to see the commands."
                echo -e "\033[0m"
                ;;
        esac
        save_history
    done
}

system_checkup() {
    echo "Running system security check-up..."
    local score=0
    local max_score=3
    local report_output=""

    report_output+="--- System Security Check-up Report (${DATE}) ---\n"

    # Check 1: Firewall Status
    if sudo ufw status | grep -q "Status: active"; then
        report_output+="[+] UFW Firewall: Active\n"
        score=$((score + 1))
    else
        report_output+="[-] UFW Firewall: Inactive (Consider enabling UFW)\n"
    fi

    # Check 2: SSH Hardening (basic checks)
    if grep -q "PermitRootLogin no" /etc/ssh/sshd_config && \
       grep -q "PasswordAuthentication no" /etc/ssh/sshd_config; then
        report_output+="[+] SSH Hardening: Basic measures applied (Root login disabled, Password auth disabled)\n"
        score=$((score + 1))
    else
        report_output+="[-] SSH Hardening: Basic measures not fully applied (Review /etc/ssh/sshd_config)\n"
    fi

    # Check 3: World-writable files in sensitive directories
    local ww_files=$(find /etc /usr/bin /usr/sbin -perm /o+w -type f 2>/dev/null)
    if [[ -z "$ww_files" ]]; then
        report_output+="[+] Sensitive Directories: No world-writable files found\n"
        score=$((score + 1))
    else
        report_output+="[-] Sensitive Directories: World-writable files found. Review these files:\n"
        while IFS= read -r line; do
            report_output+="    - $line\n"
        done <<< "$ww_files"
    fi

    local security_percentage=$(( (score * 100) / max_score ))
    report_output+="\n--- Security Score: $score/$max_score ($security_percentage%) ---\n"
    
    echo -e "$report_output" | tee "$LOGFILE" # Output to console and log
    log_message "INFO" "System security check-up completed."
    send_alert "System security check-up completed. Score: $score/$max_score ($security_percentage%)"
}

configure_email_notifications() {
    if [[ "$1" == "on" ]]; then
        echo "Enabling email notifications..."
        distro=$(get_distro)
        if [[ "$distro" == "arch" ]]; then
            sudo pacman -S --noconfirm postfix mailutils
        else
            sudo apt-get install -y postfix mailutils
        fi
        
        sudo postconf -e "relayhost = " # Configure relayhost if needed
        sudo systemctl enable postfix
        sudo systemctl start postfix
        log_message "INFO" "Email notifications enabled. Alerts will be sent to $EMAIL_ADDRESS."
        send_alert "Email notifications have been enabled."
    elif [[ "$1" == "off" ]]; then
        echo "Disabling email notifications..."
        sudo systemctl stop postfix
        sudo systemctl disable postfix
        log_message "INFO" "Email notifications disabled."
        send_alert "Email notifications have been disabled."
    fi
}


# Function to display colorful welcome message for filesystem
display_filesystem_welcome() {
    echo -e "\033[1;32m"  # Green color
    echo "                       <<===============================>>"
    echo "                         <<-WELCOME-TO-FILESYSTEM-MANAGER->>"
    echo "                       <<===============================>>"
    echo "                             <<-=-CYBER-4RMY-=->>       "
    echo -e "\033[0m"  # Reset color
}

manage_filesystem() {
    local current_section="FILESYSTEM"

    while true; do
        read -e -p " {LINUX-DEFENDER}-{${current_section}}-->> " option

        if [[ "$option" == "exit" ]]; then
            break
        fi

        if [[ -z "$option" ]]; then
            continue
        fi

        history -s "$option"

        case $option in
            "immutable-on")
                make_immutable "on"
                ;;
            "immutable-off")
                make_immutable "off"
                ;;
            "schedule-scans")
                schedule_scans
                ;;
            "quarantine-on")
                configure_quarantine "on"
                ;;
            "quarantine-off")
                configure_quarantine "off"
                ;;
            "help")
                echo -e "\033[1;32m" "\nAVAILABLE COMMANDS (AC):"
                echo " 1. ls              - List available filesystem options"
                echo " 2. cd ..           - Go back to the main menu"
                echo " 3. clear           - Clear the terminal"
                echo " 4. exit            - Exit the command interface"
                echo " 5. banner          - Show the banner"
                echo ""
                echo -e "\033[1;31m"  # Red color
                echo ">> By pressing CTRL+C the whole script stops (BE CAREFULL)"
                echo -e "\033[0m"  # Reset color
                ;;
            "ls")
                echo -e "\033[1;32m" "\nAVAILABLE FILESYSTEM OPTIONS (AFO):"
                echo " 1. immutable-on    - Make critical files immutable"
                echo " 2. immutable-off   - Make critical files mutable"
                echo " 3. schedule-scans  - Schedule regular malware scans"
                echo " 4. quarantine-on   - Enable malware quarantine"
                echo " 5. quarantine-off  - Disable malware quarantine"
                echo -e "\033[0m"
                ;;
            "banner")
                display_filesystem_welcome
                ;;
            "clear")
                clear
                ;;
            "cd ..")
                return
                ;;
            *)
                echo -e "\033[1;31m"
                echo "-->> Invalid Command. Please use 'help' to see the commands."
                echo -e "\033[0m"
                ;;
        esac
        save_history
    done
}

make_immutable() {
    if [[ "$1" == "on" ]]; then
        echo "Making critical files immutable..."
        sudo chattr +i /etc/passwd
        sudo chattr +i /etc/shadow
        sudo chattr +i /etc/group
        log_message "INFO" "Critical files made immutable."
        send_alert "Critical files have been made immutable."
    elif [[ "$1" == "off" ]]; then
        echo "Making critical files mutable..."
        sudo chattr -i /etc/passwd
        sudo chattr -i /etc/shadow
        sudo chattr -i /etc/group
        log_message "INFO" "Critical files made mutable."
        send_alert "Critical files have been made mutable."
    fi
}

schedule_scans() {
    echo "Scheduling regular malware scans..."
    echo "Enter scan frequency (e.g., daily, weekly, monthly):"
    read -p "> " frequency
    
    case "$frequency" in
        "daily")
            cron_schedule="0 2 * * *" # Every day at 2 AM
            ;;
        "weekly")
            cron_schedule="0 2 * * 0" # Every Sunday at 2 AM
            ;;
        "monthly")
            cron_schedule="0 2 1 * *" # First day of every month at 2 AM
            ;;
        *)
            echo "Invalid frequency. Defaulting to daily."
            cron_schedule="0 2 * * *"
            ;;
    esac
    
    (crontab -l 2>/dev/null; echo "$cron_schedule sudo rkhunter --check --update >> $LOGFILE") | crontab -
    (crontab -l 2>/dev/null; echo "$cron_schedule sudo chkrootkit >> $LOGFILE") | crontab -
    (crontab -l 2>/dev/null; echo "$cron_schedule sudo clamscan -r / --move=$QUARANTINE_DIR >> $LOGFILE") | crontab -
    
    log_message "INFO" "Regular malware scans scheduled ($frequency)."
    send_alert "Regular malware scans have been scheduled ($frequency)."
}

configure_quarantine() {
    if [[ "$1" == "on" ]]; then
        echo "Enabling malware quarantine..."
        sudo mkdir -p "$QUARANTINE_DIR"
        sudo chmod 700 "$QUARANTINE_DIR"
        # No direct clamav configuration for quarantine, it's done via the clamscan command
        log_message "INFO" "Malware quarantine enabled. Quarantined files will be moved to $QUARANTINE_DIR."
        send_alert "Malware quarantine has been enabled."
    elif [[ "$1" == "off" ]]; then
        echo "Disabling malware quarantine..."
        # This will remove the quarantine directory and any files within it.
        # User confirmation might be good here in a real scenario.
        sudo rm -rf "$QUARANTINE_DIR"
        log_message "INFO" "Malware quarantine disabled. Quarantine directory removed."
        send_alert "Malware quarantine has been disabled."
    fi
}


# Function to display colorful welcome message for user
display_user_welcome() {
    echo -e "\033[1;32m"  # Green color
    echo "                       <<===============================>>"
    echo "                         <<-WELCOME-TO-USER-MANAGER->>"
    echo "                       <<===============================>>"
    echo "                             <<-=-CYBER-4RMY-=->>       "
    echo -e "\033[0m"  # Reset color
}

manage_user() {
    local current_section="USER"

    while true; do
        read -e -p " {LINUX-DEFENDER}-{${current_section}}-->> " option

        if [[ "$option" == "exit" ]]; then
            break
        fi

        if [[ -z "$option" ]]; then
            continue
        fi

        history -s "$option"

        case $option in
            "password-policy")
                enforce_password_policy
                ;;
            "2fa")
                setup_2fa
                ;;
            "risky-users")
                check_risky_users
                ;;
            "help")
                echo -e "\033[1;32m" "\nAVAILABLE COMMANDS (AC):"
                echo " 1. ls              - List available user options"
                echo " 2. cd ..           - Go back to the main menu"
                echo " 3. clear           - Clear the terminal"
                echo " 4. exit            - Exit the command interface"
                echo " 5. banner          - Show the banner"
                echo ""
                echo -e "\033[1;31m"  # Red color
                echo ">> By pressing CTRL+C the whole script stops (BE CAREFULL)"
                echo -e "\033[0m"  # Reset color
                ;;
            "ls")
                echo -e "\033[1;32m" "\nAVAILABLE USER OPTIONS (AUO):"
                echo " 1. password-policy - Enforce strong password policies"
                echo " 2. 2fa             - Set up two-factor authentication for SSH"
                echo " 3. risky-users     - Check for risky user accounts"
                echo -e "\033[0m"
                ;;
            "banner")
                display_user_welcome
                ;;
            "clear")
                clear
                ;;
            "cd ..")
                return
                ;;
            *)
                echo -e "\033[1;31m"
                echo "-->> Invalid Command. Please use 'help' to see the commands."
                echo -e "\033[0m"
                ;;
        esac
        save_history
    done
}

enforce_password_policy() {
    echo "Enforcing strong password policies..."
    distro=$(get_distro)
    if [[ "$distro" == "arch" ]]; then
        sudo pacman -S --noconfirm pam
    else
        sudo apt-get install -y libpam-pwquality
    fi
    
    sudo cp /etc/pam.d/common-password /etc/pam.d/common-password.bak
    sudo tee -a /etc/pam.d/common-password > /dev/null <<'EOF'

# Enforce strong password policies
password requisite pam_pwquality.so retry=3 minlen=8 difok=3 ucredit=-1 lcredit=-1 dcredit=-1 ocredit=-1
EOF
    log_message "INFO" "Strong password policies enforced."
    send_alert "Strong password policies have been enforced."
}

setup_2fa() {
    echo "Setting up two-factor authentication for SSH..."
    distro=$(get_distro)
    if [[ "$distro" == "arch" ]]; then
        sudo pacman -S --noconfirm libpam-google-authenticator
    else
        sudo apt-get install -y libpam-google-authenticator
    fi
    
    # Configure sshd
    sudo cp /etc/pam.d/sshd /etc/pam.d/sshd.bak
    sudo echo "auth required pam_google_authenticator.so" >> /etc/pam.d/sshd
    
    sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
    sudo sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/' /etc/ssh/sshd_config
    
    sudo systemctl restart sshd
    
    # Run google-authenticator for the current user
    google-authenticator
    
    log_message "INFO" "Two-factor authentication for SSH set up."
    send_alert "Two-factor authentication for SSH has been set up."
    
    echo "Please log out and log back in to complete the setup."
}

check_risky_users() {
    echo "Checking for risky user accounts..."
    
    echo "--- Accounts with empty passwords ---"
    sudo awk -F: '($2 == "") { print $1 }' /etc/shadow
    
    echo "--- Non-root accounts with UID 0 ---"
    sudo awk -F: '($3 == 0 && $1 != "root") { print $1 }' /etc/passwd
    
    echo "--- Sudo users ---"
    grep -Po '^sudo.+:\K.*$' /etc/group | sed 's/,/\n/g'
    
    log_message "INFO" "Risky user accounts checked."
    send_alert "Risky user accounts have been checked."
}


# Function to display colorful welcome message for network
display_network_welcome() {
    echo -e "\033[1;32m"  # Green color
    echo "                       <<===============================>>"
    echo "                         <<-WELCOME-TO-NETWORK-MANAGER->>"
    echo "                       <<===============================>>"
    echo "                             <<-=-CYBER-4RMY-=->>       "
    echo -e "\033[0m"  # Reset color
}

manage_network() {
    local current_section="NETWORK"

    while true; do
        read -e -p " {LINUX-DEFENDER}-{${current_section}}-->> " option

        if [[ "$option" == "exit" ]]; then
            break
        fi

        if [[ -z "$option" ]]; then
            continue
        fi

        history -s "$option"

        case $option in
            "psd-on")
                detect_port_scans "on"
                ;;
            "psd-off")
                detect_port_scans "off"
                ;;
            "syn-on")
                mitigate_syn_floods "on"
                ;;
            "syn-off")
                mitigate_syn_floods "off"
                ;;
            "dns-on")
                configure_secure_dns "on"
                ;;
            "dns-off")
                configure_secure_dns "off"
                ;;
            "help")
                echo -e "\033[1;32m" "\nAVAILABLE COMMANDS (AC):"
                echo " 1. ls        - List available network options"
                echo " 2. cd ..     - Go back to the main menu"
                echo " 3. clear     - Clear the terminal"
                echo " 4. exit      - Exit the command interface"
                echo " 5. banner    - Show the banner"
                echo ""
                echo -e "\033[1;31m"  # Red color
                echo ">> By pressing CTRL+C the whole script stops (BE CAREFULL)"
                echo -e "\033[0m"  # Reset color
                ;;
            "ls")
                echo -e "\033[1;32m" "\nAVAILABLE NETWORK OPTIONS (ANO):"
                echo " 1. psd-on    - Enable port scan detection"
                echo " 2. psd-off   - Disable port scan detection"
                echo " 3. syn-on    - Enable SYN flood mitigation"
                echo " 4. syn-off   - Disable SYN flood mitigation"
                echo " 5. dns-on    - Enable secure DNS"
                echo " 6. dns-off   - Disable secure DNS"
                echo -e "\033[0m"
                ;;
            "banner")
                display_network_welcome
                ;;
            "clear")
                clear
                ;;
            "cd ..")
                return
                ;;
            *)
                echo -e "\033[1;31m"
                echo "-->> Invalid Command. Please use 'help' to see the commands."
                echo -e "\033[0m"
                ;;
        esac
        save_history
    done
}

detect_port_scans() {
    if [[ "$1" == "on" ]]; then
        echo "Enabling port scan detection..."
        sudo iptables -A INPUT -m recent --name portscan --rcheck --seconds 86400 -j DROP
        sudo iptables -A FORWARD -m recent --name portscan --rcheck --seconds 86400 -j DROP
        sudo iptables -A INPUT -m recent --name portscan --remove
        sudo iptables -A FORWARD -m recent --name portscan --remove
        sudo iptables -A INPUT -p tcp -m tcp --dport 139 -m recent --name portscan --set -j LOG --log-prefix "portscan:"
        sudo iptables -A INPUT -p tcp -m tcp --dport 139 -m recent --name portscan --set -j DROP
        sudo iptables -A FORWARD -p tcp -m tcp --dport 139 -m recent --name portscan --set -j LOG --log-prefix "portscan:"
        sudo iptables -A FORWARD -p tcp -m tcp --dport 139 -m recent --name portscan --set -j DROP
        log_message "INFO" "Port scan detection enabled."
        send_alert "Port scan detection has been enabled."
    elif [[ "$1" == "off" ]]; then
        echo "Disabling port scan detection..."
        sudo iptables -D INPUT -m recent --name portscan --rcheck --seconds 86400 -j DROP
        sudo iptables -D FORWARD -m recent --name portscan --rcheck --seconds 86400 -j DROP
        sudo iptables -D INPUT -m recent --name portscan --remove
        sudo iptables -D FORWARD -m recent --name portscan --remove
        sudo iptables -D INPUT -p tcp -m tcp --dport 139 -m recent --name portscan --set -j LOG --log-prefix "portscan:"
        sudo iptables -D INPUT -p tcp -m tcp --dport 139 -m recent --name portscan --set -j DROP
        sudo iptables -D FORWARD -p tcp -m tcp --dport 139 -m recent --name portscan --set -j LOG --log-prefix "portscan:"
        sudo iptables -D FORWARD -p tcp -m tcp --dport 139 -m recent --name portscan --set -j DROP
        log_message "INFO" "Port scan detection disabled."
        send_alert "Port scan detection has been disabled."
    fi
}

mitigate_syn_floods() {
    if [[ "$1" == "on" ]]; then
        echo "Enabling SYN flood mitigation..."
        sudo sysctl -w net.ipv4.tcp_syncookies=1
        sudo sysctl -w net.ipv4.tcp_max_syn_backlog=2048
        sudo sysctl -w net.ipv4.tcp_synack_retries=2
        sudo iptables -A INPUT -p tcp --syn -m limit --limit 1/s --limit-burst 3 -j RETURN
        sudo iptables -A INPUT -p tcp --syn -j DROP
        log_message "INFO" "SYN flood mitigation enabled."
        send_alert "SYN flood mitigation has been enabled."
    elif [[ "$1" == "off" ]]; then
        echo "Disabling SYN flood mitigation..."
        sudo sysctl -w net.ipv4.tcp_syncookies=0
        sudo iptables -D INPUT -p tcp --syn -m limit --limit 1/s --limit-burst 3 -j RETURN
        sudo iptables -D INPUT -p tcp --syn -j DROP
        log_message "INFO" "SYN flood mitigation disabled."
        send_alert "SYN flood mitigation has been disabled."
    fi
}

configure_secure_dns() {
    if [[ "$1" == "on" ]]; then
        echo "Configuring secure DNS..."
        sudo cp /etc/resolv.conf /etc/resolv.conf.bak
        sudo tee /etc/resolv.conf > /dev/null <<'EOF'
# Secure DNS servers provided by Cloudflare
nameserver 1.1.1.1
nameserver 1.0.0.1
EOF
        log_message "INFO" "Secure DNS configured."
        send_alert "Secure DNS has been configured."
    elif [[ "$1" == "off" ]]; then
        echo "Disabling secure DNS..."
        sudo mv /etc/resolv.conf.bak /etc/resolv.conf
        log_message "INFO" "Secure DNS disabled."
        send_alert "Secure DNS has been disabled."
    fi
}


# Function to display colorful welcome message for audit
display_audit_welcome() {
    echo -e "\033[1;32m"  # Green color
    echo "                       <<===============================>>"
    echo "                         <<-WELCOME-TO-AUDIT-MANAGER->>"
    echo "                       <<===============================>>"
    echo "                             <<-=-CYBER-4RMY-=->>       "
    echo -e "\033[0m"  # Reset color
}

manage_audit() {
    local current_section="AUDIT"

    while true; do
        read -e -p " {LINUX-DEFENDER}-{${current_section}}-->> " option

        if [[ "$option" == "exit" ]]; then
            break
        fi

        if [[ -z "$option" ]]; then
            continue
        fi

        history -s "$option"

        case $option in
            "install-auditd")
                install_auditd
                ;;
            "config-auditd")
                configure_audit_rules
                ;;
            "install-logwatch")
                install_logwatch
                ;;
            "help")
                echo -e "\033[1;32m" "\nAVAILABLE COMMANDS (AC):"
                echo " 1. ls              - List available audit options"
                echo " 2. cd ..           - Go back to the main menu"
                echo " 3. clear           - Clear the terminal"
                echo " 4. exit            - Exit the command interface"
                echo " 5. banner          - Show the banner"
                echo ""
                echo -e "\033[1;31m"  # Red color
                echo ">> By pressing CTRL+C the whole script stops (BE CAREFULL)"
                echo -e "\033[0m"  # Reset color
                ;;
            "ls")
                echo -e "\033[1;32m" "\nAVAILABLE AUDIT OPTIONS (AAO):"
                echo " 1. install-auditd  - Install and enable auditd"
                echo " 2. config-auditd   - Apply baseline auditd rules"
                echo " 3. install-logwatch- Install and configure logwatch"
                echo -e "\033[0m"
                ;;
            "banner")
                display_audit_welcome
                ;;
            "clear")
                clear
                ;;
            "cd ..")
                return
                ;;
            *)
                echo -e "\033[1;31m"
                echo "-->> Invalid Command. Please use 'help' to see the commands."
                echo -e "\033[0m"
                ;;
        esac
        save_history
    done
}

install_auditd() {
    echo "Installing auditd..."
    distro=$(get_distro)
    if [[ "$distro" == "arch" ]]; then
        sudo pacman -S --noconfirm audit
    else
        sudo apt-get install -y auditd audispd-plugins
    fi
    sudo systemctl enable auditd
    sudo systemctl start auditd
    log_message "INFO" "auditd installed and enabled."
    send_alert "auditd has been installed and enabled."
}

configure_audit_rules() {
    echo "Configuring auditd rules..."
    sudo cp /etc/audit/rules.d/audit.rules /etc/audit/rules.d/audit.rules.bak
    sudo tee /etc/audit/rules.d/audit.rules > /dev/null <<'EOF'
# This file is automatically generated by Linux Defender

# Remove any existing rules
-D

# Increase the buffers to survive a burst of events
-b 8192

# Failure mode: 1=panic, 2=halt
-f 1

## Watch sensitive files
-w /etc/passwd -p wa -k passwd_changes
-w /etc/shadow -p wa -k shadow_changes
-w /etc/group -p wa -k group_changes
-w /etc/sudoers -p wa -k sudoers_changes

## Watch for privileged command execution
-a always,exit -F arch=b64 -S execve -C uid!=euid -F euid=0 -k setuid_exec
-a always,exit -F arch=b32 -S execve -C uid!=euid -F euid=0 -k setuid_exec
-a always,exit -F arch=b64 -S execve -C gid!=egid -F egid=0 -k setgid_exec
-a always,exit -F arch=b32 -S execve -C gid!=egid -F egid=0 -k setgid_exec

## Watch for module loading/unloading
-w /sbin/insmod -p x -k module_load
-w /sbin/rmmod -p x -k module_unload
-w /sbin/modprobe -p x -k module_probe

## Watch for changes to network configuration
-w /etc/issue -p wa -k issue_change
-w /etc/issue.net -p wa -k issue_net_change
-w /etc/hosts -p wa -k hosts_change
-w /etc/network/interfaces -p wa -k network_interfaces_change

# Make the configuration immutable
-e 2
EOF
    sudo systemctl restart auditd
    log_message "INFO" "auditd rules configured."
    send_alert "auditd rules have been configured."
}

install_logwatch() {
    echo "Installing logwatch..."
    distro=$(get_distro)
    if [[ "$distro" == "arch" ]]; then
        sudo pacman -S --noconfirm logwatch
    else
        sudo apt-get install -y logwatch
    fi
    
    # Create a default configuration file
    sudo tee /etc/logwatch/conf/logwatch.conf > /dev/null <<'EOF'
# Default configuration file for Logwatch

# Mail settings
MailTo = root
MailFrom = Logwatch

# Report settings
Range = yesterday
Detail = Low
Service = All
Service = "-zz-network"     # Be quiet about network connections
Service = "-zz-sys"         # Be quiet about system startups
Service = "-zz-misc"        # Be quiet about miscellaneous items
Service = "-exim-summary"   # Be quiet about exim summary
Service = "-http"           # Be quiet about http
Service = "-identd"         # Be quiet about identd
Service = "-sendmail"       # Be quiet about sendmail
Service = "-sudo"           # Be quiet about sudo
Service = "-cron"           # Be quiet about cron
Service = "-sshd"           # Be quiet about sshd
Service = "-named"          # Be quiet about named
Service = "-postfix"        # Be quiet about postfix
Service = "-dovecot"        # Be quiet about dovecot

# Log file to use
LogFile = /var/log/messages
LogFile = /var/log/syslog
LogFile = /var/log/auth.log
LogFile = /var/log/secure

# Temporary directory
TmpDir = /var/cache/logwatch

EOF
    
    log_message "INFO" "logwatch installed and configured."
    send_alert "logwatch has been installed and configured."
}


# Function to display colorful welcome message for harden
display_harden_welcome() {
    echo -e "\033[1;32m"  # Green color
    echo "                       <<===============================>>"
    echo "                         <<-WELCOME-TO-HARDEN-MANAGER->>"
    echo "                       <<===============================>>"
    echo "                             <<-=-CYBER-4RMY-=->>       "
    echo -e "\033[0m"  # Reset color
}

harden_system() {
    local current_section="HARDEN"

    while true; do
        read -e -p " {LINUX-DEFENDER}-{${current_section}}-->> " option

        if [[ "$option" == "exit" ]]; then
            break
        fi

        if [[ -z "$option" ]]; then
            continue
        fi

        history -s "$option"

        case $option in
            "ssh")
                harden_ssh
                ;;
            "kernel")
                harden_kernel
                ;;
            "usb-off")
                disable_usb "on"
                ;;
            "usb-on")
                disable_usb "off"
                ;;
            "help")
                echo -e "\033[1;32m" "\nAVAILABLE COMMANDS (AC):"
                echo " 1. ls        - List available hardening options"
                echo " 2. cd ..     - Go back to the main menu"
                echo " 3. clear     - Clear the terminal"
                echo " 4. exit      - Exit the command interface"
                echo " 5. banner    - Show the banner"
                echo ""
                echo -e "\033[1;31m"  # Red color
                echo ">> By pressing CTRL+C the whole script stops (BE CAREFULL)"
                echo -e "\033[0m"  # Reset color
                ;;
            "ls")
                echo -e "\033[1;32m" "\nAVAILABLE HARDENING OPTIONS (AHO):"
                echo " 1. ssh       - Harden SSH configuration"
                echo " 2. kernel    - Apply kernel hardening settings"
                echo " 3. usb-off   - Disable USB storage"
                echo " 4. usb-on    - Enable USB storage"
                echo -e "\033[0m"
                ;;
            "banner")
                display_harden_welcome
                ;;
            "clear")
                clear
                ;;
            "cd ..")
                return
                ;;
            *)
                echo -e "\033[1;31m"
                echo "-->> Invalid Command. Please use 'help' to see the commands."
                echo -e "\033[0m"
                ;;
        esac
        save_history
    done
}

harden_ssh() {
    echo "Hardening SSH..."
    # Backup sshd_config
    sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
    
    # Disable root login
    sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config
    sudo sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
    
    # Change port
    # sudo sed -i 's/#Port 22/Port 2222/' /etc/ssh/sshd_config
    
    # Disable password authentication
    sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
    sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
    
    sudo systemctl restart sshd
    log_message "INFO" "SSH hardening applied."
    send_alert "SSH configuration has been hardened."
}

harden_kernel() {
    echo "Hardening kernel..."
    
    # Enable ASLR
    sudo echo "kernel.randomize_va_space = 2" > /etc/sysctl.d/99-hardening.conf
    
    # Hide kernel symbols
    sudo echo "kernel.kptr_restrict = 2" >> /etc/sysctl.d/99-hardening.conf
    
    # Apply settings
    sudo sysctl -p /etc/sysctl.d/99-hardening.conf
    
    log_message "INFO" "Kernel hardening applied."
    send_alert "Kernel parameters have been hardened."
}

disable_usb() {
    if [[ "$1" == "on" ]]; then
        echo "Disabling USB storage..."
        echo 'install usb-storage /bin/true' > /etc/modprobe.d/disable-usb-storage.conf
        log_message "INFO" "USB storage disabled."
        send_alert "USB storage has been disabled."
    elif [[ "$1" == "off" ]]; then
        echo "Enabling USB storage..."
        rm /etc/modprobe.d/disable-usb-storage.conf
        log_message "INFO" "USB storage enabled."
        send_alert "USB storage has been enabled."
    fi
}


# Function to manage UFW firewall rules
ufw_rule() {
    local action=$1
    local rule=$2
    echo -e "\033[1;32m"
    echo "<<==={UFW-${action^^}-${rule^^}}===>>"
    echo -e "\033[0m"
    sudo ufw "$action" "$rule"
    log_message "INFO" "UFW ${action}d $rule."
    send_alert "UFW ${action}d $rule."
}

manage_firewall() {
    local current_section="UFW"

    # Load history from file if it exists
    if [[ -f "$HISTORY_FILE" ]]; then
        history -r "$HISTORY_FILE"
    fi

    while true; do
        # Read input with readline support
        read -e -p " {LINUX-DEFENDER}-{${current_section}}-->> " option

        # Exit the loop if the user types 'exit'
        if [[ "$option" == "exit" ]]; then
            break
        fi

        # If the input is empty, continue to the next iteration
        if [[ -z "$option" ]]; then
            continue
        fi

        # Add the command to history
        history -s "$option"

        case $option in
            "enable")
                ufw_rule "enable"
                ;;
            "disable")
                ufw_rule "disable"
                ;;
            "assh")
                ufw_rule "allow" "ssh"
                ;;
            "dssh")
                ufw_rule "deny" "ssh"
                ;;
            "ahttp")
                ufw_rule "allow" "http"
                ;;
            "dhttp")
                ufw_rule "deny" "http"
                ;;
            "ahttps")
                ufw_rule "allow" "https"
                ;;
            "dhttps")
                ufw_rule "deny" "https"
                ;;
            "statv")
                echo -e "\033[1;32m"
                echo "<<==={UFW-STATUS-VERBOSE}===>>"
                echo -e "\033[0m"  # Reset color
                sudo ufw status verbose
                ;;
            "statn")
                echo -e "\033[1;32m"
                echo "<<==={UFW-STATUS-NUMBERED}===>>"
                echo -e "\033[0m"  # Reset color
                sudo ufw status numbered
                ;;
            "urest")
                echo -e "\033[1;32m"
                echo "<<==={UFW-RESETER}===>>"
                echo -e "\033[0m"  # Reset color
                sudo ufw reset
                ;;
            "uload")
                echo -e "\033[1;32m"
                echo "<<==={UFW-STATUS-NUMBERED}===>>"
                echo -e "\033[0m"  # Reset color
                sudo ufw reload
                ;;
            "aftp")
                ufw_rule "allow" "ftp"
                ;;
            "dftp")
                ufw_rule "deny" "ftp"
                ;;
            "deny-all")
                ufw_rule "default" "deny"
                ;;
            "den-in")
                ufw_rule "default" "deny incoming"
                ;;
            "alw-out")
                ufw_rule "default" "allow outgoing"
                ;;
            "den-out")
                ufw_rule "default" "deny outgoing"
                ;;
            "aping")
                ufw_rule "allow" "proto icmp"
                ;;
            "dping")
                ufw_rule "deny" "proto icmp"
                ;;
            "adns")
                ufw_rule "allow" "dns"
                ;;
            "ddns")
                ufw_rule "deny" "dns"
                ;;
            "asmtp")
                ufw_rule "allow" "smtp"
                ;;
            "dsmtp")
                ufw_rule "deny" "smtp"
                ;;
            "apop3")
                ufw_rule "allow" "pop3"
                ;;
            "dpop3")
                ufw_rule "deny" "pop3"
                ;;
            "aimap")
                ufw_rule "allow" "imap"
                ;;
            "dimap")
                ufw_rule "deny" "imap"
                ;;
            "clear")
                clear
                ;;
            "banner")
                display_ufw_welcome
                ;;
            "help")
                echo -e "\033[1;32m" "\nUFW Help (UFWH):"
                echo " 1. ls     - To List preset UFW rules for use"
                echo " 2. cd ..  - To get back to the HOME Menu."
                echo " 3. clear  - Clear the terminal."
                echo " 4. banner - Show the banner of UFW"
                echo ""
                echo -e "\033[1;31m"  # Red color
                echo ">> By pressing CTRL+C the whole script stops (BE CAREFULL)"
                echo -e "\033[0m"  # Reset color
                ;;
            "ls")
                echo -e "\033[1;32m" "Available Options (AO):"
                echo " 1.   enable    - Enable UFW"
                echo " 2.   disable   - Disable UFW"
                echo " 3.   assh      - Allow SSH"
                echo " 4.   dssh      - Deny SSH"
                echo " 5.   ahttp     - Allow HTTP"
                echo " 6.   dhttp     - Deny HTTP"
                echo " 7.   ahttps    - Allow HTTPS"
                echo " 8.   dhttps    - Deny HTTPS"
                echo " 9.   aftp      - Allow FTP "
                echo " 10.  dftp      - Deny FTP "
                echo " 11.  aping     - Allow Ping (ICMP)"
                echo " 12.  dping     - Deny Ping (ICMP)"
                echo " 13.  adns      - Allow DNS "
                echo " 14.  ddns      - Deny DNS "
                echo " 15.  asmtp     - Allow SMTP"
                echo " 16.  dsmtp     - Deny SMTP"
                echo " 17.  apop3     - Allow POP3"
                echo " 18.  dpop3     - Deny P0P3"
                echo " 19.  aimap     - Allow IMAP"
                echo " 20.  dimap     - Deny IAMP"
                echo " 21.  deny-all  - Deny all Internet Traffic"
                echo " 22.  den-in    - Deny all incoming Traffic"
                echo " 23.  alw-out   - Allow Outgoing Traffic"
                echo " 24.  den-out   - Deny Outgoing Traffic"
                echo " 25.  urest     - Reset the UFW and take it to normal"
                echo " 26.  uload     - Reload the UFW "
                echo " 27.  statv     - Show UFW status in verbose."
                echo " 28.  statn     - Show UFW status in numbered."
                echo -e "\033[0m"  # Reset color
                ;;
            "cd ..")
                return
                ;;
            *)
                echo "-->> Invalid Command. Please use 'show' to see the commands."
                ;;
        esac

        # Save history to file
        history -a "$HISTORY_FILE"
    done
}

#Update Distro funciton
update_system() {
    local current_section="SUPDATE"

    # Load history from file if it exists
    if [[ -f "$HISTORY_FILE" ]]; then
        history -r "$HISTORY_FILE"
    fi

    while true; do
        read -e -p " {LINUX-DEFENDER}-{${current_section}}-->> " option

        # Exit the loop if the user types 'exit'
        if [[ "$option" == "exit" ]]; then
            break
        fi

        # If the input is empty, continue to the next iteration
        if [[ -z "$option" ]]; then
            continue
        fi

        # Add the command to history
        history -s "$option"

        case $option in
            "pdeb")
                if sudo parrot-upgrade -y; then
                    log_message "INFO" "PARROT OS updated successfully."
                    send_alert "PARROT OS updated successfully."
                else
                    log_message "ERROR" "PARROT OS system update failed."
                    send_alert "PARROT OS system update failed. Check the log for details."
                fi
                ;;
            "kdeb")
                if sudo apt full-upgrade -y; then
                    log_message "INFO" "KALI linux updated successfully."
                    send_alert "KALI linux updated successfully."
                else
                    log_message "ERROR" "KALI linux system update failed."
                    send_alert "KALI linux system update failed. Check the log for details."
                fi
                ;;
            "deb")
                sudo apt-get update -y
                sudo apt-get upgrade -y
                log_message "INFO" "Ububtu/Debian Update Successfully."
                send_alert "Your disro is updated successfully."
                ;;
            "arch")
                if sudo pacman -Syyu --noconfirm; then
                    log_message "INFO" "Arch system updated successfully."
                    send_alert "Arch system updated successfully."
                else
                    log_message "ERROR" "Arch system update failed."
                    send_alert "Arch system update failed. Check the log for details."
                fi
                ;;
            "rhat")
                if sudo dnf upgrade --refresh -y; then
                    log_message "INFO" "Red Hat/CentOS/Fedora system updated successfully."
                    send_alert "Red Hat/CentOS/Fedora system updated successfully."
                else
                    log_message "ERROR" "Red Hat/CentOS/Fedora system update failed."
                    send_alert "Red Hat/CentOS/Fedora system update failed. Check the log for details."
                fi
                ;;
            "help")
                echo -e "\033[1;32m" "\nSUPDATE HELP (SUPH):"
                echo " 1. ls     - List all preset commands"
                echo " 2. cd ..  - To get back the HOME Menu."
                echo " 3. clear  - Clear the terminal."
                echo " 4. banner - Show  the banner"
                echo ""
                echo -e "\033[1;31m"  # Red color
                echo ">> By pressing CTRL+C the whole script stops (BE CAREFULL)"
                echo -e "\033[0m"  # Reset color
                ;;
            "clear")
                clear  # Clear the terminal
                ;;
            "banner")
                display_supdate_welcome
                ;;
            "ls")
                echo -e "\033[1;32m" "\nCOOSE YOUR DISTRO TYPE (CYDT):"
                echo " 1. deb   - Update Ubuntu/Debain system"
                echo " 2. pdeb  - Update parrot os"
                echo " 3. kdeb  - Update Kali linux"
                echo " 4. arch  - Update Arch"
                echo " 5. rhat  - Update Red Hat/CentOS/Fedora"
                echo -e "\033[0m"  # Reset color
                ;;
            "cd ..")
                return  # Exit the update management section and go back to the main menu
                ;;
            *)
                echo "-->> Invalid Command. Please use show to see the commands."
                ;;
        esac

        # Save history to file
        history -a "$HISTORY_FILE"
    done
}

update_from_github() {
    local repo="CYBER-4RMY/LINUX-DEFENDER"  # Exact GitHub repository (case-sensitive)
    local current_version="v1.3"               # Your current version (update as needed)
    local latest_version
    local zip_file
    local temp_dir
    local url
    local http_status

    # Check for required commands
    for cmd in curl unzip grep sort; do
        if ! command -v "$cmd" &> /dev/null; then
            echo "Error: $cmd is not installed. Please install it and try again."
            return 1
        fi
    done

    # Check if the repository exists by checking HTTP status code
    http_status=$(curl -s -o /dev/null -w "%{http_code}" "https://api.github.com/repos/${repo}")
    if [[ "$http_status" != "200" ]]; then
        echo "Error: Repository $repo does not exist or is inaccessible. HTTP status code: $http_status"
        return 1
    fi

    # Fetch the latest release version from GitHub API
    latest_version=$(curl -s "https://api.github.com/repos/${repo}/releases/latest" | grep -oP '"tag_name": "\K(.*)(?=")')
    if [[ -z "$latest_version" ]]; then
        echo "Error: Failed to fetch the latest version from the repository."
        return 1
    fi

    echo "Current version: $current_version"
    echo "Latest version: $latest_version"

    # Compare versions; if current >= latest, no update needed
    if [[ $(echo -e "${current_version}\n${latest_version}" | sort -V | head -n1) == "$latest_version" ]]; then
        echo "You are already running the latest version: $current_version"
        return 0
    fi

    # Prepare download info
    temp_dir=$(mktemp -d) || { echo "Failed to create temp directory."; return 1; }
    zip_file="${repo##*/}-${latest_version}.zip"
    url="https://github.com/${repo}/archive/refs/tags/${latest_version}.zip"

    echo "Downloading $zip_file from $url..."

    # Download release zip
    if ! curl -L -o "$temp_dir/$zip_file" "$url"; then
        echo "Error: Failed to download $zip_file. Check the URL or tag."
        rm -rf "$temp_dir"
        return 1
    fi

    echo "Download completed."

    # Extract ZIP file quietly
    if ! unzip -q "$temp_dir/$zip_file" -d "$temp_dir"; then
        echo "Error: Failed to extract $zip_file."
        rm -rf "$temp_dir"
        return 1
    fi

    echo "Extraction completed."

    # Replace this with actual move/copy logic for your project files
    # e.g., mv "$temp_dir/extracted_folder/*" /your/project/directory/
    # Adjust this path according to your repo structure after extraction
    
    # Assuming the script is named defender.sh in the repo
    
    sudo cp "$temp_dir/LINUX-DEFENDER-${latest_version:1}/defender.sh" "$SCRIPT_PATH"
    
    echo "Cleaning up temporary files..."
    rm -rf "$temp_dir"

    echo "Update completed successfully."
    return 0
}

# Function to scan for malware using multiple tools
scan_for_danger() {
    local current_section="SCAN"
    local scan_pid=0

    # Load history from file if it exists
    if [[ -f "$HISTORY_FILE" ]]; then
        history -r "$HISTORY_FILE"
    fi

    while true; do
        read -e -p " {LINUX-DEFENDER}-{${current_section}}-->> " option

        # Exit the loop if the user types 'exit'
        if [[ "$option" == "exit" ]]; then
            break
        fi

        # If the input is empty, continue to the next iteration
        if [[ -z "$option" ]]; then
            continue
        fi

        # Add the command to history
        history -s "$option"

        case $option in
            "clam")
                log_message "INFO" "Scanning for malware with ClamAV..."
                for dir in "${SCAN_DIRS[@]}"; do
                    clamscan -r "$dir" | tee -a $LOGFILE &
                    scan_pid=$!  # Store the PID of the background process
                    wait "$scan_pid"  # Wait for the scan to complete
                    if [[ $? -ne 0 ]]; then
                        log_message "WARNING" "Malware detected in $dir with ClamAV!"
                        send_alert "Malware detected in $dir with ClamAV! Check the log for details."
                    fi
                done
                send_alert "ClamAV scan completed."
                scan_pid=0  # Reset PID after completion
                ;;
            "rkit")
                log_message "INFO" "Checking for rootkits using rkhunter..."
                sudo rkhunter --check | tee -a $LOGFILE &
                scan_pid=$!  # Store the PID of the background process
                wait "$scan_pid"  # Wait for the scan to complete
                if [[ $? -eq 0 ]]; then
                    send_alert "Rootkit check completed. No issues found."
                    log_message "INFO" "Rootkit check completed. No issues found."
                else
                    send_alert "Rootkit check completed. Issues found! Check the log for details."
                    log_message "WARNING" "Rootkit check completed. Issues found!"
                fi
                scan_pid=0  # Reset PID after completion
                ;;
            "crkit")
                log_message "INFO" "Checking for rootkits using chrootkit..."
                sudo chkrootkit | tee -a $LOGFILE &
                scan_pid=$!  # Store the PID of the background process
                wait "$scan_pid"  # Wait for the scan to complete
                if [[ $? -eq 0 ]]; then
                    send_alert "Rootkit check completed. No issues found."
                    log_message "INFO" "Rootkit check completed. No issues found."
                else
                    send_alert "Rootkit check completed. Issues found! Check the log for details."
                    log_message "WARNING" "Rootkit check completed. Issues found!"
                fi
                scan_pid=0  # Reset PID after completion
                ;;
            "help")
                echo -e "\033[1;32m" "\nSCAN HELP (SCANH):"
                echo " 1. ls     - Show the available security tools for scan"
                echo " 2. cd ..  - Return to the HOME Menu."
                echo " 3. clear  - Clear the terminal."
                echo " 4. banner - Show the banner."
                echo ""
                echo -e "\033[1;31m"  # Red color
                echo ">> By pressing CTRL+C the whole script stops (BE CAREFULL)"
                echo -e "\033[0m"  # Reset color
                ;;
            "ls")
                echo -e "\033[1;32m" "\nSCAN COMMANDS (SCANC):"
                echo " 1. clam  - Scan for malware using ClamAV."
                echo " 2. rkit  - Check for rootkits using rkhunter."
                echo " 3. crkit - Check for rootkits using chkrootkit."
                echo "                                           "
                echo ">> WARNING: THIS CAN TAKE TIME SO KEEP PATIENCE & PRESSING CTRL+C STOP THE WHOLE SCRIPT SO, DON'T PRESS CTRL+C NOW"
                echo -e "\033[0m"  # Reset color
                ;;
            "banner")
                display_scan_welcome
                ;;
            "clear")
                clear  # Clear the terminal
                ;;
            "cd ..")
                return  # Exit the scan management section and go back to the main menu
                ;;
            *)
                echo "-->> Invalid Command. Please use show to see the commands."
                ;;
        esac

        # Save history to file
        history -a "$HISTORY_FILE"
    done
}

# Function to chat or work with ai
chat_ai() {
    local current_section="AI"

    # Load history from file if it exists
    if [[ -f "$HISTORY_FILE" ]]; then
        history -r "$HISTORY_FILE"
    fi

    while true; do
        read -e -p " {LINUX-DEFENDER}-{${current_section}}-->> " option

        # Exit the loop if the user types 'exit'
        if [[ "$option" == "exit" ]]; then
            break
        fi

        # If the input is empty, continue to the next iteration
        if [[ -z "$option" ]]; then
            continue
        fi

        # Add the command to history
        history -s "$option"

        case $option in
            "intarch")
                echo -e "\033[1;32m"
                echo "    <<==={INSTALLING-TGPT}===>>"
                echo -e "\033[0m"  # Reset color
                sudo pacman -S tgpt --noconfirm
                log_message "INFO" "TGPT installing for arch."
                send_alert "TGPT INSTALLING FOR ARCH."
                ;;
            "intdeb")
                echo -e "\033[1;32m"
                echo "    <<==={INSTALLING-TGPT}===>>"
                echo -e "\033[0m"  # Reset color
                sudo curl -sSL https://raw.githubusercontent.com/aandrew-me/tgpt/main/install | bash -s /usr/local/bin
                log_message "INFO" "TGPT installing for debian based distro."
                send_alert "TGPT INSTALLING FOR DEBIAN."
                ;;
            "aiup")
                echo -e "\033[1;32m"
                echo "    <<==={UPDATING-TGPT}===>>"
                echo -e "\033[0m"  # Reset color
                sudo tgpt -u
                log_message "INFO" "TGPT updating."
                send_alert "TGPT UPDATING."
                ;;
            "aint")
                echo -e "\033[1;32m"
                echo "    <<==={INTERACTIVE-TGPT}===>>"
                echo -e "\033[0m"  # Reset color
                tgpt -i
                log_message "INFO" "TGPT in interactive mode."
                send_alert "TGPT INTERACTIVE MODE."
                ;;
            "aindev")
                echo -e "\033[1;32m"
                echo "    <<==={INTERACTIVE-DEVLOOPER-TGPT}===>>"
                echo -e "\033[0m"  # Reset color
                tgpt --provider phind -i
                log_message "INFO" "TGPT in interactive devloper mode."
                send_alert "TGPT INTERACTIVE DEVLOPER MODE."
                ;;
            "aichat")
                echo -e "\033[1;32m"
                echo "    <<==={CHAT-WITH-TGPT}===>>"
                echo -e "\033[0m"  # Reset color
                tgpt -m
                log_message "INFO" "TGPT in normal chat mode."
                send_alert "TGPT CHAT MODE."
                ;;
            "aidev")
                echo -e "\033[1;32m"
                echo "    <<==={DEVLOPER-TGPT}===>>"
                echo -e "\033[0m"  # Reset color
                
                # Prompt for user input
                echo -e "\033[1;31m"
                read -p "  (YOUR-IDEA) ->> " user_prompt
                echo -e "\033[0m"
                
                # Execute tgpt with user input
                tgpt --provider phind "$user_prompt"
                
                log_message "INFO" "TGPT in interactive mode with user prompt."
                send_alert "TGPT INTERACTIVE MODE WITH PROMPT."
                ;;
            "aishell")
                echo -e "\033[1;32m"
                echo "    <<==={DEVLOPER-TGPT}===>>"
                echo -e "\033[0m"  # Reset color
                
                # Prompt for user input
                echo -e "\033[1;31m"
                read -p "  (YOUR-QUERRY) ->> " user_prompt
                echo -e "\033[0m"
                
                # Execute tgpt with user input
                tgpt -s "$user_prompt"
                
                log_message "INFO" "TGPT in shell mode with user prompt."
                send_alert "TGPT SHELL MODE WITH PROMPT."
                ;;
            "aisim")
                echo -e "\033[1;32m"
                echo "    <<==={SIMPLE-TGPT}===>>"
                echo -e "\033[0m"  # Reset color
                
                # Prompt for user input
                echo -e "\033[1;31m"
                read -p "  (YOUR-QUERRY) ->> " user_prompt
                echo -e "\033[0m"
                
                # Execute tgpt with user input
                tgpt "$user_prompt"
                
                log_message "INFO" "TGPT in SIMPLE mode with user prompt."
                send_alert "TGPT SIMPLE MODE WITH PROMPT."
                ;;
            "aimg")
                echo -e "\033[1;32m"
                echo "    <<==={IMAGE-TGPT}===>>"
                echo -e "\033[0m"  # Reset color
                
                # Prompt for user input
                echo -e "\033[1;31m"
                read -p "  (YOUR-IMAGE-IDEA) ->> " user_prompt
                echo -e "\033[0m"
                
                # Execute tgpt with user input
                tgpt --img "$user_prompt"
                
                log_message "INFO" "TGPT in image generator mode with user prompt."
                send_alert "TGPT IMAGE GENERATOR MODE WITH PROMPT."
                ;;
            "aiasc")
                echo -e "\033[1;32m"
                echo "    <<==={ASCII-TGPT}===>>"
                echo -e "\033[0m"  # Reset color
                
                # Prompt for user input
                echo -e "\033[1;31m"
                read -p "  (YOUR-ASCII-IDEA) ->> " user_prompt
                echo -e "\033[0m" 
                
                # Execute tgpt with user input
                tgpt --provider pollinations "$user_prompt"
                
                log_message "INFO" "TGPT in ascii image generator mode with user prompt."
                send_alert "TGPT ASCII IMAGE GENERATOR MODE WITH PROMPT."
                ;;
            "help")
                echo -e "\033[1;32m" "\nAI HELP (AIH):"
                echo " 1. ls     - Show the available security options to start Tor."
                echo " 2. cd ..  - Return to the main menu."
                echo " 3. clear  - Clear the terminal."
                echo " 4. banner - Show the banner."
                echo -e "\033[0m"  # Reset color
                ;;
            "ls")
                echo -e "\033[1;32m" "\nAI COMMANDS (AIC):"
                echo " 1. aint     - TGPT in interactive mode."
                echo " 2. aiup     - Update TGPT (specally for debian)."
                echo " 3. aimg     - TGPT in image generator mode."
                echo " 4. aiasc    - TGPT in ascii image generator mode."
                echo " 5. aisim    - TGPT in simple mode."
                echo " 6. aidev    - TGPT in Devloper mode."
                echo " 7. aichat   - TGPT in normal chat mode."
                echo " 8. aindev    - TGPT in interactive devloper mode."
                echo " 9. aishell  - TGPT for ask command or execute command mode."
                echo "   "
                echo "> INSTALL TGPT"
                echo " 1. intdeb   - Install TGPT for debian based distro (including kali, ubuntu, parrot)."
                echo " 2. intarch  - Install TGPT for arch linux."
                echo -e "\033[0m"  # Reset color
                ;;
            "banner")
                display_ai_welcome
                ;;
            "clear")
                clear  # Clear the terminal
                ;;
            "cd ..")
                return  # Exit the scan management section and go back to the main menu
                ;;
            *)
                echo -e "\033[1;31m"
                echo "-->> Invalid Command. Please use show to see the commands."
                echo -e "\033[0m"  # Reset color
                ;;
        esac

        # Save history to file
        history -a "$HISTORY_FILE"
    done
}

# Function to go through Tor circuit
traffic_anony() {
    local current_section="ANON"

    # Load history from file if it exists
    if [[ -f "$HISTORY_FILE" ]]; then
        history -r "$HISTORY_FILE"
    fi

    while true; do
        read -e -p " {LINUX-DEFENDER}-{${current_section}}-->> " option

        # Exit the loop if the user types 'exit'
        if [[ "$option" == "exit" ]]; then
            break
        fi

        # If the input is empty, continue to the next iteration
        if [[ -z "$option" ]]; then
            continue
        fi

        # Add the command to history
        history -s "$option"

        case $option in
            "dstart")
                echo -e "\033[1;32m"
                echo "<<==={TOR-MODE-ON}===>>"
                echo -e "\033[0m"  # Reset color
                sudo anonsurf start
                log_message "INFO" "All network traffic is routing through Tor."
                send_alert "Tor network traffic is running now."
                ;;
            "dchnid")
                echo -e "\033[1;32m"
                echo "<<==={TOR-CHANGED-IP}===>>"
                echo -e "\033[0m"  # Reset color
                sudo anonsurf changeid
                log_message "INFO" "TOR changed Ip address for debain"
                send_alert "Your IP address changed now."
                ;;
            "dstop")
                echo -e "\033[1;32m"
                echo "<<==={TOR-MODE-OFF}===>>"
                echo -e "\033[0m"  # Reset color
                sudo anonsurf stop
                log_message "INFO" "All network traffic is routing Normally."
                send_alert "Tor network traffic is stop."
                ;;
            "kstart")
                echo -e "\033[1;32m"
                echo "<<==={TOR-MODE-ON}===>>"
                echo -e "\033[0m"  # Reset color
                sudo anonsurf start
                log_message "INFO" "All network traffic is routing through Tor (KALI)."
                send_alert "Tor network traffic is running now."
                ;;
            "kchnid")
                echo -e "\033[1;32m"
                echo "<<==={TOR-CHANGED-IP}===>>"
                echo -e "\033[0m"  # Reset color
                sudo anonsurf change
                log_message "INFO" "TOR changed Ip address for Kali"
                send_alert "Your IP address changed now."
                ;;
            "kstop")
                echo -e "\033[1;32m"
                echo "<<==={TOR-MODE-OFF}===>>"
                echo -e "\033[0m"  # Reset color
                sudo anonsurf stop
                log_message "INFO" "All network traffic is routing kali."
                send_alert "Tor network traffic is stop."
                ;;
            "astart")
                echo -e "\033[1;32m"
                echo "<<==={TOR-MODE-ON}===>>"
                echo -e "\033[0m"  # Reset color
                sudo systemctl start tor 
                log_message "INFO" "All network traffic is routing through Tor."
                send_alert "Tor network is started now."
                ;;
            "achnid")
                echo -e "\033[1;32m"
                echo "<<==={TOR-CHANGED-IP}===>>"
                echo -e "\033[0m"  # Reset color
                sudo systemctl restart tor
                log_message "INFO" "TOR changed IP address for ARCH."
                send_alert "Your IP address changed now."
                ;;
            "astop")
                echo -e "\033[1;32m"
                echo "<<==={TOR-MODE-OFF}===>>"
                echo -e "\033[0m"  # Reset color
                sudo systemctl stop tor
                log_message "INFO" "All network traffic is routing Normally."
                send_alert "Tor network is stop"
                ;;
            "help")
                echo -e "\033[1;32m" "\nANONY HELP (ANONYH):"
                echo " 1. ls     - Show the available security options to start Tor."
                echo " 2. cd ..  - Return to the main menu."
                echo " 3. clear  - Clear the terminal."
                echo " 4. banner - Show the banner."
                echo ""
                echo -e "\033[1;31m"  # Red color
                echo ">> By pressing CTRL+C the whole script stops (BE CAREFULL)"
                echo -e "\033[0m"  # Reset color
                ;;
            "ls")
                echo -e "\033[1;32m" "\nANONY COMMANDS (ANONYC):"
                echo "--> WARNING: FOR KALI LINUX PLEASE INSTALL KALI-ANONSURF FORM GITHUB."
                echo "--> INFO: My research is still going to resolv other distro tor tool."
                echo "                                                " 
                echo "> DEBIAN-TOR:"
                echo " 1. dstart  - For parrot os, to start Tor tunnel."
                echo " 2. dchnid  - For parrot os, to change Tor IP Address."
                echo " 3. dstop   - For parrot os, to stop Tor tunnel."
                echo "                                                      "
                echo "> KALI-TOR:"
                echo " 1. kstart  - For kali, to start Tor tunnel."
                echo " 2. kchnid  - For kali, to change Tor IP Address."
                echo " 3. kstop   - For kali, to stop Tor tunnel."
                echo "                                          "
                echo "> ARCH-TOR:"
                echo " 1. astart  - For Arch, to start Tor tunnel."
                echo " 2. achnid  - For Arch, to change IP address of TOR."
                echo " 4. astop   - For Arch, to stop TOR tunnel."
                echo -e "\033[0m"  # Reset color
                ;;
            "banner")
                display_traffic_welcome
                ;;
            "clear")
                clear  # Clear the terminal
                ;;
            "cd ..")
                return  # Exit the scan management section and go back to the main menu
                ;;
            *)
                echo "-->> Invalid Command. Please use show to see the commands."
                ;;
        esac

        # Save history to file
        history -a "$HISTORY_FILE"
    done
}

# Function to backup critical files
backup_files() {
    local current_section="BACKUP"
    local BACKUP_DIR="$HOME/normal_backup"  # Default backup directory
    local SCAN_DIRS=()

    # Load history from file if it exists
    if [[ -f "$HISTORY_FILE" ]]; then
        history -r "$HISTORY_FILE"
    fi

    while true; do
        read -e -p " {LINUX-DEFENDER}-{${current_section}}-->> " option

        # Exit the loop if the user types 'exit'
        if [[ "$option" == "exit" ]]; then
            break
        fi

        # If the input is empty, continue to the next iteration
        if [[ -z "$option" ]]; then
            continue
        fi

        # Add the command to history
        history -s "$option"

        case $option in
            "custsf")
                read -p "> Specify backup storage path: " BACKUP_DIR
                echo "-> You have chosen to back up to: $BACKUP_DIR"
                echo "==> Specify folders to backup (type 'done' when finished):"
                while true; do
                    read -p "=> Folder: " dir
                    if [[ "$dir" == "done" ]]; then
                        break
                    fi
                    if [[ -d "$dir" ]]; then
                        SCAN_DIRS+=("$dir")
                    else
                        echo "-> Directory does not exist. Please enter a valid folder."
                    fi
                done
                ;;
            "help")
                echo -e "\033[1;32m" "\nBACKUP HELP (BACKH):"
                echo " 1. ls     - Show the available backup options"
                echo " 2. cd ..  - to return to the main menu."
                echo " 3. clear  - Clear the terminal"
                echo " 4. banner - Show the banner."
                echo -e "\033[0m"  # Reset color
                ;;
            "ls")
                echo -e "\033[1;32m" "\nBACKUP COMMAND (BACKC):"
                echo " 1. custsf    - Custom Storage and Custom Folder"
                echo "                                              "
                echo "==>> IF any other backup idea you have then send me on (https://t.me/CYBER4RMY)"
                echo -e "\033[0m"  # Reset color
                ;;
            "clear")
                clear  # Clear the terminal
                ;;
            "banner")
                display_backup_welcome
                ;;
            "cd ..")
                return  # Exit the backup management section and go back to the main menu
                ;;
            *)
                echo "-->> Invalid Command. Please use help to see the commands."
                ;;
        esac

        # Check if the user has specified folders to back up
        if [[ ${#SCAN_DIRS[@]} -gt 0 ]]; then
            # Create the backup directory if it doesn't exist
            mkdir -p "$BACKUP_DIR"

            # Perform the backup
            log_message "INFO" "> Backing up files to $BACKUP_DIR..."
            for dir in "${SCAN_DIRS[@]}"; do
                cp -r "$dir" "$BACKUP_DIR" >> $LOGFILE 2>&1
                if [[ $? -eq 0 ]]; then
                    log_message "INFO" "Successfully backed up $dir to $BACKUP_DIR."
                    echo "=> Successfully backed up $dir to $BACKUP_DIR."
                else
                    log_message "ERROR" "Failed to back up $dir. Check the log for details."
                    echo "-> Failed to back up $dir. Check the log for details."
                fi
            done
            send_alert "==>> Backup completed."
            echo "=> Backup files are kept at: $BACKUP_DIR"
        fi

        # Save history to file
        history -a "$HISTORY_FILE"
    done
}

# Function to check system status
check_sys_status() {
    local current_section="CSS"

    # Load history from file if it exists
    if [[ -f "$HISTORY_FILE" ]]; then
        history -r "$HISTORY_FILE"
    fi

    while true; do
        read -e -p " {LINUX-DEFENDER}-{${current_section}}-->> " option

        # Exit the loop if the user types 'exit'
        if [[ "$option" == "exit" ]]; then
            break
        fi

        # If the input is empty, continue to the next iteration
        if [[ -z "$option" ]]; then
            continue
        fi

        # Add the command to history
        history -s "$option"

        case $option in
            "ufws")
                echo -e "\033[1;32m"
                echo "<<==={UFW-STATUS}===>:"
                echo -e "\033[0m"  # Reset color
                sudo ufw status verbose
                log_message "INFO" "UFW status checked."
                send_alert "UFW STATUS IS SHOWN."
                ;;
            "disks")
                echo -e "\033[1;32m"
                echo "<<==={DISK-USAGE-STATUS}===>>"
                echo -e "\033[0m"  # Reset color
                df -h
                log_message "INFO" "Disk status checked"
                send_alert "DISK USAGE STATUS IS SHOWN."
                ;;
            "rams")
                echo -e "\033[1;32m"
                echo "<<==={MEMORY-USAGE-STATUS}===>>"
                echo -e "\033[0m"  # Reset color
                free -h
                log_message "INFO" "Memory/Ram usage status checked."
                send_alert "MEMORY/RAM STATUS IS SHOWN."
                ;;
            "rsers")
                echo -e "\033[1;32m"
                echo "<<==={RUNNING-SERVICES-STATUS}===>>"
                echo -e "\033[0m"  # Reset color
                systemctl list-units --type=service --state=running
                log_message "INFO" "Running services status checked."
                send_alert "RUNNING SERVICE STATUS SHOWN."
                ;;
            "fails")
                echo -e "\033[1;32m"
                echo "<<==={FAIL2BAN-STATUS}===>>"
                echo -e "\033[0m"  # Reset color
                sudo fail2ban-client status
                log_message "INFO" "Fail2ban status checked."
                send_alert "FAIL2BAN STATUS SHOWN."
                ;;
            "cpu")
                echo -e "\033[1;32m"
                echo "<<==={CPU-INFO}===>>"
                echo -e "\033[0m"  # Reset color
                lscpu
                log_message "INFO" "CPU information ."
                send_alert "CPU INFO SHOWN."
                ;;
            "short")
                echo -e "\033[1;32m"
                echo "<<==={SHROT-INFO}===>>"
                echo -e "\033[0m"  # Reset color
                inxi
                log_message "INFO" "INXI information ."
                send_alert "SHORT INFO SHOWN."
                ;;
            "pci")
                echo  -e "\033[1;32m"
                echo "<<==={PCI-INFO}===>>"
                echo -e "\033[0m"
                lspci
                log_message "INFO" "PCI information ."
                send_alert "PCI INFO SHOWN."
                ;; 
            "all")
                echo -e "\033[1;32m"
                echo "<<=========================>>"
                echo "  <<--ALL-SYSTEM-STATUS-->>"
                echo "<<=========================>>"
                echo -e "\033[0m"  # Reset color
                echo ""
                echo -e "\033[1;32m"
                echo "<<==={UFW-STATUS}===>>"
                echo -e "\033[0m"  # Reset color
                sudo ufw status verbose
                echo ""
                echo -e "\033[1;32m"
                echo "<<==={DISK-STATUS}===>>"
                echo -e "\033[0m"  # Reset color
                df -h
                echo ""
                echo -e "\033[1;32m"
                echo "<<==={RAM-STATUS}===>>"
                echo -e "\033[0m"  # Reset color
                free -h
                echo ""
                echo -e "\033[1;32m"
                echo "<<==={CPU-STATUS}===>>"
                echo -e "\033[0m"  # Reset color
                lscpu
                inxi
                echo ""
                echo -e "\033[1;32m"
                echo "<<==={UPTIME-STATUS}===>>"
                echo -e "\033[0m"  # Reset color
                uptime
                echo ""
                echo  -e "\033[1;32m"
                echo "<<==={PCI-INFO}===>>"
                echo -e "\033[0m"
                lspci
                echo ""
                echo -e "\033[1;32m"
                echo "<<==={SERVICES-STATUS}===>>"
                echo -e "\033[0m"  # Reset color
                systemctl list-units --type=service --state=running
                echo ""
                echo -e "\033[1;32m"
                echo "<<==={FAIL2BAN-STATUS}===>>"
                echo -e "\033[0m"  # Reset color
                sudo fail2ban-client status
                echo ""
                log_message "INFO" "ALL status is checked in once"
                send_alert "ALL SYS-STATUS IS SHOWN"
                ;;
            "help")
                echo -e "\033[1;32m" "\nCSS HELP (CSSH):"
                echo " 1. ls     - Show the available security options to start Tor."
                echo " 2. cd ..  - Return to the main menu."
                echo " 3. clear  - Clear the terminal."
                echo " 4. banner - Show the banner."
                echo ""
                echo -e "\033[1;31m"  # Red color
                echo ">> By pressing CTRL+C the whole script stops (BE CAREFULL)"
                echo -e "\033[0m"  # Reset color
                ;;
            "ls")
                echo -e "\033[1;32m" "\nCSS COMMANDS (CSSC):"
                echo " 1.  all   - Show all of above in once."
                echo " 2.  cpu   - Show the cpu information."
                echo " 3.  pci   - Show all hardware information in detail."
                echo " 4.  ufws  - Show the ufw status in verbose."
                echo " 5.  rams  - Show the ram/memory usage status."
                echo " 6.  rsers - Show the running services."
                echo " 7.  fails - Show the fail2ban status."
                echo " 9.  disks - Show the disk spaces in humab readable format."
                echo " 10. short - Show CPU, SPEED, KERNEL, UPTIME, MEMORY, STORAGE, etc. lot information. (RECOMMANDED)"
                echo -e "\033[0m"  # Reset color
                ;;
            "banner")
                display_css_welcome
                ;;
            "clear")
                clear  # Clear the terminal
                ;;
            "cd ..")
                return  # Exit the scan management section and go back to the main menu
                ;;
            *)
                echo "-->> Invalid Command. Please use show to see the commands."
                ;;
        esac

        # Save history to file
        history -a "$HISTORY_FILE"
    done
}

# Function to generate a detailed report
generate_report() {
    local current_section="LDRG"
    local report_file1="/tmp/linux_defender_new_report.txt"
    local report_file2="/tmp/linux_defender_log_report.txt"
    local log_file="/var/log/linux_defender.log"
    local format_option

    # Load history from file if it exists
    if [[ -f "$HISTORY_FILE" ]]; then
        history -r "$HISTORY_FILE"
    fi

    while true; do
        read -e -p " {LINUX-DEFENDER}-{${current_section}}-->> " option

        # Exit the loop if the user types 'exit'
        if [[ "$option" == "exit" ]]; then
            break
        fi

        # If the input is empty, continue to the next iteration
        if [[ -z "$option" ]]; then
            continue
        fi

        # Add the command to history
        history -s "$option"

        case $option in
            "generate")
                {
                    echo -e "\033[1;32m"
                    echo "<<==========================================>>"
                    echo "<<====={LINUX-DEFENDER-REPORT-GENERATOR}====>>"
                    echo "<<==========================================>>"
                    echo "Date: $(date)"
                    echo -e "\033[0m"
                    echo ""

                    echo -e "\033[1;32m"
                    echo "<<==={OS-DETAILS-START}===>>"
                    echo -e "\033[0m"
                    cat /etc/os-release
                    uname -r
                    uname -m
                    echo -e "\033[1;32m"
                    echo "<<==={OS-DETAILS-DONE}===>>"
                    echo -e "\033[0m"
                    echo ""

                    echo -e "\033[1;32m"
                    echo "<<============>>---====---<<=============>>"
                    echo "         <<--ALL-SYSTEM-STATUS-->>"
                    echo "<<============>>---====---<<=============>>"
                    echo -e "\033[0m"  # Reset color
                    echo ""
                    echo -e "\033[1;32m"
                    echo "<<==={UFW-STATUS}===>>"
                    echo -e "\033[0m"  # Reset color
                    sudo ufw status verbose
                    echo ""
                    echo -e "\033[1;32m"
                    echo "<<==={DISK-STATUS}===>>"
                    echo -e "\033[0m"  # Reset color
                    df -h
                    echo ""
                    echo -e "\033[1;32m"
                    echo "<<==={RAM-STATUS}===>>"
                    echo -e "\033[0m"  # Reset color
                    free -h
                    echo ""
                    echo -e "\033[1;32m"
                    echo "<<==={CPU-STATUS}===>>"
                    echo -e "\033[0m"  # Reset color
                    lscpu
                    inxi
                    echo ""
                    echo -e "\033[1;32m"
                    echo "<<==={UPTIME-STATUS}===>>"
                    echo -e "\033[0m"  # Reset color
                    uptime
                    echo ""
                    echo  -e "\033[1;32m"
                    echo "<<==={PCI-INFO}===>>"
                    echo -e "\033[0m"
                    lspci
                    echo ""
                    echo -e "\033[1;32m"
                    echo "<<==={SERVICES-STATUS}===>>"
                    echo -e "\033[0m"  # Reset color
                    systemctl list-units --type=service --state=running
                    echo ""

                    echo -e "\033[1;32m"
                    echo "<<==={FAIL2BAN-CHECK-START}===>>"
                    echo -e "\033[0m"
                    echo ""
                    sudo fail2ban-client status
                    echo -e "\033[1;32m"
                    echo "<<==={FAIL2BAN-CHECK-DONE}===>>"
                    echo -e "\033[0m"
                    echo ""                
                } > "$report_file1"

                log_message "INFO" ">> REPORT GENERATED $report_file1."
                echo -e "\033[1;32m"
                echo "> Report is here -> /tmp/linux_defender_new_report.txt"
                echo -e "\033[0m"
                send_alert "Linux Defender report generated. Check the attached report."
                ;;
            "oldlog")
                if [[ -f $log_file ]]; then
                    echo ">> GENERATING REPORT FROM -> $log_file"
                    echo -e "\033[1;32m"
                    echo "> Report is here -> /tmp/linux_defender_log_report.txt"
                    echo -e "\033[0m"
                    cat "$log_file" > "$report_file2"
                    log_message "INFO" "Report generated from old log file at $report_file2."
                    send_alert "Report generated from old log file. Check the attached report."
                    echo ""
                else
                    echo "Log file not found: $log_file"
                fi
                ;;
            "ls")
                echo -e "\033[1;32m" "\nREPORT GENERATOR COMMANDS (RGC):"
                echo " 1. generate - Generate a new report. (HARDWARE)"
                echo " 2. oldlog   - Generate a report from the old log file."
                echo -e "\033[0m"  # Reset color
                ;;
            "help")
                echo -e "\033[1;32m" "\nREPORT GENERATOR HELP (RGH):"
                echo " 1. ls     - Show the available security options to start Tor."
                echo " 2. cd ..  - Return to the main menu."
                echo " 3. clear  - Clear the terminal."
                echo " 4. banner - Show the banner."
                echo ""
                echo -e "\033[1;31m"  # Red color
                echo ">> By pressing CTRL+C the whole script stops (BE CAREFULL)"
                echo -e "\033[0m"  # Reset color
                ;;
            "cd ..")
                return  # Exit the report generation section and go back to the main menu
                ;;
            "clear")
                clear  # Clear the terminal
                ;;
            "banner")
                display_report_welcome
                ;;
            *)
                echo "-->> Invalid Command. Please use help to see the commands."
                ;;
        esac

        # Save history to file
        history -a "$HISTORY_FILE"
    done
}

# Function to check file integrity for security reason
check_integrity() {
    local current_section="CFI"

    # Load history from file if it exists
    if [[ -f "$HISTORY_FILE" ]]; then
        history -r "$HISTORY_FILE"
    fi

    while true; do
        read -e -p " {LINUX-DEFENDER}-{${current_section}}-->> " option

        # Exit the loop if the user types 'exit'
        if [[ "$option" == "exit" ]]; then
            break
        fi

        # If the input is empty, continue to the next iteration
        if [[ -z "$option" ]]; then
            continue
        fi

        # Add the command to history
        history -s "$option"

        case $option in
            "cfiv")
                echo -e "\033[1;32m"
                echo "                                  <<============>>---====---<<=============>>"
                echo "                                           <<--CFI-IN-VERBOSE-WAY-->>"
                echo "                                  <<============>>---====---<<=============>>"
                echo -e "\033[0m"  # Reset color
                log_message "INFO" "Checking file integrity in Verbose way."

                # Create a temporary file to capture output
                TEMP_OUTPUT=$(mktemp)

                # Open xterm and run the commands inside it
                xterm -hold -e bash -c "
                    echo 'INFO: Checking file integrity...'

                    if [[ ! -f $CHECKSUM_FILE ]]; then
                        echo 'INFO: Creating checksum file...'
                        find \"\${SCAN_DIRS[@]}\" -type f -exec sha256sum {} \\; > \"$CHECKSUM_FILE\"
                        send_alert 'Checksum file created.'
                    else
                        echo 'INFO: Verifying checksums...'
                        # Capture the output of sha256sum and save to temporary file
                        sha256sum -c \"$CHECKSUM_FILE\" 2>&1 | tee \"$TEMP_OUTPUT\"
                        if [[ \${PIPESTATUS[0]} -eq 0 ]]; then
                            send_alert 'File integrity check passed. All files are intact.'
                            echo 'INFO: File integrity check passed. All files are intact.'
                        else
                            send_alert 'File integrity check failed! Some files have been modified.'
                            echo 'WARNING: File integrity check failed! Some files have been modified.'
                        fi
                    fi
                " &

                # Wait for xterm to finish
                wait

                # Display mismatched files in the main terminal
                if [[ -f "$TEMP_OUTPUT" ]]; then
                    echo "Mismatched files:"
                    grep 'FAILED' "$TEMP_OUTPUT" | while IFS= read -r line; do
                        # Extract the filename from the line
                        filename=$(echo "$line" | awk '{print $1}')
                        echo -e "\e[31m$filename\e[0m"  # Display the filename in red
                    done
                fi

                # Clean up the temporary file
                rm "$TEMP_OUTPUT"
                ;;
            "cfin")
                    echo -e "\033[1;32m"
                    echo "                                      <<============>>---====---<<=============>>"
                    echo "                                               <<--CFI-IN-NORMAL-WAY-->>"
                    echo "                                      <<============>>---====---<<=============>>"
                    echo -e "\033[0m"  # Reset color
                    log_message "INFO" "Checking file integrity normal way."
                    if [[ ! -f $CHECKSUM_FILE ]]; then
                        log_message "INFO" "Creating checksum file..."
                        find "${SCAN_DIRS[@]}" -type f -exec sha256sum {} \; > $CHECKSUM_FILE
                        send_alert "Checksum file created."
                    else
                        log_message "INFO" "Verifying checksums..."
                        if sha256sum -c $CHECKSUM_FILE; then
                            send_alert "File integrity check passed. All files are intact."
                            log_message "INFO" "File integrity check passed. All files are intact."
                        else
                            send_alert "File integrity check failed! Some files have been modified."
                            log_message "WARNING" "File integrity check failed! Some files have been modified."
                        fi
                    fi
                    ;;
            "ls")
                echo -e "\033[1;32m" "\nCHECK FILE INTEGRITY COMMANDS (CFIC):"
                echo " 1. cfin   - Check File Integrity in normal way. (WITHOUT_COLOR)"
                echo " 2. cfiv   - Check File Integrity in verbose way. (WITH_COLOR)"
                echo -e "\033[0m"  # Reset color
                ;;
            "help")
                echo -e "\033[1;32m" "\nCHECK FILE INTEGRITY HELP (CFIH):"
                echo " 1. ls     - Show the available security options to start Tor."
                echo " 2. cd ..  - Return to the main menu."
                echo " 3. clear  - Clear the terminal."
                echo " 4. banner - Show the banner."
                echo ""
                echo -e "\033[1;31m"  # Red color
                echo ">> By pressing CTRL+C the whole script stops (BE CAREFULL)"
                echo -e "\033[0m"  # Reset color
                ;;
            "cd ..")
                return  # Exit the report generation section and go back to the main menu
                ;;
            "clear")
                clear  # Clear the terminal
                ;;
            "banner")
                display_cfi_welcome
                ;;
            *)
                echo "-->> Invalid Command. Please use help to see the commands."
                ;;
        esac

        # Save history to file
        history -a "$HISTORY_FILE"
    done
}

monitor_files() {
    local current_section="MONITOR"
    local MONITOR_DIRS=()
    local MONITOR_TOOL=""

    # Load history from file if it exists
    if [[ -f "$HISTORY_FILE" ]]; then
        history -r "$HISTORY_FILE"
    fi

    while true; do
        read -e -p " {LINUX-DEFENDER}-{${current_section}}-->> " option

        # Exit the loop if the user types 'exit'
        if [[ "$option" == "exit" ]]; then
            break
        fi

        # If the input is empty, continue to the next iteration
        if [[ -z "$option" ]]; then
            continue
        fi

        # Add the command to history
        history -s "$option"

        case $option in
            "iwait")
                echo -e "\033[1;3m"
                echo "<(:)===(IWAIT-MONITORING-STARTING)===(:)>"
                echo -e "\033[0m"
                MONITOR_TOOL="inotifywait"
                echo -e "\033[1;32m"
                echo "==> SPECIFY FOLDERS TO MONITOR (Type 'done' when finished):"
                echo -e "\033[0m"  # Reset color
                while true; do
                    read -p "=> Folder: " dir
                    if [[ "$dir" == "done" ]]; then
                        break
                    fi
                    if [[ -d "$dir" ]]; then
                        MONITOR_DIRS+=("$dir")
                    else
                        echo "-> Directory does not exist. Please enter a valid folder."
                    fi
                done

                if [[ ${#MONITOR_DIRS[@]} -gt 0 ]]; then
                    echo "=> Monitoring directories: ${MONITOR_DIRS[*]} using inotifywait"
                    if [[ -n "$DISPLAY" ]]; then
                        xterm -fa 'Monospace' -hold -e "bash -c 'inotifywait -m -r ${MONITOR_DIRS[*]}; exec bash'" &
                    else
                        echo "-> Error: DISPLAY environment variable is not set. Cannot open xterm."
                    fi
                else
                    echo "-> No directories specified. Please specify directories."
                fi
                ;;
            "iwatch")
                echo -e "\033[1;31m"
                echo "<(:)===(IWATCH-MONITORING-STARTING)===(:)>"
                echo -e "\033[0m"
                MONITOR_TOOL="inotifywatch"
                echo -e "\033[1;32m"
                echo "==> SPECIFY FOLDERS FOR MONITORING (Type 'done' when finished):"
                echo -e "\033[0m"  # Reset color
                while true; do
                    read -p "=> Folder: " dir
                    if [[ "$dir" == "done" ]]; then
                        break
                    fi
                    if [[ -d "$dir" ]]; then
                        MONITOR_DIRS+=("$dir")
                    else
                        echo "-> Directory does not exist. Please enter a valid folder."
                    fi
                done

                if [[ ${#MONITOR_DIRS[@]} -gt 0 ]]; then
                    echo "=> Monitoring directories: ${MONITOR_DIRS[*]} using inotifywatch"
                    if [[ -n "$DISPLAY" ]]; then
                        xterm -fa 'Monospace' -hold -e "bash -c 'inotifywatch -r -t 10 ${MONITOR_DIRS[*]}; exec bash'" &
                    else
                        echo "-> Error: DISPLAY environment variable is not set. Cannot open xterm."
                    fi
                else
                    echo "-> No directories specified. Please specify directories."
                fi
                ;;
            "help")
                echo -e "\033[1;32m" "\nMONITOR HELP (MONH):"
                echo " 1. ls     - List available tools"
                echo " 2. cd ..  - to return to the main menu."
                echo " 3. clear  - Clear the terminal"
                echo " 4. banner - Show the banner of MONITOR."
                echo -e "\033[0m"  # Reset color
                ;;
            "ls")
                echo -e "\033[1;32m" "\nMONITOR Options (MON0):"
                echo " 1. iwait - Start monitoring with inotifywait"
                echo " 2. iwatch - Start monitoring with inotifywatch"
                echo -e "\033[0m"  # Reset color
                ;;
            "clear")
                clear  # Clear the terminal
                ;;
            "cd ..")
                return  # Exit the monitoring section and go back to the main menu
                ;;
            "banner")
                display_monitor_welcome
                ;;
            *)
                echo -e "\033[1;32m"
                echo "-->> Invalid Command. Please use help to see the commands."
                echo -e "\033[0m"  # Reset color
                ;;
        esac

        # Save history to file
        history -a "$HISTORY_FILE"
    done
}

# Main function
main() {
    check_root
    display_banner1
    run_user_commands
}

# Run the main function
main "$@"
