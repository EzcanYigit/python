#kullanıcıdan girdi almak 
#karar blokları 
#döngüler 

dersler= {}
passedExams= []
failedExams= []

dersSayisi = int(input("Kaç adet ders notu gireceksiniz?"))
passedExams = 0
failedExams = 0

for i in range(dersSayisi):
    dersAdi = str(input(f"ders adini giriniz."))
    vizeNotu = float(input(f"{i+1}. ders için vize notunuzu giriniz."))
    finalNotu = float(input(f"{i+1}. ders için final notunu giriniz."))
    totalExamNote = (vizeNotu * 0.4) + (finalNotu * 0.6)

dersler= {
    "ders Adi" : dersAdi,
    "vize Notu" : vizeNotu,
    "final Notu" : finalNotu,
    "ortalama not": totalExamNote
}

if totalExamNote >= 50:
        passedExams += 1
else:
        failedExams += 1

print("****************************")        
print(dersler)
print("****************************")
print(f"{dersAdi} ")        
print(f"{passedExams} adet dersten geçtiniz. {failedExams} adet dersten kaldınız.")
print(f"{totalExamNote} ortalama notunuz")



