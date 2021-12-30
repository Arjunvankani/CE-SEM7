def start(c):
    if (c == 'a'):
        dfa = 1
    elif (c == 'b'):
        dfa = 3
    else:
        dfa = -1
    return dfa
    

def s1(c):
    if (c == 'a'):
        dfa = 2
    elif (c == 'b'):
        dfa = 4
    else:
        dfa = -1
    return dfa
    
# This function is for the second
# dfa = state of DFA
def s2(c):
    if (c == 'b'):
        dfa = 3
    elif (c == 'a'):
        dfa = 1
    else:
        dfa = -1
    return dfa
    
# This function is for the third
# dfa = state of DFA
def s3(c):
    if (c == 'b'):
        dfa = 3
    elif (c == 'a'):
        dfa = 4
    else:
        dfa = -1
    return dfa
    
# This function is for the fourth
# dfa = state of DFA
def s4(c):
    dfa = -1
    return dfa
    
def isAccepted(String):
        
    # store length of Stringing
    l = len(String)
        
    # dfa tells the number associated
    # with the present dfa = state
    dfa = 0
    for i in range(l):
        if (dfa == 0):
            dfa = start(String[i])
    
        elif (dfa == 1):
            dfa = s1(String[i])
    
        elif (dfa == 2) :
            dfa = s2(String[i])
    
        elif (dfa == 3) :
            dfa = s3(String[i])
    
        elif (dfa == 4) :
            dfa = s4(String[i])
        else:
            return 0
    if(dfa == 3) :
        return 1
    else:
        return 0


    
String = input("Input String: ")
    
#String = "aaaaaabbbb"
if (isAccepted(String)) :
    print("ACCEPTED")
else:
    print("NOT ACCEPTED")
