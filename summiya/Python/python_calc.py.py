#make a calculator
print ("1-Add")
print("2-Sub")
print ("3-Mul")
print ("4-Div")
print("5-Even/Odd Check")
print("6-Percentage Calculation")
#take input 
select = int(input("Enter option: "))

if(select in [1,2,3,4]):
   num1 = float(input("Enter First Number: "))
   num2 = float(input("Enter Second Number: "))

   if(select ==1):
       print("your result is:", num1 + num2) 
   elif(select ==2):
       print("your result is:", num1 - num2) 
   elif(select ==3):
       print("your result is:", num1 * num2) 
   elif(select ==4):
       if (num2 == 0):
            print("Error: Cannot divide by zero")
       else:
            print("Your result is:", num1 / num2)
#check for even or odd
    
elif (select == 5):
    number = float(input("Enter a number to check even or odd: "))
    if (number % 2 == 0):
        print( "The Number Is Even")
    else:
        print("The Number Is Odd")

elif select == 6:
    num1 = float(input("Enter the part value: "))
    num2 = float(input("Enter the whole value: "))
    if num2 == 0:
        print("Error: It cannot be zero")
    else:
        percent = (num1 / num2) * 100
        print("The percentage is: ", percent)
    

else:
    print("Invalid input")