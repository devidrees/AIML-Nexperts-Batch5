# Create classes for relevant roles


# Student Teacher OtherStaff Janitor


class Person:

    # class attribute
    school_name = "Nexperts School of Computer Science"

    def __init__(self, name, age):
        self.name = name 
        self.age = age

    def get_details(self):
        return f"Name: {self.Name}, Age: {self.age}"
    

# students
class Student(Person):
    def __init__(self, name, age, StudentID):
        super().__init__(name, age)
        self.StudentID = StudentID

        self.grades = []

    # add grades
    def add_grade(self, grade):
        self.grades.append(grade)
    

    # polymorphism -- 
    def get_details(self):
        return f"Name: {self.Name}, Student ID: {self.StudentID}"


# Teacher
class Teacher(Person):
    def __init__(self, name, age, TeacherID):
        super().__init__(name, age)
        self.TeacherID = TeacherID

        self.subjects = []

    # add subject
    def add_subjects(self, subject):
        self.subjects.append(subject)
    
    # polymorphism -- 
    def get_details(self):
        return f"Name: {self.Name}, Teacher ID: {self.TeacherID}"
    
if __name__ == "__main__":
    # this will only run when you execute the greet.py file
    # this function --
    print("Welcome to the Models module. Here we store the Role classes for each Person")