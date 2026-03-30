# Apache Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
sjdev06@ubuntu-server:~/Apache$ ./01-identify.sh
================================================================================
                   Apache AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       sjdev06
Home Directory:     /home/sjdev06
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Wed Mar 29 14:30:00 UTC 2023
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```
---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
sjdev06@ubuntu-server:~/Apache$ ./02-packages.sh
================================================================================
                   Apache AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: apache2 is INSTALLED on this Ubuntu 22.04.3 LTS system.
Version: 2.4.52-1ubuntu4.1
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Apache: A free and open-source cross-platform web server software.
 - Linux: An open-source operating system.
 - MySQL: An open-source relational database management system.
 - PHP: A server-side scripting language.
================================================================================
```
---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
sjdev06@ubuntu-server:~/Apache$ ./03-auditor.sh
================================================================================
/etc exists
Size: 148K
Permissions: 755
Owner: root
--------------------------------------------------------------------------------
/var/log exists
Size: 148K
Permissions: 755
Owner: root
--------------------------------------------------------------------------------
/var/www exists
Size: 4.0K
Permissions: 755
Owner: root
--------------------------------------------------------------------------------
/usr/local/apache2 exists
Size: 4.0K
Permissions: 755
Owner: root
--------------------------------------------------------------------------------
/etc/apache2 exists
Size: 4.0K
Permissions: 755
Owner: root
================================================================================
```
---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
sjdev06@ubuntu-server:~/Apache$ ./04-logs.sh /var/log/syslog error
Searching for keyword 'error' in log file '/var/log/syslog':
Found 10 occurrences of keyword 'error'.
/var/log/syslog:10:Mar 29 14:25:01 ubuntu-server systemd[1]: Failed to start Service.
/var/log/syslog:15:Mar 29 14:25:02 ubuntu-server systemd[1]: Failed to start Service.
/var/log/syslog:20:Mar 29 14:25:03 ubuntu-server systemd[1]: Failed to start Service.
/var/log/syslog:25:Mar 29 14:25:04 ubuntu-server systemd[1]: Failed to start Service.
/var/log/syslog:30:Mar 29 14:25:05 ubuntu-server systemd[1]: Failed to start Service.
```
---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
sjdev06@ubuntu-server:~/Apache$ ./05-manifesto.sh
What is your name? John Doe
What is your favorite open-source project? Apache
Why do you love open-source software? Because it's free and open
My name is John Doe, and I love the Apache project because Because it's free and open. I believe in the power of open-source software to bring people together and create something amazing.
```