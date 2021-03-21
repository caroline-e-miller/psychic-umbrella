const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',

    port: 3000,

    user: 'root',

    password: 'thisIsMySQL2021a2*',
    database: 'titanicPassengers',
});

const queryAllPassengers = () => {
    connection.query('SELECT * FROM passengers', (err, res) => {
        if (err) throw err;
        res.forEach(({ passenger, wealth, survival }) => {
            console.log(`${passenger} | ${wealth} | ${survival}`);
        });
        console.log('--------------------------');
    });
};

const queryDeadPassengers = () => {
    const query = connection.query(
        'SELECT * FROM passengers WHERE survival=?',
        ['died'],
        (err, res) => {
            if (err) throw err;
            res.forEach(({ passenger, wealth, survival }) => {
                console.log(`${passenger} | ${wealth} | ${survival}`);
            })
        }
    );
    console.log(query.sql);
    connection.end();
};

connection.connect((err) => {
    if (err) throw err
    console.log(`connected as id ${connection.threadId}`);
    queryAllPassengers();
    queryDeadPassengers();
})