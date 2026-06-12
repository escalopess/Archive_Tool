```markdown
# Archive Tool 📦

A lightweight and efficient Bash script designed to automate the backup, compression, and maintenance of log files on Linux systems.

## 🚀 Features

* **Automated Tarball Compression:** Compresses all files within the target directory into a `.tar.gz` archive using maximum compression.
* **Smart Timestamping:** Generates unique archive filenames using a precise timestamp format (`YYYYMMDD_HHMMSS`) to prevent overwriting previous backups.
* **Automatic Directory Management:** Checks for the existence of the destination folder (`/home/ubuntu/archived_logs`) and creates it automatically if missing.
* **Centralized Activity Logging:** Appends a success message with the exact timestamp and source directory to a master log file (`logs_backups.txt`).
* **Storage Space Optimization:** Automatically deletes the original source files after a successful archive creation to free up disk space.

> ⚠️ **IMPORTANT NOTE:** This script uses the `--remove-files` flag with `tar`. This means **it will delete the original files** from the source directory once they are safely compressed inside the archive.

## 🛠️ Requirements

* Linux-based Operating System (Ubuntu/Debian recommended).
* **Bash** shell interpreter.
* Write permissions for the destination path `/home/ubuntu/archived_logs`.

## 📦 Installation and Usage

### 1. Clone the repository
Navigate to your project folder (`Archive_Tool`) or clone it wherever you need it:
```bash
git clone [https://github.com/escalopess/Archive_Tool.git](https://github.com/escalopess/Archive_Tool.git)
cd Archive_Tool
