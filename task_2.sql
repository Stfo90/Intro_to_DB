CREATE DATABASE IF NOT EXISTS alx_book_store

Books: Stores information about books available in the bookstore.
    CREATE TABLE IF NOT EXISTS Books(
    book_id (Primary Key)
    title VARCHAR(130)
    author_id (Foreign Key referencing Authors table)
    price DOUBLE
    publication_date DATE
    )

Authors: Stores information about authors.

CREATE TABLE IF NOT EXISTS Authors(
    author_id (PRIMARY KEY)
    author_name VARCHAR(215)
    )

Customers: Stores information about customers.
CREATE TABLE IF NOT EXISTS Customers(
    customer_id (PRIMARY KEY)
    customer_name VARCHAR(215)
    email VARCHAR(215)
    address TEXT
    )

Orders: Stores information about orders placed by customers.
CREATE TABLE IF NOT EXISTS Orders(
    order_id INT (PRIMARY KEY)
    customer_id INT 
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
    order_date DATE
    )

Order_Details: Stores information about the books included in each order.
CREATE TABLE IF NOT EXISTS Order_Details(
    orderdetailid (PRIMARY KEY)
    order_id INT
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
    book_id INT 
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
    quantity DOUBLE
    )
