# AutoPatch – Linux System Auto-Updater & Monitor

AutoPatch is a Linux-based automation tool designed to simplify routine system maintenance tasks such as updates, system health checks, and log management. Ideal for system admins, students, and DevOps learners, AutoPatch ensures your system remains secure and monitored — automatically.

---

## 🔧 Features

- ✅ **System Auto-Update**: Updates packages using apt
- 🩺 **System Health Check**: Checks CPU, RAM, disk, and active services
- 📄 **Log & Report Generation**: Stores logs in organized folders
- 📬 **Email Alert System**: Sends logs via email (with SMTP support)
- 🌐 **Web Dashboard (Flask-based)**: View logs and status reports in browser

---

## 📁 Project Structure

AutoPatch/
├── autopatch.sh # Main automation script
├── modules/ # Reusable bash modules
├── logs/ # Auto-generated logs
└── web/ # Flask-based web dashboard

---

## ⚙️ Installation

```bash
git clone https://github.com/RitikKTech/AutoPatch.git
cd AutoPatch
chmod +x autopatch.sh

Usage

./autopatch.sh

Follow on-screen options:

    1 → Update System

    2 → Health Check

    3 → Generate Report

    4 → Email Logs

Web Dashboard:

cd web/
python3 app.py

Then open: http://127.0.0.1:5000


Requirements

    Ubuntu/Debian OS
    bash, python3, pip
    Flask: pip install flask

👨‍💻 Author

Ritik Singh
GitHub: @RitikKTech
