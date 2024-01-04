import tkinter as tk 
import mysql.connector
import array
import random
from tkinter import ttk
from tkinter import messagebox
from tkinter import Spinbox
import os


# Connect to your MySQL database
mydb = mysql.connector.connect(
    host="localhost",
   user="root",
    password="",
    database="blood_donation_registration"
)

# Create a cursor object to execute SQL queries
mycursor = mydb.cursor()

def REGISTER():
    donator_full_name = donator_full_name_entry.get()
    donator_email = donator_email_entry.get()
    donator_age =donator_age_combobox.get()
    donator_gender = donator_gender_combobox.get()
    donator_contact_number = donator_contact_number_entry.get()
    donator_address = donator_address_entry.get()
    donator_donation_date = donator_donation_date_combobox.get()
    donator_blood_type = donator_blood_type_combobox.get()
    donator_chronic_disease = donator_chronic_disease_combobox.get()
    donator_previous_travelled = donator_previous_travelled_combobox.get()
    donator_physical_factor = donator_physical_factor_combobox.get()
    donator_medical_center = donator_medical_center_combobox.get()
    donator_height = donator_height_entry.get()
    donator_weight = donator_weight_entry.get()
    donator_BMI = donator_BMI_entry.get()
    
    #donator_donation_date = donator_donation_date_combobox
    #for donation_date_combobox in range("1 January 2024" - "31 January 20124"):
    #donator_donation_date "1 January 2024" = :
    

    #print(donation_date_combobox)
    
    if not donator_full_name or not donator_email or not donator_age or not donator_gender or not donator_contact_number or not donator_address or not donator_blood_type or not donator_chronic_disease or not donator_previous_travelled or not donator_physical_factor or not donator_medical_center or not donator_height or not donator_weight:
        messagebox.showerror('Error', 'Please fill in all fields.')
    else:
        messagebox.showinfo('Registration Successful', 'Thank you for registering!')
        
        #calculation 
        donator_BMI = float(donator_weight) / (float (donator_height) * float (donator_height))
        
        print("donater_full_name:", donator_full_name)
        print("donater_email:", donator_email)
        print("donater_age:", donator_age)
        print("donater_gender:", donator_gender)
        print("donater_contact_number:", donator_contact_number)
        print("donater_address:", donator_address)
        print("donation date:", donator_full_name_entry)
        print("donater_blood_type:", donator_blood_type)
        print("donater_chronic_disease:", donator_chronic_disease)
        print("donater_previous_travelled:", donator_previous_travelled)
        print("donater_physichal_factor:", donator_physical_factor)
        print("donater_medicaldonater_center:", donator_medical_center) 
        print("donater_height:", donator_height)
        print("donater_weight:", donator_weight)
        print("donater_BMI:", donator_BMI)
        print("output_label.config(text=BMI)")
        
        for donation_date in range (1,31):
            print(donation_date)
            
        # To Print back The output. It will happen in the function collect_data(). The f before the string indicates an f-string in Python. 
        output_label.config(text=f" {donator_BMI}")
    
    # To insert your Data to your database, As for this example, you have 3 attributes. (2 Attributes from your selection (Package, Pack) and another attributes that derived from your attributes (price))
    sql = "INSERT INTO blood_donation (donator_full_name, donator_email, donator_age, donator_gender, donator_contact_number, donator_address, donator_donation_date, donator_blood_type, donator_chronic_disease, donator_previous_travelled, donator_physical_factor, donator_medical_center, donator_height, donator_weight, donator_BMI) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
    val =(donator_full_name, donator_email, donator_age, donator_gender, donator_contact_number, donator_address, donator_donation_date, donator_blood_type, donator_chronic_disease, donator_previous_travelled, donator_physical_factor, donator_medical_center, donator_height, donator_weight, donator_BMI)
    mycursor.execute(sql, val)
    mydb.commit()

def RESET_WINDOW ():
    # REDRAW THE WINDOW
    
    os.popen("blood_donation.py")
    root.destroy()

        
#create graphic user interface (GUI)

root = tk.Tk()
root.geometry("1800x1800")
root.title("BLOOD DONATION ONLINE REGISTRATION")
root.configure(bg="#030303")


#user information
BLOOD_DONATION_REGISTRATION_root = tk.Label(root, text="BLOOD DONATION \n REGISTRATION", font=("TIMES NEW ROMAN", 34, "bold", "italic"), bg="#030303",  fg="#F1C40F")
BLOOD_DONATION_REGISTRATION_root.grid(row=0, column=0)

registration_number_root= tk.Label(root, text="Registration number", font=("TIMES NEW ROMAN", 20 ), bg="#030303",  fg="#F1C40F" )
registration_number_root.grid(row=0, column=2, padx=100, pady=0)

number_root = tk.Label(root, text="20232", font=("TIMES NEW ROMAN", 20 ), bg="#F1C40F",  fg="#030303")
number_root.grid(row=0, column=3, sticky="ew")
#number_root = tk.Label(root,random.randint(0,999999))
#number_root.grid(row=0, column=2, padx=100, pady=0)
#print(number_root)

#note 
User_information =tk.Label(root, text="    USER INFORMATION    ", font =("TIMES NEW ROMAN", 20), bg="#F1C40F",  fg="#030303")
User_information.grid(row=2, column=0, padx=0, pady=30) 

Medical_information =tk.Label(root, text="   MEDICAL INFORMATION   ", font =("TIMES NEW ROMAN", 20), bg="#F1C40F",  fg="#030303")
Medical_information.grid(row=2, column=2, padx=0, pady=0)

#USER INFORMATION
donator_full_name = tk.Label(root, text="        Full Name      :", font =("TIMES NEW ROMAN", 20), bg="#030303",  fg="#F1C40F")
donator_full_name.grid(row=3, column=0, padx=0, pady=0, sticky="ew")
donator_full_name_entry = tk.Entry(root, font=("arial", 20),)
donator_full_name_entry.grid(row=3, column=1, sticky="ew")

donator_email = tk.Label(root, text="    Email Address   :", font =("TIMES NEW ROMAN", 20), bg="#030303",  fg="#F1C40F")
donator_email.grid(row=4, column=0, padx=0, pady=10, sticky="ew")
donator_email_entry =tk.Entry(root, font=("arial", 20))
donator_email_entry.grid(row=4, column=1, sticky="ew")

donator_age = tk.Label(root, text="            Age             :", font =("TIMES NEW ROMAN", 20), bg="#030303",  fg="#F1C40F")
donator_age.grid(row=5, column=0, padx=0, pady=10, sticky="ew")
donator_age_combobox = ttk.Combobox(root, font=("arial", 20), values=["18", "19", "20", "21","22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40"])
donator_age_combobox.grid(row=5, column=1, sticky="ew")

donator_gender = tk.Label(root, text="          Gender         :", font =("TIMES NEW ROMAN", 20), bg="#030303",  fg="#F1C40F")
donator_gender.grid(row=6, column=0, padx=0, pady=10, sticky="ew")
donator_gender_combobox = ttk.Combobox(root, font=("arial", 20), values=["", "MALE", "FEMALE"])
donator_gender_combobox.grid(row=6, column=1, sticky="ew")

donator_contact_number =tk.Label(root, text="   Contact number   :", font =("TIMES NEW ROMAN", 20), bg="#030303",  fg="#F1C40F") 
donator_contact_number.grid(row=7, column=0, padx=0, pady=10, sticky="ew")
donator_contact_number_entry = tk.Entry(root, font=("arial", 20))
donator_contact_number_entry.grid(row=7, column=1, sticky="ew")

donator_address = tk.Label(root, text="         Address          :",font =("TIMES NEW ROMAN", 20), bg="#030303",  fg="#F1C40F")
donator_address.grid(row=8, column=0, padx=0, pady=10, sticky="ew" )
donator_address_entry = tk.Entry(root, font=("arial", 20))
donator_address_entry.grid(row=8, column=1, sticky="ew")

donator_donation_date = tk.Label(root, text="    Donation date    :",font =("TIMES NEW ROMAN", 20), bg="#030303",  fg="#F1C40F" )
donator_donation_date.grid(row=10, column=0, padx=0, pady=10, sticky="ew" )
donator_donation_date_combobox = ttk.Combobox(root, font=("ARIAL", 20), values=["20 January 2024", "27 January 2024"]) 
donator_donation_date_combobox.grid(row=10, column=1, padx=0, pady=10, sticky="ew" )

#for donation_date in range (1,31):
    #print(donation_date)

#MEDICAL INFORMATION
donator_blood_type = tk.Label(root, text="       Blood Type       :", font =("TIMES NEW ROMAN", 20), bg="#030303",  fg="#F1C40F")  
donator_blood_type.grid(row=3, column=2, sticky="ew")
donator_blood_type_combobox = ttk.Combobox(root, font=("ARIAL", 20), values=["", "A", "B", "AB", "O"])
donator_blood_type_combobox.grid(row=3, column=3, sticky="ew")

donator_chronic_disease= tk.Label(root, text="     Cronic disease      :", font =("TIMES NEW ROMAN", 20), bg="#030303",  fg="#F1C40F")
donator_chronic_disease.grid(row=4, column=2, sticky="ew")
donator_chronic_disease_combobox = ttk.Combobox(root, font=("arial", 20), values=["None", "DIABETES", "HIGH BLOOD PRESURE", "ASTHMA", "CANSER", "HIV", "AIDS"])
donator_chronic_disease_combobox.grid(row=4, column=3, sticky="ew")

donator_previous_travelled =tk.Label(root, text="  Previous Travelled  :", font =("TIMES NEW ROMAN", 20), bg="#030303",  fg="#F1C40F")
donator_previous_travelled.grid(row=5, column=2, sticky="ew")
donator_previous_travelled_combobox = ttk.Combobox(root, font=("arial", 20), values=["None","ASIA", "AFRICA", "EUROPE", "ANTARTICA", "NORTH AMERICA", "SOUTH AMERICA", "AUSTRALIA" ])
donator_previous_travelled_combobox.grid(row=5, column=3, sticky="ew")

donator_physical_factor = tk.Label(root, text="    Physical Factor     :", font =("TIMES NEW ROMAN", 20), bg="#030303",  fg="#F1C40F")
donator_physical_factor.grid(row=6, column=2, sticky="ew") 
donator_physical_factor_combobox=ttk.Combobox(root, font=("arial", 20), values=["None", "pregnant", "obesity", "Blind",])
donator_physical_factor_combobox.grid(row=6, column=3, sticky="ew")

donator_medical_center = tk.Label(root, text="     Medical center     :", font =("TIMES NEW ROMAN", 20), bg="#030303",  fg="#F1C40F")
donator_medical_center.grid(row=7, column=2)
donator_medical_center_combobox=ttk.Combobox (root, font=("arial", 20), values=["Hospital Sultan Ismail Johor Bahru (JOHOR)","Hospital Mersing (JOHOR)","Hospital Sultan Abdul Halim (KEDAH)","Hospital Sultanah Bahiyah (KEDAH)","Hospital Sultan Ismail Petra (KELANTAN)","Hospital Pasir Mas (KELANTAN)","Hospital Alor Gajah (MELAKA)","Hospital Port Dickson (NEGERI SEMBILAN)","Hospital Tampin (NEGERI SEMBILAN)","Hospital Pekan (PAHANG)", "Hospital Sultan Hj Ahmad Shah(PAHANG)","Hospital Balik Pulau (PULAU PINANG)","Hospital Sungai Bakap(PULAU PINANG)","Hospital Bahagia Ulu Kinta (PERAK)", "Hospital Teluk Intan(PERAK)","Hospital Tuanku Fauziah (PERLIS)","Hospital Beaufort (SABAH)","Hospital Queen Elizabeth (SABAH)","Hospital Kudat (SABAH)","Hospital Sarikei (SARAWAK)","Hospital Kapit (SARAWAK)","Hospital Sri Aman (SARAWAK)","Hospital Sultanah Nur Zahirah (TERENGGANU)", "Hospital Hulu Terengganu (TERENGGANU)","Hospital Shah Alam (SELANGOR)","Hospital Cyberjaya (SELANGOR)","Hospital Kuala Lumpur (WP KUALA LUMPUR)", "Hospital Labuan (WP LABUAN)","Hospital Putrajaya (WP PUTRAJAYA)"])
donator_medical_center_combobox.grid(row=7, column=3, sticky="ew")

donator_height= tk.Label(root, text="            Height            :", font =("TIMES NEW ROMAN", 20), bg="#030303",  fg="#F1C40F") 
donator_height.grid(row=8, column=2, sticky="ew")
donator_height_entry = tk.Entry(root, font=("arial", 20))
donator_height_entry.grid(row=8, column=3, sticky="ew")

donator_weight = tk.Label(root, text="           Weight            :", font =("TIMES NEW ROMAN", 20), bg="#030303",  fg="#F1C40F")
donator_weight.grid(row=9, column=2, sticky="ew")
donator_weight_entry = tk.Entry(root, font=("arial", 20))
donator_weight_entry.grid(row=9, column=3, sticky="ew")

donator_BMI = tk.Label(root, text="             BMI             :", font =("TIMES NEW ROMAN", 20), bg="#030303",  fg="#F1C40F")
donator_BMI.grid(row=10, column=2, padx=20, pady=20 )
donator_BMI_entry = tk.Entry(root, font=("arial", 20))
donator_BMI_entry.configure(state='disabled')
#donator_BMI_entry.grid(row=10, column=3)
output_label = tk.Label(root, font=("arial", 20), bg="#030303",  fg="#F1C40F")
output_label.grid(row=10, column=3, sticky="ew")

accept_var = tk.StringVar(value="Not Accepted")
terms_check = tk.Checkbutton(root, text= "I accept the terms and conditions.", variable=accept_var, onvalue="Accepted", offvalue="Not Accepted", font=("TIMES NEW ROMAN", 20 ), bg="#030303",  fg="#F1C40F")
terms_check.grid(row=12, column=0, sticky="ew")

#check button
button = tk.Button(root, text="            REGISTER           ", command= REGISTER, font=("TIMES NEW ROMAN", 20 ), bg="#F1C40F",  fg="#030303")
button.grid(row=11, column=3, padx=20, pady=10, sticky="ew")

button2 = tk.Button(root, text="RESET", command= RESET_WINDOW, font=("TIMES NEW ROMAN", 20 ), bg="#F1C40F",  fg="#030303") 
button2.grid(row=11, column=2, padx=20, pady=10, sticky="ew")

root.mainloop()