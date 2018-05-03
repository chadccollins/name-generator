import sys
import requests

class Gen(object):
    
    def getName(self):
          
        # build a uri to get a random noun
        nounUri = "http://api.wordnik.com/v4/words.json/randomWord?hasDictionaryDef=true&includePartOfSpeech=noun&maxLength=7&api_key=8ed138db325dc56264403079d360f20372ed2727d1252cd4b&minDictionaryCount=10"
        # and adjective
        adjUri = "http://api.wordnik.com/v4/words.json/randomWord?hasDictionaryDef=true&includePartOfSpeech=adjective&maxLength=7&api_key=8ed138db325dc56264403079d360f20372ed2727d1252cd4b&minDictionaryCount=10"

        # now go get them
        noun = requests.get(nounUri)
        adj = requests.get(adjUri)

        return noun.json()["word"] + adj.json()["word"]

g = Gen()

n = int(sys.argv[1])
if n is None:
    n = 1

for x in range(0, n):
    print (g.getName())
