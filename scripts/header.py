#! /usr/bin/python3

def header(message):
    return bar() + title(message) + bar()

def bar():
    return "#" + "-"*70 + "#\n" 
def title(message):
    # Width is set to 72
    # 2 '#' on either side
    # for a workable width of 70
   
    w = 70
    buf = (w-len(message))//2
    of =  (w - len(message)) % 2

    return "#" + " "*buf \
            + message \
            + " "*(buf+of) + "#" \
            + "\n"

print(header(input()))
