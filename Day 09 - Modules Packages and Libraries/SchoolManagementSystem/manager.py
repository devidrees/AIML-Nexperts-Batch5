# place to add students and teachers

# view things, 
# you can add things too
# it is VIEW and CONTROLLER both

from models import Student
from models import Teacher


# a list to store students
students = [] # will store objects of student class

def add_student():
    name = input("enter name")
    age = input("enter age")
    studentid = input("enter student ID")

    new_student = Student(name, age, studentid)

    # add student to the list
    students.append(new_student)

    print("---"*5)
    print(f"Student {name} added successfully")
    print("---"*5)


def display_students():
    for student in students: # each student is an object
        print("---------------------")
        
        # objectName.method()
        student.get_details() #XXXXX


# ------------------------------------------------------------------------------




# a list to store teachers
teachers = []

def add_teacher():
    name = input("enter name")
    age = input("enter age")
    teacherid = input("enter teacher ID")

    new_teacher = Teacher(name, age, teacherid)

    # add teacher to the list
    teachers.append(new_teacher)

    print(f"Teacher {name} added successfully")


def display_teachers():
    for teacher in teachers:
        print("---------------------")
        teacher.get_details()