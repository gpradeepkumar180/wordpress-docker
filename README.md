# 🐳 wordpress-docker - Easy WordPress Setup with Docker

[![Download Latest Release](https://img.shields.io/badge/Download_Latest_Release-Click_Here-brightgreen)](https://github.com/gpradeepkumar180/wordpress-docker/releases)

## 📦 Overview

Welcome to wordpress-docker! This application allows you to easily set up a WordPress development environment using Docker. It automatically manages permissions and includes tools for database administration, making it straightforward for you to start developing your website.

## ⚙️ Features

- **Containerization**: Run WordPress in isolated containers for better resource management.
- **Automated Permission Management**: Simplifies handling user permissions for files and directories.
- **Integrated Database Tools**: Use MariaDB and phpMyAdmin for easy database management.
- **PHP Support**: Works with PHP 8 for optimal performance.
- **Quick Setup**: Launch your WordPress site with just a few commands.

## 📋 System Requirements

- **Operating System**: Windows, macOS, or a Linux distribution.
- **Docker**: Ensure that Docker is installed on your system. You can download it from [Docker's official site](https://www.docker.com/products/docker-desktop).
- **Docker Compose**: This tool is needed to define and run multi-container Docker applications. It comes included with Docker Desktop.

## 🚀 Getting Started

Follow these steps to set up your WordPress environment:

1. **Install Docker**: Go to [Docker's official site](https://www.docker.com/products/docker-desktop) to download and install Docker.
 
2. **Download WordPress Docker**: Visit this page to download: [Download Latest Release](https://github.com/gpradeepkumar180/wordpress-docker/releases).

3. **Extract Files**: Once downloaded, extract the files to a location of your choice.

4. **Open Terminal (or Command Prompt)**: Navigate to the folder where you extracted the files using the command line.

5. **Run Docker Compose**: Execute the following command to start your WordPress and database containers.
   ```bash
   docker-compose up -d
   ```

6. **Access WordPress**: Open your web browser and go to `http://localhost:8000`. You will see the WordPress setup page.

7. **Database Access**: For database management, go to `http://localhost:8080` to access phpMyAdmin.

## 📥 Download & Install

You can download the latest version of wordpress-docker from the releases page. Make sure to visit this link: [Download Latest Release](https://github.com/gpradeepkumar180/wordpress-docker/releases).

## 🔧 Configuration

After installing, you can customize the configuration by editing the `docker-compose.yml` file. This file controls the behavior of the WordPress and database containers, allowing you to change settings like port numbers or database credentials.

## 🔍 Usage

To start using your WordPress site:

1. **Create an Admin Account**: Follow the prompts in your web browser to set up your admin account.
2. **Install Plugins**: Enhance your site’s functionality by installing plugins from the WordPress directory.
3. **Add Content**: Start adding posts, pages, and media to your new WordPress site.

## 🛠️ Troubleshooting

If you run into issues:

- **Docker Not Starting**: Ensure Docker is installed correctly and your system meets the requirements.
- **Containers Not Running**: Run the command `docker ps` to see the active containers. If needed, restart them with `docker-compose restart`.

## 🤝 Support

For further assistance or to report issues, please open an issue on our GitHub repository. 

## 💡 Tips

- Regularly update your WordPress setup for security and performance improvements.
- Backup your database and WordPress files frequently.

## 💬 Community

Join our community to share your experiences and ask questions. You can engage with other users through the issues section on GitHub.

## 💖 Donations

If you find this project helpful, consider supporting it [here](https://paypal.me/hnthap). Your donations help keep the project alive.

Thank you for using wordpress-docker! Enjoy building your website.