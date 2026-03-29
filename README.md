# OSS Audit  Linux Kernel

**Student Name:** Rudranarayan Pattnaik

**Roll Number:** 24BHI10020

**Course:** Open Source Software (NGMC)  

**Chosen Software:** Linux Kernel

---

## What This Repository Is

This is my capstone project for the OSS course. I picked the Linux kernel because it's
literally the foundation everything else runs on  your phone, your server, this very
assignment submission system probably runs on it somewhere.

The repo contains five shell scripts I wrote and tested on Linux, plus this README.

---

## Scripts

### 1. `system_identity.sh`  System Identity Report
Displays a welcome-screen style summary of the current Linux system: kernel version,
logged-in user, uptime, distro name, date, and a note about the GPL v2 license that
covers the kernel itself.

**Concepts used:** variables, `echo`, command substitution `$()`

---

### 2. `package_inspector.sh`  FOSS Package Inspector
Checks whether a given package is installed, pulls its version and license info, and
prints a short philosophy note about it using a `case` statement.

**Concepts used:** `if-then-else`, `case`, `rpm -qi` / `dpkg -l`, `grep`

---

### 3. `disk_permission_auditor.sh`  Disk and Permission Auditor
Loops through key system directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`)
and reports the size and permissions of each. Also checks for the Linux kernel's config
directory.

**Concepts used:** `for` loop, `du`, `ls -ld`, `awk`

---

### 4. `log_analyzer.sh`  Log File Analyzer
Reads a log file line by line, counts how many lines contain a given keyword (default:
`error`), and prints the last 5 matching lines as a summary.

**Concepts used:** `while read` loop, `if-then`, counter variables, `$1` arguments

---

### 5. `manifesto_generator.sh`  Open Source Manifesto Generator
Asks you three questions interactively and generates a short personal open-source
philosophy statement, saved to a `.txt` file.

**Concepts used:** `read`, string concatenation, file redirection `>`, `date`

---

## How to Run

**Clone the repo:**
```bash
git clone https://github.com/[yourusername]/oss-audit-[rollnumber].git
cd oss-audit-[rollnumber]
```

**Make scripts executable:**
```bash
chmod +x *.sh
```

**Run each script:**
```bash
./system_identity.sh
./package_inspector.sh
./disk_permission_auditor.sh
./log_analyzer.sh /var/log/syslog error
./manifesto_generator.sh
```

---

## Dependencies

- A Linux system (tested on Ubuntu 22.04 / any Debian-based distro)
- Bash 4.0+
- Standard GNU coreutils (`awk`, `du`, `df`, `grep`, `uname`)  all pre-installed on any Linux system
- For `package_inspector.sh`: either `rpm` (RHEL/Fedora) or `dpkg` (Debian/Ubuntu)

---

## Notes

- Script 4 takes the log file path as a command-line argument. Run it against any real log file under `/var/log/`.
- All scripts are commented throughout  every non-obvious line explains itself.
- Tested on a local Ubuntu VM.
