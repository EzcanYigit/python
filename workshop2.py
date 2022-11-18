#file= open("employees.txt", "w")
#file.write("merhaba")


try:
    employeeCount = int(input("Kaç adet çalişan gireceksiniz :"))
except ValueError:
    print("İstenilen değeri girmediniz.")
finally:
    print("okey")


employees = {}

for i in range(employeeCount):

    employeeName = (input(f"{i+1}, çalisan adini giriniz : "))
    employeeSurname = (input(f"{i+1}, çalisan soyadini giriniz : "))
    employeePay = int(input(f"{i+1}, çalisan maaşini giriniz : "))

    file = open("employees.txt", "a")
    file.write(f"calisan adi : {employeeName} calisan soyadi : {employeeSurname} - calisan maasi {employeePay}\n")
    file.close()

    # employees ={

    # "Çalişan Adi": employeeName,
    # "Çalişan Soyadi": employeeSurname,
    # "Çalişan Maaşi": employeePay
    # }

    
# print(employees) 
