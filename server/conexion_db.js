import mysql from 'mysql2/promise';

export const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'pd_rafael_solano_caiman',
});


async function connection() {
    try {
        const connection = await pool.getConnection();
        console.log('Successfully connected to the database');
        connection.release();
    } catch (error) {
        console.error('Error connecting to the database:', error.message);
    }
}

connection();