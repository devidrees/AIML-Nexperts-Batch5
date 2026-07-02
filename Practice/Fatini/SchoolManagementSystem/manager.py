from models import Student
from models import Teacher

students = []

def add_student():
    name = input("Enter student name: ")
    age = int(input("Enter student age: "))
    studentID = input("Enter student ID: ")

    student = Student(name, age, studentID)
    students.append(student)

    print("---------------")
    print(f"Student {name} added successfully!")
    print("---------------")

def display_students():
    for student in students:
        print("---------------")
        student.get_details()
        print("---------------")



teachers = []

def add_teacher():
    name = input("Enter teacher name: ")
    age = int(input("Enter teacher age: "))
    teacherID = input("Enter teacher ID: ")

    teacher = Teacher(name, age, teacherID)
    teachers.append(teacher)

    print("---------------")
    print(f"Teacher {name} added successfully!")
    print("---------------")

def display_teachers():
    for teacher in teachers:
        print("---------------")
        teacher.get_details()
        print("---------------")

