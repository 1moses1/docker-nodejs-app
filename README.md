# 📦 Dockerized Node.js Application

This project demonstrates containerizing a simple Node.js web application using **Docker** and **Docker Compose**.

## ✅ It includes:
* A basic **Express.js** web server.
* A **Dockerfile** to containerize the app.
* **Docker Compose** setup for running and scaling multiple replicas of the app.

## 📂 Repository Structure

```
docker-nodejs-app/
├── app/
│   └── index.js              # Node.js application source code
├── nginx_conf/
│   └── default.conf          # (Optional) Nginx reverse proxy configuration (not part of main scope)
├── Dockerfile                # Instructions to build the app container
├── docker-compose.yml        # Define Node.js app services and scaling
├── docker-compose.proxy.yml  # (Optional) Define Nginx reverse proxy stack
├── package.json              # Node.js dependencies
└── README.md                 # Project documentation
```

## 🚀 Getting Started

These instructions will help you set up and run the app inside a Docker environment.

### 1. Clone the Repository

```bash
git clone https://github.com/1moses1/docker-nodejs-app.git
cd docker-nodejs-app
```

### 2. Build and Run the Application Using Docker

**Build the Docker Image**

```bash
docker build -t nodejs-app .
```

**Run the Container**

```bash
docker run -d -p 5000:5000 nodejs-app
```

Then open your browser and visit:

```
http://localhost:5000
```

You should see:

```
Hello from a Dockerized Node.js App deployed via Portainer + GitHub!
```

### 3. Scale the Application Using Docker Compose

**Run with Docker Compose**

```bash
docker-compose up -d
```

This will:
* Build the app.
* Launch **3 replicas** of the Node.js app as defined in `docker-compose.yml`.

### 4. Access the Application

Since all replicas internally bind to port 5000, you can access the app via:

```
http://localhost:5000
```

Docker Compose will handle internal balancing across the replicas (without external load balancing).

## 📚 Project Details

| Item | Description |
|------|-------------|
| Language | Node.js (Express) |
| Containerization | Docker |
| Scaling | Docker Compose |
| Deployment Orchestration (UI) | Portainer (for GitOps setups) |
| Documentation | Notion Documentation |

## 🔗 Related Links
* **Docker Official Documentation**: https://docs.docker.com/
* **Docker Compose Documentation**: https://docs.docker.com/compose/
* **Portainer (Optional UI Tool)**: https://www.portainer.io/

## ✍️ Author
Moise Iradukunda Ingabire
Irembo DevOps Internship Program
