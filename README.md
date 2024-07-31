# CareerGuide

## Overview

**CareerGuide** is a Java-based application designed to help users explore and enroll in courses. The application features a user-friendly graphical interface, allowing both users and partners to interact with the system effectively. Users can browse course catalogs, register for courses, and view their enrolled courses. Partners can manage courses, including creating, updating, and deleting course information.

## Graphical User Interface (GUI)

The GUI for CareerGuide is built using Java's graphical components such as `jButton`, `jLabel`, `jComboBox`, `jTextField`, and `jPasswordField`. Various event handling components like `ActionEvent` and `MouseEvent` are used to create a responsive and interactive interface.

### Login Page
Upon launching the software, users are presented with the Login Page. To proceed, users must enter their registered username and password. Clicking the "Login" button will authenticate the user. If the credentials match the database, the user is redirected to their respective homepage based on their role (User or Partner).

If the user is new, they can register by navigating to the Register page, where they can enter personal details and create a new account.

### User View

After logging in, users are directed to the Homepage where they find a vertical menu bar linking to three main pages: Homepage, Catalogue, and Your Courses.

#### Course Catalogue
The Course Catalogue page features a `jTable` displaying available courses and their providers. Users can scroll through the options, select a course to view more details, and register for the course. Clicking the “Register” button takes the user to the Course Details page.

#### Your Courses

Enrolled courses are displayed in the Your Courses page. Users can see a list of courses they are registered for and view additional details.

### Partner View

Partners access the Homepage with a vertical menu bar linking to the Homepage and Courses page.
#### Courses Page

In the Courses page, partners can view a `jTable` with all available courses. They can select a course to update or delete, or create a new course using the “Create” button. Partners have authorized access to modify course data.

## Database

The CareerGuide application uses a MySQL database administered via phpMyAdmin. The database is named `finalproject` and includes the following tables:

### Tables

- **catalogue**: Contains information about available courses that users can enroll in and partners can add.
- **user**: Stores login details including usernames, passwords, and roles. The role determines the user's homepage (User or Partner).
- **usercourse**: Tracks the courses that users have enrolled in. Enrollment details are added to this table.

## Setup Instructions

1. **Navigate to the Project Directory**

    ```bash
    cd gotham-treats-pos
    ```

2. **Set Up the Database**

    Import the `careerguide.sql` file into your MySQL database through phpMyAdmin or the MySQL command line. Ensure the database structure and tables are created correctly.

3. **Configure Database Connection**

    Update the database connection settings in `config.php` to match your local environment.

4. **Start the Server**

    - Launch XAMPP.
    - Start the Apache and MySQL services.

5. **Access the Application**

    Open your web browser and navigate to [http://localhost/gotham-treats-pos](http://localhost/gotham-treats-pos) to view the website.
