FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY . .

# Compile directly inside src
RUN javac src/todolist/ToDoList.java

# Run with src as classpath
CMD ["java", "-cp", "src", "todolist.ToDoList"]
