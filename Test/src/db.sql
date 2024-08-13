CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    Email VARCHAR(255),
    PhoneNumber VARCHAR(20),
    Problem TEXT
);

CREATE TABLE StaffMembers (
    StaffMemberID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    PhoneNumber VARCHAR(20),
    Age INT,
    Gender VARCHAR(10)
);
CREATE TABLE Packages (
    CustomerID INT,
    PackageID INT AUTO_INCREMENT PRIMARY KEY,
    PackageName VARCHAR(255),
    DataLimit VARCHAR(50),
    Price DECIMAL(10, 2),
    Status VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
CREATE TABLE ServiceRatings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Experience VARCHAR(255),
    Likes TEXT,
    Comment TEXT
);


