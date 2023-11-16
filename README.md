# Laravel Octane - Swoole - Postgres 

## **Dependencies**

- [docker](https://www.docker.com)
- [docker-compose](https://docs.docker.com/compose/install)

## Installation

### Copy environment variables

- `cp .env.example .env`

### Build Docker

- `docker-compose build`

### Install application dependencies

- `docker-compose up -d`
- `docker-compose exec app npm install`
- `docker-compose exec app composer install`

### Restart containers

- `docker-compose down`
- `docker-compose up -d`

## Accessing the application

- [localhost:8000](http://localhost:8000)
