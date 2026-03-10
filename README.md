# QR Code Generator (Dockerized)

This project demonstrates how to containerize a Python application using Docker. The application generates a QR code from a provided URL and runs inside a secure Docker container.

## Features
- Generates a QR code from a provided URL
- Runs inside a Docker container
- Uses a lightweight Python base image
- Runs as a non-root user for better container security
- Automated Docker build using GitHub Actions
- Docker image published to DockerHub

---

## DockerHub Image

The Docker image for this project is available at:

https://hub.docker.com/r/geethikachowdary/qr-code-generator-app

You can pull the image using:

```
docker pull geethikachowdary/qr-code-generator-app
```

---

## GitHub Repository

Source code for this project:

https://github.com/ageethikachowdary1/qr-code-generator

---

## How to Build the Docker Image

Run the following command inside the project directory:

```
docker build -t qr-code-generator-app .
```

---

## How to Run the Container

Run the container in detached mode:

```
docker run -d --name qr-generator qr-code-generator-app
```

You can also pass a custom URL:

```
docker run -d --name qr-generator qr-code-generator-app --url http://www.njit.edu
```

---

## Check Container Logs

To verify that the application is running and the QR code was generated:

```
docker logs qr-generator
```

Example output:

```
QR Code generated and saved at qr_codes/github.com_kaw393939.png
```

---

## GitHub Actions

This project uses GitHub Actions to automatically build the Docker image whenever changes are pushed to the main branch. The workflow ensures that the Dockerfile builds successfully and helps maintain consistent builds.

---

## Reflection

During this assignment, I learned how to containerize a Python application using Docker and manage container images using DockerHub. I created a Dockerfile that packages the QR Code Generator application along with its dependencies. The container runs using a non-root user, which improves security by limiting potential vulnerabilities.

One challenge I encountered was configuring Git and connecting my local repository to GitHub using SSH authentication. After setting up the SSH key and linking my repository, I was able to push the project successfully. I also implemented a GitHub Actions workflow that automatically builds the Docker image when changes are pushed to the repository. This helped me understand how CI/CD pipelines automate builds and improve reliability.

Overall, this assignment helped me gain hands-on experience with Docker, DockerHub, GitHub, and automated workflows using GitHub Actions. It also demonstrated how containerization simplifies application deployment and ensures consistency across environments.
