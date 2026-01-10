# Bước 1: Sử dụng JRE 8 nhỏ gọn để chạy ứng dụng
# Sử dụng Eclipse Temurin (thay thế cho openjdk cũ)
FROM eclipse-temurin:8-jre-alpine

# Bước 2: Tạo thư mục làm việc bên trong Container
WORKDIR /app

# Bước 3: Copy file .jar từ máy ngoài vào trong Container
# Lưu ý: Tên file phải khớp với file trong thư mục target của bạn
COPY target/*.jar app.jar

# Bước 4: Mở cổng 8080 (cổng mặc định của Spring Boot)
EXPOSE 8080

# Bước 5: Lệnh để chạy ứng dụng khi Container khởi động
ENTRYPOINT ["java", "-jar", "app.jar"]