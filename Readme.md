# A simple dockerized CrewAI application
before running this application please create an app directory in the root of this repo. Once done your repo should look like this:

* app
* .gitignore
* docker-compose.yml
* Dockerfile
* ReadMe
* requirements.txt

## Build and run

### Build the Docker container:
```bash
docker-compose build
```
### Run the container:
```bash
docker-compose up
```
### Access the container shell (optional):
```bash
docker exec -it crewai-crewai-1 bash
```

## Start Developing
Inside the container shell, initialize a CrewAI app (if you haven't already):

```bash
crewai create crew my_app
```
This will create a new app folder inside `/app` (or wherever your app directory is).

Modify the app files on your host machine (e.g., app/my_app) and restart the container to apply changes:

```bash
docker-compose restart
```
If live updates are important, you can run a development server with automatic reload:

```bash
crewai run --reload
```
With `--reload`, any changes you make on your host machine will automatically reflect in the running app.

