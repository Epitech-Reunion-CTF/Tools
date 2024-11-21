# CTF Challenge Writeup

## Challenge Overview
In this challenge, you need to use a combination of tools including Nmap, Gobuster, and Steghide to find hidden information and extract the final flag.

## Steps to Solve the Challenge

### Step 1: Scan the IP with Nmap
First, you need to scan the target IP address to find open ports. Use Nmap to perform this scan.

```bash
nmap -sV <target-ip>
```

### Step 2: Access the Web Server on Port 4242
http://<target-ip>:4242

### Step 3: Use Gobuster to Find Hidden Directories

```bash
gobuster dir -u http://<target-ip>:4242 -w /usr/share/wordlists/dirb/common.txt
```

### Step 4: Access the Hidden Directory
http://<target-ip>:4242/assets

### Step 5: Download the Image and Extract the Flag
```bash
steghide extract -sf leo.jpg
```