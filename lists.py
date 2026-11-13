# LIST 
# list is foundation of handling tabular data before pandas
# list applications:
# stores,clean,apply,replace,perform,generate,represent the data

# Create lists
# fruits=["apple","banana","orange"]
# print(fruits)

# #indexing
# # print(fruits[1])  #print banana bcuz banana is at position 1 in list 
# # print(fruits[-2]) #also print banana bcuz negative indexing 

# #updating list
# fruits[2]="mango"
# print(fruits[2])

# #add items
# # fruits.append("grapes")
# fruits.insert(0,"papaya")
# print(fruits)



# #removing items
# fruits.remove("mango")
# fruits.pop(1)   #like stack it pop the top element from the list or pointed by top pointer in ()
# print(fruits)

# #slicing
# num=[10,20,30,40,50,60,70]
# print(num[:3])  #print starting three elements
# print(num[1:3]) # print numbers at position 1,2 not 3 not 0
# print(num[-3:]) # print last three elemnts

#Using loops through list
fruits=["apple","banana","orange"]
for m in fruits:
    print("fruits:",m)

#clean city names in the list
cities=['   MUMbai',  'KOlkatta','DELhI   ']
cleaned=[]
for c in cities:
    cleaned.append(c.strip().title())
print(cleaned)


#fix wrong spelling through list
wrong=["mummbai","dilli"]
fix=[]
for i in wrong:
    i=i.replace("mummbai","MUMBAI").replace("dilli","DELHI")
    fix.append(i)
print(fix)

#Extract years from the words
words=["EMP-2024","MRP-2024","VIV-2008"]
year=[]
for i in words:
    year.append(i[-4:])
print(year)