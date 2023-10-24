CREATE TABLE account (
user_id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
password VARCHAR(50) NOT NULL,
phone_num CHAR(10) NOT NULL,
);

CREATE TABLE driver_info (
driver_id INT PRIMARY KEY,
car_model VARCHAR(50) NOT NULL,
license_plate CHAR(7) NOT NULL,
license VARCHAR(50) NOT NULL,
car_year INT NOT NULL,
seat_count INT NOT NULL,
car_color VARCHAR(50) NOT NULL,
driver_picture BLOB NOT NULL,
insurance INT NOT NULL,
residency VARCHAR(50) NOT NULL,
inspection_form BLOB NOT NULL,
FOREIGN KEY (driver_id) REFERENCES account(user_id)
);

CREATE TABLE completed_rides(
ride_id INT AUTO_INCREMENT PRIMARY KEY,
driver_id INT NOT NULL,
rider_id SET NOT NULL,
total_distance DECIMAL(5,2) NOT NULL,
start_time DATETIME NOT NULL,
end_time DATETIME NOT NULL,
duration INTERVAL NOT NULL,
start_point VARCHAR(50) NOT NULL,
destination VARCHAR(50) NOT NULL,
driver_earnings DECIMAL(5,2) NOT NULL,
FOREIGN KEY (driver_id) REFERENCES account(user_id)
);

CREATE TABLE rider_rating(
diver_or_rider BOOLEAN NOT NULL,
rider_id INT NOT NULL,
ratee_id INT NOT NULL,
rating DECIMAL(5,2),
comment VARCHAR(1000),
FOREIGN KEY (rider_id) REFERENCES account(user_id)
FOREIGN KEY (ratee_id) REFERENCES account(user_id)
);

