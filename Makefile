# Build individual images
build-scala:
	docker build -t my-scala-app ./scala-backend

build-angular:
	docker build -t my-angular-app ./angular-frontend

# Build all
build-all: build-scala build-angular

# Run with docker-compose
up:
	docker-compose up -d

down:
	docker-compose down

# Rebuild and run
rebuild:
	docker-compose down
	docker-compose build --no-cache
	docker-compose up -d

# Logs
logs:
	docker-compose logs -f

# Clean up
clean:
	docker-compose down -v
	docker system prune -f