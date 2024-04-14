# Report: Practical Construction of a Web Application using Ruby on Rails and MySQL.

## Objective
The objective of this challenge was to create a dynamic system in Ruby to interact with a MySQL database. The system should allow the creation and retrieval of customer and supplier records, ensuring security against SQL injection.

## Technical Details
### Created Files
- **config/database.yml**: Configuration file containing connection details to the MySQL database.
- **infra/database.rb**: Database class providing methods to connect to the database and execute queries safely.
- **models/client.rb**: Client class encapsulating logic to interact with the clients table in the database.
- **models/supplier.rb**: Supplier class encapsulating logic to interact with the suppliers table in the database.
- **orm.rb**: ORM module providing a simple interface to interact with the Client and Supplier classes, ensuring dynamic communication between parts of the system.

### Implemented Methods
- **Database.configure(environment)**: Method to configure and return a connection to the database, with support for development and production environments.
- **Database.execute(environment, query, *params)**: Method to execute SQL queries safely, avoiding SQL injection.
- **Client.create(name, phone, cpf)**: Method to create a new client in the database.
- **Client.all**: Method to retrieve all clients from the database.
- **Supplier.create(name, phone, cnpj, address)**: Method to create a new supplier in the database.
- **Supplier.all**: Method to retrieve all suppliers from the database.

### Dynamic Communication
The project communicates dynamically as follows:

- The **init.rb** file loads the necessary files and uses the ORM module to interact with the Client and Supplier classes.
- The ORM module delegates operations to the Client and Supplier classes, which in turn use the Database to execute SQL queries safely.
- The Database class communicates with the MySQL database, using the configuration details provided in the **database.yml** file.

## Conclusion
The developed system meets the requirements of the initial challenge, providing a secure and dynamic way to interact with a MySQL database in Ruby. The modular structure and clear separation of responsibilities facilitate maintenance and expansion of the system in the future.
