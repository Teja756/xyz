FROM openjdk:11-jre-slim
ADD Calculator.class /
CMD ["java","Calculator"]
