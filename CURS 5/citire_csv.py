import csv

with open("profesori_original.csv", "r") as freader:
    csv_reader = csv.DictReader(freader)
    print(csv_reader)
    for row in csv_reader:
        print(row)