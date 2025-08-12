# Written by Ovi
# Date: 2025-02-07
# This script creates an Excel file from a list of names stored in a Python string.

import pandas as pd

# Define the names as a Python string
names_string = """
Himes, Trinity
Nguyen, Tyler
Persons, Trevor
Santschi, Thomas
Sharieff, Toufeeq
Mengistu, Yeabsera
Hubenak, Zachary
Valdez-gonzalez, Rafael
Wulubegige, Wulubegige
Abdelkader, Saifalislam
Asadova, Shuki
Cho, Sion
Essapour, Sayed
Kokuuslu, Sinan
Lamsal, Samman
Omarkhel, Sahil
Ratnala, Satvik
Tawakalyar, Shaheda
Yin, Mingyao
Asferi, Nathan
Sundrani, Neil
Tammina, Nitin
Wisniewski, Nicholas
Aunguyen, Phil
Tran, Peter
Truong, Kevin
Knechtel, Joey
Adam, Akram
Ahmed, Amr
Bouloudene, Adam
Crown, Alex
Pham, Alice
Shahzad, Aleeza
Desta, Benyam Daniel
Ferraro, Betty
Mach, Brian
Maharjan, Binit
Booth, Charlotte
Farah, Cabdirauuf
Poland, Christian
Varghese, Christy
Kainz, Kyle
Berry, Leo
Sheppard, Lonnie
Villavicencio, Liam
Khattak, Muskan
Nahin, Muhammad
Noroozi, Mobin
Rodriguez-Munoz, Marcello
Smith, Markus
Varghese, Christy
Charouel, Daniel
Andreas, Evan
Barber, Erik
Reardon, Evan
Robredo, Felix
Zaw, Hein Khant
Mcadams, Nace
Livermon, Jacob
Roldan, Jefferson
Kainz, Kyle
"""

# Split the string into lines and parse names
data = []
for line in names_string.strip().split("\n"):
    last_name, first_name = line.split(", ")
    data.append([last_name, first_name])

# Create a DataFrame with Serial Number, Last Name, and First Name
df = pd.DataFrame(data, columns=["Last Name", "First Name"])
df.insert(0, "Serial Number", range(1, len(df) + 1))

# Save the DataFrame to an Excel file
file_path = "names_list.xlsx"
df.to_excel(file_path, index=False)

print(f"Excel file saved as {file_path}")