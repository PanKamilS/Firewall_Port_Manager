
# 🔒 Firewall Port Manager

## Overview
**Firewall Port Manager** is a user-friendly PowerShell script designed to simplify the process of managing Windows Firewall rules for specific ports. Whether you need to block or unblock multiple ports with ease, this tool provides a convenient and efficient solution.

---

## Features
- 🔧 **Add Port Blocks**: Block one or multiple TCP ports in the Windows Firewall.
- 🔓 **Remove Port Blocks**: Unblock one or multiple TCP ports with a single command.
- 🛠️ **Interactive Menu**: Easy-to-use interface for selecting options and managing ports.
- 🚀 **Dynamic Input**: Supports multiple ports separated by commas (e.g., `80, 443, 8080`).

---

## How It Works
1. Run the script in PowerShell with administrative privileges.
2. Choose to either block or unblock ports.
3. Enter the desired port(s) separated by commas (e.g., `80, 443`).
4. The script will automatically validate and apply the specified changes.

---

## Installation
1. Download the script from this repository.
2. Open PowerShell as an administrator.
3. Run the script:
   ```powershell
   .\firewall.ps1
   ```

---

## Example Usage
- **Block ports 80 and 443**:
  ```plaintext
  Choose an option (1, 2, or 3): 1
  Enter the port numbers to block (separated by commas): 80, 443
  ```
- **Unblock port 8080**:
  ```plaintext
  Choose an option (1, 2, or 3): 2
  Enter the port numbers to unblock (separated by commas): 8080
  ```

---

## Why Use Firewall Port Manager?
- Save time by avoiding manual configuration in Windows Firewall.
- Reduce errors with built-in input validation.
- Quickly manage multiple ports in one step.

---

## Requirements
- Windows operating system with PowerShell 5.1 or later.
- Administrative privileges.

---

## Contribution
Feel free to contribute to this project! Open issues or submit pull requests to improve functionality or add new features.

---

## License
This project is licensed under the [MIT License](LICENSE).
