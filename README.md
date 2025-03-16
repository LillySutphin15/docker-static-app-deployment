# Docker-static-app-deployment 

This is a local deployment to run server-side php scripts integrated with an nginx web server.

## Architecture

TBD

## Prerequisites

- Docker version (27.4.0, build bde2b89)+
- sh shell with typical tools and perl

## Testing Notes 

- Tested on Windows 11 Home
- Tested with Docker version 27.2.0, build bde2b89
- Tested with Git Bash

## Usage

1. Initialize the file structure and volumes.
```bash
chmod +x scripts/init.sh;
./scripts/init.sh;
```
2. some manual changes TB Documented

3. To up the compose stack.
    ```bash
    docker compose up -d
    ```
4. To down the compose stack:
    '''bash
    docker compose down;
    ```