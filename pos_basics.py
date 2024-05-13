from nltk.tag.stanford import StanfordPOSTagger
from nltk.tag import CRFTagger
import os




english_postagger = StanfordPOSTagger('/Users/nprajakta/Downloads/HP3-master/tagger/english-bidirectional-distsim.tagger','/Users/nprajakta/Downloads/-master/tagger/stanford-postagger.jar')
sentence = "Prajakta Bhagyshree Hritik Anurag Ayush Adarsh"
print(english_postagger.tag(sentence.split()))
#	op_file = open("output.txt", "w")
"""
with open('lol.txt') as fp:
    for line in fp:
        sentence = line.strip('\n')
        token_array = english_postagger.tag(sentence.split())
        op_file.write("\n".join((str(elem) for elem in token_array)))
        print(sentence)
"""
#ct = CRFTagger()
#print(ct.tag(sentence.split()))
