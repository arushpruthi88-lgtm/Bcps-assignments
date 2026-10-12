# Lab 3: Basic system configuration and networking commands using CLI

## Aim
To demonstrate basic system configuration and networking commands using the Command Line Interface.

## A. System configuration commands (Windows CMD)
| Command | Purpose |
|---|---|
| `hostname` | Shows the computer name |
| `whoami` | Shows the current logged-in user |
| `ver` | Shows the Windows version |
| `systeminfo` | Full system details (OS, RAM, processor, hotfixes) |
| `systeminfo \| findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type"` | Only the OS name, version and architecture |
| `date /t` and `time /t` | Current date and time |
| `set` | Lists all environment variables |
| `echo %PATH%` | Shows the PATH variable |
| `tasklist` | Lists running processes |
| `taskkill /PID <pid> /F` | Kills a process |
| `wmic cpu get name` | Processor name (use `Get-CimInstance Win32_Processor` in PowerShell on newer Windows) |
| `wmic logicaldisk get caption,size,freespace` | Disk drives and free space |
| `cls` | Clears the screen |
| `help` | Lists all CMD commands |

## B. Networking commands
| Command | Purpose |
|---|---|
| `ipconfig` | Basic IP configuration |
| `ipconfig /all` | Detailed configuration (MAC, DNS, DHCP) |
| `ping 127.0.0.1` | Tests the local TCP/IP stack (loopback) |
| `ping google.com` | Tests connectivity and DNS resolution |
| `tracert google.com` | Shows the route (hops) to a host |
| `nslookup google.com` | DNS lookup, returns the IP address of a domain |
| `netstat -an` | Active connections and listening ports |
| `getmac` | Shows the MAC address |
| `arp -a` | ARP cache (IP to MAC mapping) |
| `ipconfig /flushdns` | Clears the DNS cache |
| `ipconfig /release` and `ipconfig /renew` | Releases and renews the DHCP address |
| `route print` | Shows the routing table |
| `netsh wlan show profiles` | Saved Wi-Fi profiles |

## Procedure
1. Press `Win + R`, type `cmd` and press Enter.
2. Run each command above one by one and take a screenshot of the output.
3. Write down the observed values in the table below.

| Item | Observed value (fill from your system) |
|---|---|
| Computer name | |
| User name | |
| OS name / version | |
| IPv4 address | |
| Subnet mask | |
| Default gateway | |
| MAC address | |
| DNS server | |
| Ping reply time to google.com | |

## Linux equivalents
`hostname`, `whoami`, `uname -a`, `lscpu`, `free -h`, `df -h`, `ip a` (or `ifconfig`), `ping -c 4 google.com`, `traceroute google.com`, `nslookup google.com`, `ss -tuln`, `ip neigh`.

## Result
Basic system configuration details and network information were displayed and verified using CLI commands.
