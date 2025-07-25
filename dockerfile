# Etapa 1: build
FROM maven:3.8.6-openjdk-17 AS build
WORKDIR /app

# Copia o projeto (tudo) para dentro do container
COPY . .

# Compila o projeto e gera o .jar
RUN mvn clean package -DskipTests

# Etapa 2: runtime
FROM openjdk:17-jdk-slim
WORKDIR /app

# Copia o .jar gerado na etapa anterior
COPY --from=build /app/target/*.jar app.jar

# Expõe a porta usada pelo Spring Boot (default 8080)
EXPOSE 8080

# Comando para iniciar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
