# Project Setup

## Recommended Setup
This setup is ideal for launching WordPress with only the `wp-content` backup and a database dump.

### Project Structure

Your project should follow this structure:

```
. 
├── wp-content 
│ ├── languages 
│ ├── plugins 
│ ├── themes 
│ └── uploads 
├── dump.sql 
├── create_admin_user.sql 
├── docker-compose.yml 
└── README.md
```

- **`wp-content/`**: Contains all WordPress content, including plugins, themes, uploads, and languages.
- **`dump.sql`**: Database dump file for initializing the database.
- **`create_admin_user.sql`**: SQL script to create the initial admin user.
- **`docker-compose.yml`**: Docker Compose file for configuring and running the project.
- **`README.md`**: Project documentation.

## Steps

1. Copy `.env.example` to `.env`:
   ```bash
   cp .env.example .env
   ```

2. Modify the default values in .env as needed.

3. Open create_admin_user.sql and update the admin access values.

## Running the Project

### To start the project with verbose:
```bash
docker compose up
```

### To start in detached mode:

```bash
docker compose up -d
```

### Database Import

The SQL import will only run the first time the project starts, if the database is empty. If data exists, remove the volume with:

```bash
docker compose down -v
```

## Accessing the Application

Open the configured domain in .env (e.g.: http://localhost)

To access phpMyAdmin, go to http://localhost:8082. Use the credentials from .env (DB_USER and DB_ROOT_PASSWORD).