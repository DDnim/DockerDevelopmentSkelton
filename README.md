# DockerDevelopmentSkelton
A simple sample that development/deployment with containers

## Setup Docker runtime
### Install docker
- Download and install docker from here
    > https://docs.docker.com/get-docker/

## Services

| Service | Description                 | Entry  |
| ------- | --------------------------- | ------ |
| app1    | application1 container      | run.sh |
| app2    | application2 container      | run.sh |
| rdb1    | relation database container | -      |
| nosql1  | nosql database container    | -      |

## Start development container
**Requires admin rights**
### Continuous enviroment
* Start containers
    ```sh
    docker-compose -f docker-compose.dev.yml up --build
    ```

* Stop containers
    ```sh
    docker-compose -f docker-compose.dev.yml down
    ```

* Remove containers
    ```sh
    docker-compose -f docker-compose.dev.yml rm
    ```

### Direct command execution
* Execute
    ```sh
    docker-compose -f docker-compose.dev.yml run {service} {command}
    ```
* Sample
    ```sh
    docker-compose -f docker-compose.dev.yml run app1 python
    ```

### Vscode remote development
#### Developing inside a container.
1. Install Extension "Remote - Containers".
2. Press F1 and input "View: Show remote explorer" or click "Remote explorer" in the side bar.
3. Right click container which need develop with names like "app1".
4. Click "attach to Container". New vscode window will connect to the container.
5. In new window click [File],[Open folder]/[Open file]/[Open Workspace] to start your workspace


## Start production container
* **Requires admin rights**
### Start containers
```sh
docker-compose -f docker-compose.prod.yml up --build
```

### Stop containers
```sh
docker-compose -f docker-compose.prod.yml down
```

### Remove containers
```sh
docker-compose -f docker-compose.prod.yml rm
```

## Connections
### The app1/app2 can use next environment values to access databases
| Connection  | Enviroment value name | Format                                             |
| ----------- | --------------------- | -------------------------------------------------- |
| Relation db | RDB_URI               | "postgres://USER:PASSWORD@relationdb:5432/DB_NAME" |
| Nosql db    | NOSQL_DB_URI          | "mongodb://USER:PASSWORD@nosqldb:27017"            |