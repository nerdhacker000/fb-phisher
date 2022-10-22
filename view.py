import time
import subprocess, os

shell_subprocess = subprocess.run("./view.sh","arguments"], shell=True)
range_list = (0,1,2,3,4,5,6,7,8,9)

def do_actions():
    i = 0
    while True:
        i += 1
        print("{} {} {} ".format(" Password file opens", i, "\n")
        shell_subprocess
        time.sleep(60)
        
        if i == 9:
            break
        
if __name__ = '__main__':
    do_actions()
    
