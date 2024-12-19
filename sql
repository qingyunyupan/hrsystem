//社員情報用のSQL
CREATE TABLE Employees (
    EmployeeID TEXT PRIMARY KEY,
    Name TEXT NOT NULL,
    Position TEXT,
    Department TEXT,
    Contact TEXT,
    Salary REAL
);

//勤怠情報用のSQL
CREATE TABLE Attendance (
    AttendanceID INTEGER PRIMARY KEY AUTOINCREMENT,
    EmployeeID TEXT NOT NULL,
    Date TEXT NOT NULL,
    ClockIn TEXT NOT NULL,
    ClockOut TEXT NOT NULL,
    FOREIGN KEY(EmployeeID) REFERENCES Employees(EmployeeID)
);
