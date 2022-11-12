# Optional Python Assignment

## First project

During your first project, you will have to implement your own scraper, collect data with it, upload it into a database and create an API for interacting with the collected data. There is a lot you have to do, so let's go through each step closer.

<div>
</div>
<img src="https://softwareforgood.com/wp-content/uploads/2018/03/all-the-things.png" style="max-width:250px; display:block; margin: auto" />

## Build Scraper

### Creating a package

During this stage, you will need to create a Python package that is able to scrape a specific website. Together we built one that scrapes web pages of recipes. Your package should be able to take some input (`number_of_records`, `keywords`, etc.) and save outputs to a CSV file. Afterward, you will need to transform this functionality into a Python package that is installable through pip. **REQUIREMENTS**:

1. Create a python project in GH. Follow best project creation and maintenance practices.
2. Write your scraper using the OOP paradigm. The scraper should be able to scrape more than 1 webpage. Design your methods and functions with reusability in mind (remember inheritance).
3. The scraper should meet all expected Python package standards: documentation and dependency definition.

### Collecting and saving data

Use the scraper to collect at least 100 records. Save them in SQL type database (MySQL, Postgres, MariaDB, etc.). **REQUIREMENTS**:

1. Use the scraper to scrape and collect 100+ records. Each record should have at least 4 different features (besides `id`). Save those records to a CSV file.
2. Create a database and a table for storing the collected records. Write a SQL script for creating a dataset and table.
3. Your table should meet all the best SQL practices. Have indexes where needed and specific field types optimized for the data you'll store.

## Create an API for the trained model

### Basic functionality

This is the step you have done at least a couple of times. You will need to create an API using [FastApi](https://fastapi.tiangolo.com/). You'll use the API to interact with the stored scraped data. **REQUIREMENTS**

1. Create a separate Python project following the best practices.
2. Initialize connection between a db and your application.
3. Create two FastAPI HTTP routes: `get - /health` (for checking if the application is running) and `get - /<title_of_your_records>` to retrieve information stored inside the database.
4. Use serialization (pydantic BaseModel) while retrieving the stored records (return only needed attributes).

### Track and log requests

You'll need to implement a logger that tracks each request and write the information inside a database. **REQUIREMENTS**:

1. Write an SQL query to create a table for tracking requests. The table should at least have these features: `id, endpoint_name, local_datatime`. You can improvise on adding more columns if needed.
2. Write a decorator that will be used to decorate each endpoint. Logger should extract information and write it to the database.
3. Create new route in FastApi application that returns `10` most recent requests.

## General requirements

Each project should:

1. Have its own repository
2. Have `README` that describes the project
3. Follow all PEP8 and modern Python standards: docstrings, types, etc.
4. Have a tidy commit history

<img
src="https://i.pinimg.com/originals/c7/ba/ff/c7baff142d9bc4cd5d546a4cfa6372f1.jpg" style="max-width:250px; display:block; margin: auto" />
