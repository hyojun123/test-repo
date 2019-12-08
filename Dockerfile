# Start with a base image containing Java runtime
FROM java:8
# Add Author info
LABEL maintainer="chlgkwk123@nate.com"

# Add a volume to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java","-jar", "./build/libs/demo-0.0.1.jar"]
