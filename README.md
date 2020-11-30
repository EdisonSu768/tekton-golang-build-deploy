# tekton-golang-build-deploy

## Description

tekton pipeline for golang building and push to docker hub, image will push to my personal docker hub repo called golang-http-server

### How to use

- Please install tekton first, then you need create secret through tekton-dashboard UI and patch into default serviceAccount for docker push task.

- Also, you need a running sonarqube server listen on 9000 port.

- You need pay attontion to `-o $(workspaces.source.path)` in golang-build task.

- `insecure_registry` params is required.
