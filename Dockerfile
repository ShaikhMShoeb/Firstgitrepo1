# Use official WordPress image
FROM wordpress:latest

# Custom change (for demo/verification)
RUN echo "CI/CD Deployment Successful" > /var/www/html/readme.txt
