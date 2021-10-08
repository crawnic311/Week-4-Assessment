#Part 2: Data Manipulation with Python
#Assigns the variable log_file with the designate opened file
log_file = open("um-server-01.txt")

#This function reads the file stored in the variable log_file line by line
def sales_reports(log_file):
#For loops reads through each line in log_file variable
    for line in log_file:
#Removes whitespace from the current line
        line = line.rstrip()
#This line creates a sublist starting from the first element(0) of the
#current line and assignes them to the day variable
        day = line[0:3]
#Basic if statement to determine whether or not to print the current line
        if day == "Mon":
#Prints the current line if the condition above evaluated to true
            print(line)

#calles a function called sales_reports
sales_reports(log_file)
