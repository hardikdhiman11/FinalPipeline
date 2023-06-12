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

# Start the new JAR file
echo "Starting the new JAR file..."
java -jar /actions-runner/_work/FinalPipeline/FinalPipeline/target/spring-boot-my-springboot-app.jar &

echo "New JAR file started successfully."
