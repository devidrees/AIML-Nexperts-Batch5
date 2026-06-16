# import models
import manager
print("Welcome to the School Management System")

while True:
    print("---------------")
    print("1 - to Add Student")
    print("2 - to View Students")
    print("3 - to Add Teacher")
    print("4 - to View Teachers")
    print("q - to Exit")
    print("---------------")

    choice = input("enter choice:") # input function automatically only takes strings
    # if 1 is entered, it will be "1"

    if choice == "1":
        manager.add_student()

    elif choice == "2":
        manager.display_students()

    elif choice == "3":
        manager.add_teacher()

    elif choice == "4":
        manager.display_teachers()
        
    elif choice == "q":
        break
    else:
        print("Invalid Choice")



