import models
import manager


print("Welcome to the Kacapoof School Management System!")

while True:
    print("---------------")
    print("1. Add Student")
    print("2. View Students")
    print("3. Add Teacher")
    print("4. View Teachers")
    print("q. Exit")
    print("---------------")

    choice = input("Enter your choice: ")

    if choice == '1':
        manager.add_student()
    elif choice == '2':
        manager.display_students()
    elif choice == '3':
        manager.add_teacher()
    elif choice == '4':
        manager.display_teachers()
    elif choice == 'q':
        print("---------------")
        print("Thank you for using the Kacapoof School Management System!")
        print("---------------")
        break
    else:
        print("Invalid choice! Please try again.")