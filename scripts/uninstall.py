# uninstall all libraries
import subprocess
import sys

BIN = sys.argv[1]

# get all scripts to uninstall
cmd = ['ls', BIN]
proc = subprocess.Popen(cmd, stdout=subprocess.PIPE,
        stderr=subprocess.PIPE)
stdout, stderr = proc.communicate()

scripts = [script for script in stdout.split('\n') if len(script) > 0]
for script in scripts:
    cmd = ['rm', '%s/%s' % (BIN, script)]
    print '     Removing script: <%s>' % script
    proc = subprocess.Popen(cmd, stdout=subprocess.PIPE,
        stderr=subprocess.PIPE)
    stdout, stderr = proc.communicate()