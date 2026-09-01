-- creating database 
create database iauro;
use iauro;

CREATE TABLE Hotel (
    Hotel_No VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL
);

CREATE TABLE Room (
    Room_No INT,
    Hotel_No VARCHAR(10),
    Type CHAR(1),
    Price DECIMAL(10,2),

    PRIMARY KEY (Room_No, Hotel_No),

    FOREIGN KEY (Hotel_No)
        REFERENCES Hotel(Hotel_No)
        ON DELETE CASCADE
);

CREATE TABLE Guest (
    Guest_No VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL
);

CREATE TABLE Booking (
    Hotel_No VARCHAR(10),
    Guest_No VARCHAR(10),
    Date_From DATE,
    Date_To DATE,
    Room_No INT,

    FOREIGN KEY (Hotel_No)
        REFERENCES Hotel(Hotel_No)
        ON DELETE CASCADE,

    FOREIGN KEY (Guest_No)
        REFERENCES Guest(Guest_No)
        ON DELETE CASCADE,

    FOREIGN KEY (Hotel_No, Room_No)
        REFERENCES Room(Hotel_No, Room_No)
        ON DELETE CASCADE
);


