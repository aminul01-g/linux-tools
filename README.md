# 🧰 Linux Tools for AI Engineers

This repo contains essential Linux tools and shell scripts useful for AI engineers, machine learning developers, and data scientists working in Linux environments.

Whether you're formatting USB drives, setting up development environments, managing data storage, monitoring GPUs, or managing system resources — these tools help improve your productivity and workflow.

---

## 📁 Tools Included

### 🔌 usb_tools/
- `format_usb.sh`: Format USB drives with FAT32 and set a custom label.

### ⚙️ env_setup/
- `setup_dev_env.sh`: Install Python3, pip, virtualenv, and popular AI/ML packages.

### 💾 data_handling/
- `mount_external_drive.sh`: Mount external drives for data access.

### 📊 gpu_monitoring/
- `watch_gpu.sh`: Monitor GPU usage in real time (requires NVIDIA GPU and drivers).

### 🧠 process_management/
- `manage_swap.sh`: Add swap space to your system for large AI workloads.

---

## ✅ Requirements

- Linux (Ubuntu recommended)
- Basic command-line skills
- `sudo` access

---

## 📦 Usage

Clone this repo:

```bash
git clone https://github.com/yourusername/linux-tools.git
cd linux-tools
```

Run any script:

```bash
sudo bash usb_tools/format_usb.sh /dev/sdX LABEL
```

Replace `/dev/sdX` with your USB device and `LABEL` with the name you want to assign.

---

## ✨ Why This Repo?

Proficiency with Linux and command-line tools is essential for AI engineers who deploy and manage machine learning workflows and infrastructure. This repo shows practical skills in scripting, environment setup, resource management, and hardware utilization.

---

## 📜 License

MIT License
