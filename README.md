# MySQL Scanner via Tor (Anonymized Network Scan)

A simple Bash script designed to scan subnets for active MySQL services while routing all network traffic through the Tor network to ensure anonymity.

## Features

- **Automated Tor Routing:** Starts and stops the local Tor service automatically.
- **Proxied Scanning:** Uses `proxychains4` to force Nmap traffic through Tor proxies.
- **Targeted Discovery:** Scans full `/24` subnets specifically for Port 3306 (MySQL).
- **Auto-Cleanup:** Safely terminates the Tor routing service after completing the scan.

## Prerequisites

Before running the script, ensure you have the following packages installed:

- **Bash** (Linux environment)
- **Nmap** (Network exploration tool)
- **Tor** (Anonymizing overlay network)
- **Proxychains4** (Proxy wrapper)

You can install the dependencies on Debian/Ubuntu-based systems using:
```bash
sudo apt update && sudo apt install nmap tor proxychains4 -y
```

## Configuration

Ensure your `proxychains4` config file (`/etc/proxychains4.conf`) is properly configured to route traffic through the local Tor SOCKS proxy:
```text
socks4  127.0.0.1 9050
# or socks5 depending on your Tor setup
socks5  127.0.0.1 9050
```

## Usage

1. Clone this repository or download the script.
2. Make the script executable:
   ```bash
   chmod +x nmap-sql-script.sh
   ```
3. Run the script with root privileges (required for starting/stopping services and advanced Nmap scans):
   ```bash
   sudo ./nmap-sql-script.sh
   ```
4. Enter the target IP address or network range when prompted (e.g., `192.168.1.0`).

## Output

The scan results are automatically saved in the current working directory in a file named:
`MySQLscan`

## Author

- **Author:** Calofir Adrian
- **GitHub:** [calofir-adrian](https://github.com/calofir-adrian)
- **Tryhackme:** [calofir.adrian](https://tryhackme.com/p/calofir.adrian)
## Disclaimer

This tool is created for educational purposes and authorized security auditing only. Scanning networks without prior permission from the owner is strictly prohibited and illegal.
