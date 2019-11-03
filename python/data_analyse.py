from os import path
import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
import jieba
from pandas.core.frame import DataFrame
from keras.preprocessing.text import Tokenizer
import matplotlib.pyplot as plt
from wordcloud import WordCloud,ImageColorGenerator

def cut_texts(texts=None, word_len=1, savename=None):
    #停用词
    filename = path+"stop_word//stop_word.txt"
    f = open(filename,"r")
    stopwords = list()
    for line in f.readlines():
        line = line.strip()
        if not len(line):
            continue
    
        stopwords.append(line)
    f.close
    #分词
    texts_cut=[]
    text_one=[]
    if word_len > 1:
        for text in texts:
            text_cut=[]
            words=jieba.lcut(text)
            for word in words:
                if len(word)>=word_len and word not in stopwords:
                    text_cut.append(word)
                    text_one.append(word)
            texts_cut.append(text_cut)
    else:
        for text in texts:
            words=jieba.lcut(text)
            for word in words:
                text_one.append(word)
            texts_cut.append(words)
    if savename is not None:
        file=open(savename,'w',encoding='utf-8')
        file.write(' '.join(text_one))
        file.close()
    return texts_cut

path="E:\\Project\\weibo_ciyun\\python\\";
#导入数据
data=pd.read_csv(path+"500.csv")
x = data['evaluation']

#分词
X_cut= cut_texts(texts=x, word_len=2,savename=path+'ciyun.txt')

# 对文本中的词进行统计计数，生成文档词典，以支持基于词典位序生成文本的向量表示。
tokenizer = Tokenizer(num_words=2000)
tokenizer.fit_on_texts(texts=X_cut)
index=tokenizer.word_index
counts=tokenizer.word_counts


print("success")


"""
#导入另一个测试集(未标注)进行预测，并导出结果
filename='xiaomi5a.csv'
test_data=pd.read_csv(filename)
x = test_data['comment']
X_cut = cut_texts(texts=x, need_cut=True, word_len=2, savepath=None)
X_seq = text2seq(texts_cut=X_cut,maxlen=maxlen,tokenizer=tokenizer)
X_seq = np.array(X_seq)
y_predict = model.predict(X_seq)
y_predict_label = label2tag(predictions=y_predict, y=y)
#Series转成dateframe
out_x=x.to_frame(name=None)
out_y=DataFrame(y_predict_label)
out_x.to_csv('x.csv')
out_y.to_csv('y.csv')
"""


