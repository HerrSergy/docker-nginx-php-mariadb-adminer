# Template PHP-Nginx-MariaDB-Docker

## Content Table

[1. Deploy](#1-deploy)

* [1.1. Environmental Variables](#11-environmental-variables)
* [1.2. Docker](#12-docker)

[2. Features](#2-Features)

[3. Folder structure](#3-folder-structure)

-------------------------------------------------------------------------

## 1. Deploy

### 1.1. Environmental Variables

There is a .env.example which is used for connecting to the database.

### 1.2. Docker

```
docker compose -f "docker-compose.yml" up -d --build
```

## 2. Features

- [Deploy with Docker](https://docs.docker.com/get-started/overview/)
- [NGINX](https://nginx.org/en/docs/)
- [PHP](https://www.php.net/docs.php)
- [MariaDB](https://dev.mysql.com/doc/refman/8.0/en/)
- [Adminer](https://www.adminer.org)

## 3. Folder structure

```
.
├── .vscode
│   └── launch.json
├── LICENSE
├── README.md
├── .env.example
├── .gitignore
├── config
│   ├── nginx.conf
│   ├── php.ini
│   └── xdebug.ini
└── public
    └── index.php
```