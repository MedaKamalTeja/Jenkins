class Employee:
    def __init__(self, emp_id, name, salary):
        self.emp_id = emp_id
        self.name = name
        self.salary = salary

    def display_info(self):
        print(f"Employee ID: {self.emp_id}")
        print(f"Name: {self.name}")
        print(f"Salary: INR-{self.salary}/-")

class Manager(Employee):
    def __init__(self, emp_id, name, salary, team_size):
        super().__init__(emp_id, name, salary)
        self.team_size = team_size

    def display_info(self):
        super().display_info()
        print(f"Team Size: {self.team_size}")

class Developer(Employee):
    def __init__(self, emp_id, name, salary, programming_language):
        super().__init__(emp_id, name, salary)
        self.programming_language = programming_language

    def display_info(self):
        super().display_info()
        print(f"Programming Language: {self.programming_language}")

# Create instances of Manager and Developer
manager1 = Manager(101, "Hemant Mahawer", 150000, 5)
developer1 = Developer(201, "Pavan Kalyan N", 65000, "Python")

# Display information about employees
print("Manager Information:")
manager1.display_info()

print("\nDeveloper Information:")
developer1.display_info()
