#Stage 1: Build Stage
FROM python:alpine as builder

# Set the working directory in the builder stage
WORKDIR /app

# Copy the entire content of the current directory into the builder stage
COPY . .

# Install Flask in the builder stage
RUN pip install Flask

# Stage 2: Production Stage
FROM python:alpine

# Set the working directory in the production stage
WORKDIR /app

# Copy the content from the builder stage to the production stage
COPY --from=builder /app /app
EXPOSE 80
# Specify the default command to run when the container starts
CMD ["python", "app.py"]
