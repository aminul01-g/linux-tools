# 📘 Basic Linux Command-Line Skills for AI Engineers

Mastering the Linux command-line is essential for AI engineers who deal with environments, data, and system tools. Here’s a practical reference.

---

## 🔍 1. Navigating Files and Directories

```bash
pwd         # Print current working directory
ls          # List files in current directory
ls -l       # Long listing format
cd dir/     # Change into a directory
cd ..       # Move up one directory
mkdir dir/  # Create a directory
rm file     # Remove file
rm -r dir/  # Remove directory recursively
```

---

## 📂 2. File Operations

```bash
cp source dest          # Copy file/directory
mv source dest          # Move or rename file/directory
touch file.txt          # Create an empty file
cat file.txt            # Print file contents
nano file.txt           # Edit file in terminal (or use vim if you're comfortable)
```

---

## 🔧 3. Disk and USB Handling

```bash
df -h                  # Show disk space usage
lsblk                  # List block devices (USB, HDD, SSD)
mount /dev/sdX1 /mnt   # Mount device manually
umount /dev/sdX1       # Unmount device
sudo fdisk /dev/sdX    # Partition a USB or disk
mkfs.vfat /dev/sdX1    # Format to FAT32
```

---

## 🧠 4. Process and Resource Management

```bash
top                    # View real-time processes
htop                   # Better alternative to top (needs install)
ps aux | grep python   # Search running Python processes
kill PID               # Kill process by PID
free -h                # Check RAM and swap usage
```

---

## 🚀 5. Python and Virtual Environment Setup

```bash
python3 --version
pip3 install package-name
python3 -m venv venv-name
source venv-name/bin/activate
deactivate
```

---

## 📦 6. Package Management

```bash
sudo apt update        # Update package list
sudo apt install name  # Install package
sudo apt remove name   # Remove package
```

---

## 🧪 7. Working with Scripts

```bash
chmod +x script.sh     # Make script executable
./script.sh            # Run the script
bash script.sh         # Run script using bash
```

---

## 📁 8. Compression and Archives

```bash
tar -czf archive.tar.gz folder/
tar -xzf archive.tar.gz
zip -r archive.zip folder/
unzip archive.zip
```

---

## 🌐 9. Networking Tools

```bash
ping google.com        # Test internet connection
wget URL               # Download file from URL
curl URL               # Fetch URL content
```
