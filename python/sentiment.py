import sys
from snownlp import SnowNLP

text_path=sys.argv[1]
#print(text_path)

def snowanalysis(textlist):
    sentimentslist = []
    average_sentiment=0
    i=0

    f= open(text_path+'sentiment.txt','w',encoding='utf-8') 


    for li in textlist:
        s = SnowNLP(li)
        average_sentiment+=s.sentiments
        i+=1
        f.write(li+ str(s.sentiments)+"\n")
        #print(str(li) + str(s.sentiments))
        #print(s.keywords(3))
        #print('\n')
        sentimentslist.append(s.sentiments)
    f.close()    
    print("average_sentiment="+ str(average_sentiment/i))    
    
        


with open(text_path+'resou.txt','r',encoding='utf-8') as file:

    text = file.readlines() 

snowanalysis(text)