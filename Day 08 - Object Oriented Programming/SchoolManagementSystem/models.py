class Person:

    school_name = "Kacapoof High School"

    def __init__(self, name, age):
        self.name = name
        self.age = age

    def get_details(self):
        return f"Name: {self.name}, Age: {self.age}"
    

class Student(Person):

    def __init__(self, name, age, studentID):
        super().__init__(name, age)
        self.studentID = studentID

        self.grades = []

    def add_grade(self, grade):
        self.grades.append(grade)

    def get_details(self):
        print("---------------")
        print(f"Name: {self.name}, Student ID: {self.studentID}")
        print("---------------")
        return self.name, self.studentID


class Teacher(Person):

    def __init__(self, name, age, teacherID):
        super().__init__(name, age)
        self.teacherID = teacherID

        self.subjects = []

    def add_subject(self, subject):
        self.subjects.append(subject)

    def get_details(self):
        print("---------------")
        print(f"Name: {self.name}, Teacher ID: {self.teacherID}")
        print("---------------")
        return self.name, self.teacherID
    


if __name__ == "__main__":
    print("Welcome to the Models module. This is where we define our classes for the school management system.")