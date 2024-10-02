# Odoo Docker Deployment

This project provides a complete solution for deploying Odoo using Docker, Nginx, Cloudflare Tunnel, and PostgresSQL.

## Project Structure

- **Odoo**: The main Odoo service running on Docker.
- **PostgreSQL**: The database service used by Odoo.
- **Nginx**: The reverse proxy server to manage and optimize traffic.
- **Cloudflare Tunnel**: Provides secure tunnels to access the Odoo service over the internet.

## Folder Structure

```bash
└── source
    ├── config
    │   └── odoo.conf        # Odoo configuration file
    ├── docker-compose.yml    # Docker Compose configuration
    ├── Dockerfile            # Odoo Docker configuration
    ├── dump.sql              # PostgreSQL database dump
    ├── requirements.txt      # Python dependencies for Odoo
    ├── nginx
    │   ├── default.conf      # Nginx configuration
    │   └── Dockerfile.dev    # Nginx Docker development configuration
    └── ngrok.yml             # Ngrok configuration
```

## Setup Environment Variables

In the `/config/odoo.conf` file, you can set the environment variables for the Odoo service. The following are the default environment variables:

```conf
[options]
db_port = 5432
db_user = <db_user>
db_password = <db_password>
db_name = <db_name>
admin_passwd = <admin_passwd>
addons_path = /mnt/extra-addons
```

In the 'docker-compose.yml' file, you can set the environment variables for the Odoo service. The following are the default environment variables:

```yaml
environment:
    - HOST=mydb
    - USER=<db_user>
    - PASSWORD=<db_password>
```

## Usage

To start the Odoo service, run the following command:

```bash
docker-compose up -d
```


## Extra points
Cloudflare Tunnel is a service that provides secure tunnels to access the Odoo service over the internet. making it accessible from the internet without needing to open or NAT ports on your VPS. This is especially useful when you want to expose services behind firewalls or NAT restrictions.

## Author

- [TaiDuongRepo](https://github.com/TaiDuongRepo)