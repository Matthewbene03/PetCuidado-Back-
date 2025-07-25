# Etapa 1: Build com Maven
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

# Copia apenas os arquivos necessários para resolver dependências
COPY PetCuidadoback/PetCuidado/pom.xml /app/
COPY PetCuidadoback/PetCuidado/src /app/src/

# Compila o projeto e gera o .jar (sem rodar os testes)
RUN mvn clean package -DskipTests

# Etapa 2: Runtime com JDK leve
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app

# Copia o .jar gerado na etapa de build
COPY --from=build /app/target/*.jar app.jar

# Expõe a porta da aplicação (ajuste se for diferente)
EXPOSE 8080

# Comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]

