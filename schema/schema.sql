
-- 1. Create Users Table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20)
);

-- 2. Create Matches Table
CREATE TABLE Matches (
    match_id INT PRIMARY KEY,
    fixture VARCHAR(150) NOT NULL,
    tournament_category VARCHAR(100) NOT NULL,
    base_ticket_price INT NOT NULL,
    match_status VARCHAR(50) NOT NULL
);

-- 3. Create Bookings Table
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    user_id INT NOT NULL,
    match_id INT NOT NULL,
    seat_number VARCHAR(10),
    payment_status VARCHAR(50),
    total_cost INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ,
    FOREIGN KEY (match_id) REFERENCES Matches(match_id)
);