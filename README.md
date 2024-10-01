Project from course Docker for Java Developers- John Thompson • 500,000+ Enrollments Worldwide - Udemy: https://www.udemy.com/course/docker-for-java-developers/

# Run this project 
- Run the command ```mvn clean install```  in the project folder, or in Eclipse IDE, right-click on the project and select Run As > Maven Install to generate the .jar file.
- When I tried running the following command: ```docker build -t spring-boot-docker .``` I encountered the following error :
![image](https://github.com/user-attachments/assets/82639912-44c4-4e5f-9788-2670afc7f8d9)

- This issue occurred because CentOS Linux 8 reached its End of Life (EOL) on December 31st, 2021. Consequently, it no longer receives updates or support from the official CentOS project.
For fix this:
![image](https://github.com/user-attachments/assets/3478218d-9a0f-47bc-8acf-ae51ffe44e4b)

- Another problem is that the build is successful, but the default Java version doesn't run the application. Java 11 is required because the application is built for that version:
![image](https://github.com/user-attachments/assets/9c885bf7-2d3d-4f88-9041-6bb18f5dbe22)

- It is now okay to run the command to create image: ```docker build -t spring-boot-docker .``` 

- After this, run the following command to running container: ```docker run -d -p 8080:8080 spring-boot-docker.```

- Now we can test application: http://localhost:8080/
  ![image](https://github.com/user-attachments/assets/d626060e-340d-4f4d-a302-b10d1e4efd8e)


# Spring Boot Web Application
This repository has the project files for a tutorial series on Spring Boot available from by website at [Spring Framework Guru](https://springframework.guru)

## Checkout the full tutorial here!
[Spring Boot - making Spring Fun again!](https://springframework.guru/spring-boot-web-application-part-1-spring-initializr/)
