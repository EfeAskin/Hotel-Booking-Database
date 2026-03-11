# 🏨 Hotel Booking Database System

This project is a **simple hotel booking database system** implemented using **Oracle SQL**.
It demonstrates relational database design, table relationships, and practical SQL queries used in a hotel reservation environment.

The goal of this project is to practice **database schema design, SQL queries, and PL/SQL operations** in a realistic scenario.

---

# 📌 Features

* Guest management
* Room management
* Reservation tracking
* Hotel services management
* Room amenities tracking
* Analytical SQL queries
* Sample data for testing
* PL/SQL transaction example
* Database view for reservation summaries

---

# 🛠 Technologies Used

* **Oracle SQL**
* **PL/SQL**

---

# 🗄 Database Structure

The database contains the following tables:

| Table                | Description                              |
| -------------------- | ---------------------------------------- |
| Guests               | Stores guest personal information        |
| Rooms                | Contains hotel room details              |
| Reservations         | Stores reservation records               |
| Reservation_Rooms    | Links reservations with rooms            |
| Services             | Hotel services such as spa, room service |
| Reservation_Services | Services used in a reservation           |
| Amenities            | Room features (WiFi, TV etc.)            |
| Room_Amenities       | Connects rooms with amenities            |

---

# 📂 Project Structure

```
hotel-booking-database
│
├── README.md
├── schema.sql
├── sample_data.sql
├── queries.sql
├── views.sql
├──plsql_example.sql
└──`images/database-diagram.png` – **ER diagram** showing tables and relationships  
```

| File              | Purpose                         |
| ----------------- | ------------------------------- |
| schema.sql        | Creates all database tables     |
| sample_data.sql   | Inserts example data            |
| queries.sql       | Contains analytical SQL queries |
| views.sql         | Database views                  |
| plsql_example.sql | Example PL/SQL transaction      |

---

# ▶ How to Run

1. Run **schema.sql** to create database tables
2. Run **sample_data.sql** to populate the database
3. Execute queries from **queries.sql**
4. Use **views.sql** to create database views
5. Run **plsql_example.sql** to test PL/SQL transaction logic

---

## 💡 Example Queries

- List all rooms with their amenities  
- Calculate total cost per reservation  
- Find guests with multiple reservations  
- Identify rooms that have never been reserved  
- Compute total revenue from a specific service (e.g., Spa)  
- Calculate average ratings per room  

---

# 📈 Future Improvements

Possible improvements for this project:

* Add a **web interface**
* Create a **backend API**
* Implement **user authentication**
* Add **payment system**

---

# 👨‍💻 Author

**Efe Aşkın**
Computer Engineering Student
Eastern Mediterranean University

---

> “Çalışmadan, yorulmadan, öğrenmeden rahat yaşamak isteyenler; ne toplum içinde, ne de kendi hayatında başarılı olabilirler.”
> — Mustafa Kemal Atatürk

