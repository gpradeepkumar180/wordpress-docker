# WordPress Development Environment with Docker

A containerized WordPress development setup using Docker Compose, featuring automated permission management and integrated database administration tools.

## 🚀 Features

- **Multi-container architecture** with WordPress, MariaDB, and phpMyAdmin
- **Automated file permission handling** for WordPress uploads and plugins
- **Environment-based configuration** for secure credential management
- **Database initialization** support with SQL dump integration
- **Development-optimized** with accessible local ports and volume mounting

## 🛠 Technical Stack

- **WordPress**: PHP 8.2 with Apache
- **Database**: MariaDB 12.0.2
- **Containerization**: Docker & Docker Compose
- **Web Server**: Apache HTTP Server

### Development Tools
- **phpMyAdmin**: Database administration interface (optional)

## 📋 Prerequisites

- Docker Engine 20.10+
- Docker Compose 2.0+
- At least 2GB available RAM

## ⚡ Quick Start

1. **Clone and navigate to project**
   ```bash
   git clone https://github.com/hnthap/wordpress-docker
   cd wordpress-docker
   ```

2. **Configure environment variables**
   ```bash
   cp .env.example .env
   # .env.example uses simple passwords suitable for development.
   # Change passwords in .env for production.
   ```

3. **Launch the application**
   ```bash
   docker-compose up -d
   ```

4. **Access the services**
   - WordPress: http://localhost:8080
   - phpMyAdmin (optional): http://localhost:8180

## 🏗 Architecture Overview

```
┌─────────────┐    ┌──────────────┐    
│  WordPress  ├────┤    MariaDB   │    
│   :8080     │    │  (internal)  │    
└─────────────┘    └───────┬──────┘    
                           │
                   ┌───────┴──────┐
                   │  phpMyAdmin  │
                   │    :8180     │
                   │  (optional)  │
                   └──────────────┘
```

**Key Design Decisions:**

- **Minimal Dependencies**: WordPress only depends on the database service it actually needs
- **Custom Dockerfile**: Implements automated permission fixing to resolve common WordPress file access issues
- **Volume Mounting**: Persistent data storage for both WordPress content and database
- **Optional Tooling**: phpMyAdmin included as a development convenience, not a core dependency
- **Environment Isolation**: Sensitive configuration separated from codebase

## 📁 Project Structure

```
wordpress-docker/
├── docker-compose.yaml # Multi-service orchestration
├── Dockerfile          # Custom WordPress image with permission fixes
├── .env                # Environment configuration (not in repo)
├── .env.example        # Environment template file
├── wp-content/         # WordPress content (themes, plugins, uploads)
├── db_data/            # MariaDB data persistence
├── dump.sql            # Database initialization script (currently empty)
└── README.md           # This documentation
```

## 🔧 Configuration

### Environment Variables (.env)

```bash
WORDPRESS_DB_USER=root
WORDPRESS_DB_PASSWORD=password

MYSQL_USER=root
MYSQL_PASSWORD=password
MYSQL_ROOT_PASSWORD=password
```

### Custom Docker Image Features

The custom Dockerfile extends the official WordPress image with:

- **Permission Management**: Automatic file ownership and permission correction
- **Startup Script**: Custom entrypoint that ensures proper WordPress file access
- **Security Hardening**: Proper file permissions (755 for directories, 644 for files)

## 🔍 Development Workflow

1. **File Changes**: Edit files in `./wp-content/` - changes reflect immediately
2. **Database Access**: Use phpMyAdmin at localhost:8180 for database management (or connect directly to MariaDB)
3. **Logs**: Monitor with `docker-compose logs -f [service-name]`
4. **Restart Services**: `docker-compose restart [service-name]`

> **Note**: phpMyAdmin is included as a development convenience but can be removed from docker-compose.yaml if not needed, as WordPress doesn't depend on it.

## 🚀 Production Considerations

For production deployment, consider:

- [ ] Implement health checks for all services
- [ ] Add SSL/TLS termination
- [ ] Configure backup strategies for database and content
- [ ] Implement proper secrets management
- [ ] Add monitoring and logging solutions
- [ ] Set up reverse proxy with Nginx

## 🐛 Troubleshooting

### WordPress Installation Issues

- Verify database connection in wp-config.php
- Check file permissions in wp-content directory
- Ensure all containers are running: `docker-compose ps`

## 📚 Learning Resources

This project demonstrates proficiency in:
- **Containerization**: Custom Docker image creation and composition
- **Web Development**: PHP-based application deployment
- **Database Management**: Relational database integration
- **DevOps Practices**: Environment configuration and service orchestration

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b <feature-name>`
3. Commit changes: `git commit -m "Add feature description"`
4. Push to branch: `git push origin <feature-name>`
5. Submit a pull request

---

**Built with ❤️ using Docker, WordPress, and industry-standard containerization practices**
