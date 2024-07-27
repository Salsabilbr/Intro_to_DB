CREATE DATABASE IF NOT EXISTS alx_book_store;  
USE alx_book_store;  
   
CREATE TABLE books (  
  book_id INT PRIMARY KEY AUTO_INCREMENT,  
  title VARCHAR(255) NOT NULL,  
  publication_date DATE NOT NULL,  
  price DECIMAL(10, 2) NOT NULL,  
  stock_quantity INT NOT NULL  
);  
  
CREATE TABLE Authors (
  author_id INT PRIMARY KEY AUTO_INCREMENT,
  author_name VARCHAR(100) NOT NULL
);
  
CREATE TABLE customers (  
  customer_id INT PRIMARY KEY AUTO_INCREMENT,  
  first_name VARCHAR(50) NOT NULL,  
  last_name VARCHAR(50) NOT NULL,  
  email VARCHAR(100) NOT NULL,  
  phone VARCHAR(20) NOT NULL,  
  address VARCHAR(255) NOT NULL  
);  
  
CREATE TABLE orders (  
  order_id INT PRIMARY KEY AUTO_INCREMENT,  
  customer_id INT NOT NULL,  
  order_date DATE NOT NULL,  
  total_amount DECIMAL(10, 2) NOT NULL,  
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)  
);  
  
CREATE TABLE order_details (  
  order_detail_id INT PRIMARY KEY AUTO_INCREMENT,  
  order_id INT NOT NULL,  
  book_id INT NOT NULL,  
  quantity INT NOT NULL,  
  unit_price DECIMAL(10, 2) NOT NULL,  
  FOREIGN KEY (order_id) REFERENCES orders(order_id),  
  FOREIGN KEY (book_id) REFERENCES books(book_id)  
);  
    
CREATE TABLE book_authors (  
  book_id INT NOT NULL,  
  author_id INT NOT NULL,  
  PRIMARY KEY (book_id, author_id),  
  FOREIGN KEY (book_id) REFERENCES books(book_id),  
  FOREIGN KEY (author_id) REFERENCES authors(author_id)  
);
.
