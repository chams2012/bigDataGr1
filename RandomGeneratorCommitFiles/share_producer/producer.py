
import json
import time
import random

import yaml
import datetime
from random import randrange
from dateutil.tz import tzlocal
from kafka import KafkaProducer
from kafka.errors import KafkaError
from kafka.future import log
from pymongo import MongoClient
from bson import json_util
from bson.objectid import ObjectId



with open("config.yml", 'r') as ymlfile:
     cfg = yaml.load(ymlfile)

def get_random_doc(collectionin):
    count = collectionin.count()
    return collectionin.find()[random.randrange(count)]

def get_content_doc(collctn,docfile):
    return collctn.find_one({"id": docfile["id"]})

#def get_commit(collcmmt):
#    return collcmmt.find()[random.randrange(count)]





"""creer un nouveau file en le selectionnant aleatoirement , aini que le repo auquel on veut l'ajouter, 
    on doit modifier l'id dans file et son contenu et mofier le repo_name de file"""
def createDocument():
    rfile=get_random_doc(collFiles)
    #targetfile=json_util.dumps(rfile)
    rcontent=get_content_doc(collContents,rfile)
    rrepo=get_random_doc(collRepoDemo)
    id = ObjectId()
    rfile['id']=id
    rfile['repo_name']=rrepo['repo_name']
    rcontent['id']=id
    rcontent['copies']=1
    # commit a creer ou modifier ?
    targetcontent=json_util.dumps(rcontent)
    targetfile=json_util.dumps(rfile)
    toReturn= {'new':'true','file':targetfile, 'content':targetcontent}
    return toReturn


""" le type de modification adopte : ajout de la date utc  """
def choiceModification(contentDoc):
    now = datetime. datetime.now(tzlocal())
    fmt = now.strftime('%Y-%m-%d %H:%M:%S %Z')
    tmp=contentDoc['content']
    contentDoc['content']=fmt + " "+ tmp
    # commit a creer ou modifier ?
    #return content



"""modifer un fichier consiste a modifier on contenu , pour simplifier on ajoute la date en tete duu contenu
 on doit transmettre le file et content en fusionant les 2 json """
def modifyDocument():
    rfile=get_random_doc(collFiles)
    rcontent=get_content_doc(collContents,rfile)
    choiceModification(rcontent)
    targetcontent=json_util.dumps(rcontent)
    targetfile=json_util.dumps(rfile)
    toReturn= {'new':'false','file':targetfile, 'content':targetcontent}
    return toReturn


""" la connection a la base mongo avec configuration depuis config.yml"""
def connect():
    global client
    global db
    global collFiles
    global collContents
    global collCommits
    global collRepoDemo
    global cfg
    client = MongoClient(cfg['mongo']['host'], cfg['mongo']['port'])
    db = client[cfg['mongo']['db']]
    collFiles = db[cfg['mongo']['files']]
    collContents = db[cfg['mongo']['contents']]
    collCommits = db[cfg['mongo']['commits']]
    collRepoDemo =db[cfg['mongo']['reposdemo']]
""" on effectue un sleep entre les envoies """
def main():
    connect()

    producer = KafkaProducer(bootstrap_servers=cfg['kafka']['servers'],api_version=(0,10))
    while True:
     try:
       
       typeModi=randrange(1,3)
       if typeModi == 1:
          doc=createDocument()
       elif typeModi == 2:
          doc=modifyDocument()
       tosend = json_util.dumps(doc)
       producer.send(cfg['kafka']['topic'], tosend)
       producer.flush()
     except KafkaError:
        log.exeption()
        pass
     time.sleep(5)


if __name__ == "__main__":
    try:
      main()
    except (KeyboardInterrupt, SystemExit):
     print("producer stopped !!!")
