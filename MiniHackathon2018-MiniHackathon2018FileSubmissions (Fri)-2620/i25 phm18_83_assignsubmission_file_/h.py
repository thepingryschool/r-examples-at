
import math
import PatternArray
import sys
line = PatternArray.getList()
for i in range(len(line)):
    sys.stdout.write(line[i])
    if(i%18 == 0):
        print('')
a = line.index(',')
b = line.index('*')

ax = a%18
ay = int(a/18)
bx = b%18
by = int(b/18)
print(math.sqrt(((ax-bx)**2)+((ay-by)**2)))
'''
f = open('scantronData.txt','r')
x = f.readlines()
f.close()
answers = x[:10]
x = x[10:]
students = []
for i in range(10):
    students.append(x[:10])
    x = x[10:]
scores = []
for i in range(10):
    counter = 0
    for j in range(10):
        if(answers[j] == students[i][j]):
            counter += 1
    scores.append(counter)
'''  
'''
import math
f = open('integers.txt','r')
x = f.readlines()
f.close()

for i in range(len(x)):
    x[i] = x[i][:4]
    x[i] = int(x[i])
    '''
'''
look = x[0]
x = x[1:]
counter = 0
for i in range(len(x)-2):
    test = x[i]+x[i+1]+x[i+2]
    if(test == look):
        counter += 1
print(counter)
'''
'''
def ip(n):
    if(n<2):
        return False
    f = 2
    while(f<n):
        if(n%f == 0):
            return False
        f += 1
    return True
counter = 0
for i in range(len(x)):
    if(ip(x[i])):
        counter += 1
print(counter)
'''
'''
from statistics import median
import create_list

a = create_list.get()
print(median(a))
'''
