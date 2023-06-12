#!/bin/bash

# Stop the currently running JAR file
echo "Stopping the currently running JAR file..."
PID=$(pgrep -f "spring-boot-my-springboot-app.jar")
if [ -z "$PID" ]; then
  echo "No running instance found."
else
  kill "$PID"
  echo "Stopped the running instance with PID: $PID"
fi

# Wait for the process to stop
sleep 5


