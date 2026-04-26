# 🎬 Cinema Booking System

A full-stack Java application for managing cinema ticket bookings, built with object-oriented design principles, featuring a desktop GUI, MySQL database integration, and RESTful API.

[![Java](https://img.shields.io/badge/Java-17+-orange.svg)](https://www.oracle.com/java/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0+-blue.svg)](https://www.mysql.com/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## 📋 Overview

This Cinema Booking System is a comprehensive Java application developed as part of the 5CS019 Object-Oriented Design and Programming module. The system demonstrates advanced OOP concepts, database connectivity, GUI development, and API design in a real-world cinema booking scenario.

### Key Features

- 🎯 **Object-Oriented Architecture** - Clean class design with inheritance, aggregation, and association
- 🖥️ **Desktop GUI** - Intuitive Java Swing interface for booking management
- 💾 **Database Integration** - MySQL backend with JDBC for persistent data storage
- 🌐 **REST API** - HTTP endpoints for external system integration
- ✅ **Comprehensive Testing** - JUnit test suite for core booking logic
- 🔒 **Security** - Prepared statements to prevent SQL injection

## 🏗️ System Architecture

### Class Structure

```
Person (Base Class)
  ├── Customer (extends Person)
  │
Movie
  ├── ShowTime (associated)
  │
Booking (links Customer + ShowTime)
  │
CinemaService (Controller)
```

### Core Components

- **Person.java** - Base class with common attributes (id, name, email, phone)
- **Customer.java** - Represents cinema customers who make bookings
- **Movie.java** - Movie entity with title, genre, duration details
- **ShowTime.java** - Scheduled movie sessions with date, time, and seat availability
- **Booking.java** - Links customers to specific showtimes with seat allocation
- **CinemaService.java** - Service layer managing business logic

## 🚀 Getting Started

### Prerequisites

- Java Development Kit (JDK) 17 or higher
- MySQL Server 8.0+
- Eclipse IDE (recommended) or any Java IDE
- Maven (for dependency management)

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/yourusername/cinema-booking-system.git
cd cinema-booking-system
```

2. **Set up MySQL database**
```sql
CREATE DATABASE cinema_db;
USE cinema_db;

-- Run the SQL scripts in /database folder
SOURCE database/schema.sql;
SOURCE database/sample_data.sql;
```

3. **Configure database connection**

Edit `src/main/resources/db.properties`:
```properties
db.url=jdbc:mysql://localhost:3306/cinema_db
db.username=your_username
db.password=your_password
```

4. **Build the project**
```bash
mvn clean install
```

5. **Run the application**
```bash
mvn exec:java -Dexec.mainClass="com.cinema.Main"
```

## 💻 Usage

### Desktop Application

1. Launch the GUI application
2. Browse available movies and showtimes
3. Select seats and enter customer details
4. Confirm booking (data persists to MySQL)

### REST API Endpoints

#### Get All Movies
```http
GET /api/movies
```

**Response:**
```json
[
  {
    "movieID": 1,
    "title": "The Matrix",
    "genre": "Sci-Fi",
    "duration": 136
  }
]
```

#### Create Booking
```http
POST /api/bookings
Content-Type: application/json

{
  "customerName": "John Doe",
  "movieID": 1,
  "showtimeID": 3,
  "seats": ["A1", "A2"]
}
```

**Response:**
```json
{
  "bookingID": 12345,
  "status": "confirmed",
  "message": "Booking successful"
}
```

## 🧪 Testing

Run the JUnit test suite:

```bash
mvn test
```

### Test Coverage

- Booking logic validation
- Seat allocation and conflict detection
- Double-booking prevention
- Object creation and relationships

## 🎯 OOP Principles Demonstrated

### Inheritance
```java
public class Customer extends Person {
    // Customer-specific attributes and methods
}
```

### Polymorphism
Service methods accept `Person` type, enabling flexible user type handling:
```java
public void processUser(Person user) {
    // Works with Customer, Admin, or any Person subclass
}
```

### Encapsulation
All classes use private attributes with public getters/setters:
```java
private String email;
public String getEmail() { return email; }
public void setEmail(String email) { this.email = email; }
```

## 📊 Database Schema

### Tables

- **movies** - Movie catalog (movieID, title, genre, duration)
- **showtimes** - Scheduled screenings (showtimeID, movieID, dateTime, availableSeats)
- **bookings** - Customer reservations (bookingID, customerName, showtimeID, seats)

### Relationships

- One-to-Many: Movie → ShowTime
- Many-to-One: Booking → ShowTime
- Many-to-One: Booking → Customer

## 🛠️ Technologies Used

| Component | Technology |
|-----------|-----------|
| Backend | Java 17+ |
| GUI | Java Swing |
| Database | MySQL 8.0 |
| ORM/JDBC | JDBC Driver |
| Testing | JUnit 5 |
| API | Java HttpServer |
| IDE | Eclipse IDE |
| Build Tool | Maven |

## 📂 Project Structure

```
cinema-booking-system/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/cinema/
│   │   │       ├── model/          # Entity classes
│   │   │       ├── service/        # Business logic
│   │   │       ├── gui/            # Swing components
│   │   │       ├── api/            # REST endpoints
│   │   │       └── dao/            # Database access
│   │   └── resources/
│   │       └── db.properties       # Configuration
│   └── test/
│       └── java/
│           └── com/cinema/         # JUnit tests
├── database/
│   ├── schema.sql                  # Database schema
│   └── sample_data.sql             # Test data
├── docs/                           # Documentation
├── pom.xml                         # Maven configuration
└── README.md
```

## 🔮 Future Enhancements

- [ ] User authentication and authorization
- [ ] Interactive seat map UI
- [ ] Payment gateway integration
- [ ] Email confirmation system
- [ ] Admin dashboard for cinema management
- [ ] Mobile-responsive web interface
- [ ] Booking history and loyalty points
- [ ] Multi-cinema support

## 📝 Academic Context

This project was developed for:

- **Program:** BSc (Hons) in Software Engineering (Batch 08)
- **Submission Date:** December 2025

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



## 👤 Author

**Sanduni Priyalakshi** 

- LinkedIn: Sanduni Priyalakshi
- Email: mathukandagesanduni22@gmail.com

## 🙏 Acknowledgments


- Oracle Java Documentation
- MySQL Community
- JUnit Testing Framework
- Visual Paradigm for UML diagrams

