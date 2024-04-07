# Docker Compose for Generating Sample Data with Faker
This Docker Compose configuration helps generate sample data using Python Faker library and exports it to a CSV file. The sample data includes fields such as name, email, phone number, and address.

## Prerequisites:
Before you begin, ensure you have Docker installed on your system. If not, you can download and install it from here.

## Setup:
Clone this repository to your local machine:


### To clone <repository_url>
Navigate to the directory containing the docker-compose.yml file.

Install Docker Compose if you haven't already. Instructions can be found here.

Run the following command to start the Docker container:

### docker-compose up

This command will build the Docker image and start the container.

### Configuration:

The docker-compose.yml file defines a service named faker-data-generator, which runs a Python script to generate sample data.

The script uses the Python Faker library to create realistic fake data. It generates data for fields such as name, email, phone number, and address.

By default, the script generates 100 rows of data. You can adjust the number of rows by changing the value of the _ variable in the script.

Additionally, if you want to customize the generated phone numbers for a specific country code, you can use the provided generate_phone_number() function. Uncomment this function and adjust the country code as needed. Make sure to comment out the existing fake.phone_number() line and use the generate_phone_number() function instead.

### Docker Compose Configuration:
The docker-compose.yml file specifies the Docker configuration for running the Faker data generation script.

It defines a Docker service named faker-data-generator, which uses the python:3 base image. This service mounts the current directory as a volume inside the container, allowing the generated CSV file to be accessible outside the container.

### Usage:
Once the Docker container is running, it will execute the Faker data generation script and export the generated data to a CSV file named sample_data.csv in the same directory.

You can access the generated CSV file and use it for various purposes such as testing, development, or data analysis.

Cleanup

To stop the Docker container, use the following command:
#### docker-compose down

This command will stop and remove the container, but the generated CSV file will remain in the directory for further use.
