import subprocess
import shlex

message = input("Enter commit message: ")
# Add files to commit
subprocess.run(shlex.split('git add .'))

# Commit changes
subprocess.run(shlex.split('git commit -m "' + message + '"')) 

# Push to GitHub
push_cmd = 'git push -u origin main'
subprocess.run(shlex.split(push_cmd))