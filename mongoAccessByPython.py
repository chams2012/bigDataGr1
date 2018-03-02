
# se connecter à mongodb
import pymongo from pymongo
import MongoClient 

#connection a la base
connection = MongoClient('localhost', 27017) 
db = connection.test 

# noms des collections
names = db.names 

# exemple affichage
item = names.find_one()
print(item['name'])
 