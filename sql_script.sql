CREATE TABLE guest_info (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(30) NOT NULL,
    lastname VARCHAR(30) NOT NULL,
    email VARCHAR(50),
    visit_date TIMESTAMP
);

INSERT INTO guest_info (firstname, lastname, email)
VALUES ('Teri','Thomas','t_thomas@gmail.com'),
('Clifford','Gonzalez','c_gonzalez@gmail.com'),
('Faith','Lamb','f_lamb@gmail.com');