# Kali + Tor

> use tools from Kali via Tor

## Examples

> `sh run_kali_tor.sh nc -vz owasp.org 80 443`

> `sh run_kali_tor.sh curl 'https://api.ipify.org?format=json'`

> `for IP in $(dig +short owasp.org | grep -E '^[.0-9]+$'); do echo "#=> $IP" && sh run_kali_tor.sh nmap -p 1-65535 -T4 -A -v "$IP" -oN "runtime/nmap_${IP}.txt"; done`

> `sh run_kali_tor.sh ssh -o "StrictHostKeyChecking no" formulaone0@formulaone.labs.overthewire.org -p 2232`

> `sh run_kali_tor.sh /bin/bash`

