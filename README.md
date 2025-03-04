[![Docker](https://github.com/declue/docker_ubuntu/actions/workflows/docker-publish.yml/badge.svg?branch=main)](https://github.com/declue/docker_ubuntu/actions/workflows/docker-publish.yml)

This is a **Ubuntu-based Docker container** optimized for use in **South Korea**.  
The following versions are supported:

- **16.04** → `ghcr.io/declue/docker_ubuntu:16.04`
- **18.04** → `ghcr.io/declue/docker_ubuntu:18.04`
- **20.04** → `ghcr.io/declue/docker_ubuntu:20.04`
- **22.04** → `ghcr.io/declue/docker_ubuntu:22.04`
- **24.04** → `ghcr.io/declue/docker_ubuntu:24.04`
- 
For detailed package information on each deployed image, please refer to:  
🔗 [Container Packages](https://github.com/declue/docker_ubuntu/pkgs/container/docker_ubuntu)

---

## 🚀 *Key Features**
This container is customized to **better support Korean environments**, ensuring seamless usability for developers in South Korea.

### **🛠 System Configuration**
✅ **Locale Set to Korean (`ko_KR.UTF-8`)** – Ensures proper encoding and language support.  
✅ **Korean Font Support (Nanum Fonts)** – Pre-installed `fonts-nanum` and `fonts-nanum-coding` for better text rendering.  
✅ **System Timezone Set to Korea (`Asia/Seoul`)** – Synchronizes system time with Korean Standard Time (KST).  

### **📦 Pre-Installed Essential Packages**
This container includes a range of **pre-installed tools** commonly used for development, debugging, and system monitoring:

| Category          | Installed Packages |
|------------------|-----------------|
| **System Utilities** | `vim`, `net-tools`, `iputils-ping`, `wget`, `curl`, `tree`, `jq`, `unzip`, `zip`, `htop` |
| **Language Support** | `language-pack-ko`, `fonts-nanum`, `fonts-nanum-coding` |
| **Network & Debugging** | `dnsutils`, `traceroute`|
| **Security & Certificate Management** | `software-properties-common`, `lsb-release`, `ca-certificates` |

---

## 📌 **Additional Features**
- Multi-platform support: **`linux/amd64`, `linux/arm64`, `linux/arm/v7`**
- Regular updates with the latest security patches.
- Optimized build process for reduced image size and better performance.
- Fully compatible with **Docker Buildx** for efficient multi-arch builds.

For more details, please check the **Dockerfile** in the repository.  

📄 **Reference:** [GitHub Repository](https://github.com/declue/docker_ubuntu)  

---

### **📢 Recommended Usage**
To pull the latest **Ubuntu 22.04 Korean-optimized image**, run:
```sh
docker pull ghcr.io/declue/docker_ubuntu:22.04
```
For other versions, simply replace `22.04` with your preferred version.

---
