# install
import subprocess
import sys

SCRIPTS = sys.argv[1]
BIN = sys.argv[2]

excluded = ['Makefile', 'install.py', 'uninstall.py']

cmd = ['ls', SCRIPTS]

proc = subprocess.Popen(cmd, stdout=subprocess.PIPE,
    stderr=subprocess.PIPE)
stdout, stderr = proc.communicate()

for script in stdout.split('\n'):
    if len(script) > 0 and script not in excluded:
        cmd = ['ln', '-s', '%s/%s' % (SCRIPTS, script), BIN]
        print '     Installing script <%s>' % script
        proc = subprocess.Popen(cmd, stdout=subprocess.PIPE,
            stderr=subprocess.PIPE)
        stdout, stderr = proc.communicate()