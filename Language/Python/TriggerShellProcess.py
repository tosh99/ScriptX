from subprocess import Popen, PIPE


def runProcess(command):
    p = Popen(command, stdout=PIPE, stderr=PIPE, shell=True)
    output, error = p.communicate()
    if p.returncode != 0:
        s = str(error, 'utf-8')
        return s
    else:
        print(output)
        return True

runProcess(['dir'])
