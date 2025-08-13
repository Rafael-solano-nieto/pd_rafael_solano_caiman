# Project Title

A simple Node.js and Express application with MySQL for managing transactions.

## Prerequisites

- Node.js
- MySQL

## Installation

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   ```

2. **Install dependencies:**
   ```bash
   npm install
   ```

3. **Set up the database:**
   - Make sure your MySQL server is running.
   - Create a new database named `pd_rafael_solano_caiman`.
     ```sql
     CREATE DATABASE pd_rafael_solano_caiman;
     ```
   - Use the newly created database.
     ```sql
     USE pd_rafael_solano_caiman;
     ```
   - Run the script `docs/script.sql` to create the tables. You can ignore the `CREATE DATABASE` and `USE` statements in the file since you have already done that.

## Running the application

1. **Start the server:**
   ```bash
   node server/index.js
   ```
   The server will be running on `http://localhost:3000`.

2. **Seed the database:**
   Open your browser and navigate to the following URL to populate the database with initial data from the CSV files:
   ```
   http://localhost:3000/load-data
   ```

## API Endpoints

You can test the API using the Postman collection provided in the `docs` folder: `Prueba_Desempeno_SQL.postman_collection.json`.

The available endpoints are:

- `GET /transactions`: Get all transactions.
- `GET /transactions/:id`: Get a transaction by ID.
- `POST /transactions`: Create a new transaction.
- `PUT /transactions/:id`: Update a transaction.
- `DELETE /transactions/:id`: Delete a transaction.

## Author

Rafael Solano Nieto del clan Caiman
