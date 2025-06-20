**CI/CD Pipeline (GitHub Actions)**
On every push to the main branch:

The pipeline runs unit tests.

Builds the Maven project.

Creates a Docker image.

Pushes the Docker image to Docker Hub.

Check the workflow file under .github/workflows/ci-cd.yml.

**Docker Hub Image**
Docker Hub Repository Link
https://hub.docker.com/r/poojithakasireddy/devops-ci-cd-java-app
