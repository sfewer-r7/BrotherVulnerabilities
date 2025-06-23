# Multiple Brother Devices: Multiple Vulnerabilities

## Overview
[Rapid7](https://www.rapid7.com/) conducted a zero-day research project into multifunction printers (MFP) from [Brother Industries, Ltd](https://global.brother/en). This research resulted in the discovery of eight new vulnerabilities. Some or all of these vulnerabilities have been identified as affecting 689 models across Brother’s range of printer, scanner, and label maker devices. Additionally, 46 printer models from FUJIFILM Business Innovation, 5 printer models from Ricoh, and 2 printer models from Toshiba Tec Corporation are also affected by some or all of these vulnerabilities. In total, 742 models across 4 vendors are affected.

A summary of the eight vulnerabilities is shown below:

| CVE | Description | Affected Service | CVSS |
|---|---|---|---|
| [CVE-2024-51977](CVE-2024-51977.rb) | An unauthenticated attacker can leak sensitive information. | HTTP (Port 80), HTTPS (Port 443), IPP (Port 631) | [5.3 (Medium)](https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N) |
| [CVE-2024-51978](CVE-2024-51978.rb) | An unauthenticated attacker can generate the device's default administrator password. | HTTP (Port 80), HTTPS (Port 443), IPP (Port 631) | [9.8 (Critical)](https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H) |
| [CVE-2024-51979](CVE-2024-51979.rb) | An authenticated attacker can trigger a stack based buffer overflow. | HTTP (Port 80), HTTPS (Port 443), IPP (Port 631) | [7.2 (High)](https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H) |
| [CVE-2024-51980](CVE-2024-51980.rb) | An unauthenticated attacker can force the device to open a TCP connection. | Web Services over HTTP (Port 80) | [5.3 (Medium)](https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N) |
| [CVE-2024-51981](CVE-2024-51981.rb) | An unauthenticated attacker can force the device to perform an arbitrary HTTP request. | Web Services over HTTP (Port 80) | [5.3 (Medium)](https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N) |
| [CVE-2024-51982](CVE-2024-51982.rb) | An unauthenticated attacker can crash the device. | PJL (Port 9100) | [7.5 (High)](https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H) |
| [CVE-2024-51983](CVE-2024-51983.rb) | An unauthenticated attacker can crash the device. | Web Services over HTTP (Port 80) | [7.5 (High)](https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H) |
| CVE-2024-51984 | An authenticated attacker can disclose the password of a configured external service. | LDAP, FTP | [6.8 (Medium)](https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:H/UI:N/S:C/C:H/I:N/A:N) |

## Technical Analysis
A detailed technical analysis of these vulnerabilities can be found in Rapid7's white paper ["Print Scan Hacks: Identifying multiple vulnerabilities across multiple Brother devices"](https://www.rapid7.com/globalassets/_pdfs/research/XXX.pdf).

The accompanying proof of concept source code for the white paper can be found [here](https://github.com/sfewer-r7/BrotherVulnerabilities).

## Credit
These vulnerabilities were discovered by Stephen Fewer, Principal Security Researcher at Rapid7 and are being disclosed in accordance with Rapid7's [vulnerability disclosure policy](https://www.rapid7.com/security/disclosure/).