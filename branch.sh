#! /bin/bash

# git-create-branch <ranjith>
 
if [ $# -ne 1 ]
then
echo 1>&2 "Usage: $0 ranjith"
exit 127
fi
 
branch_name=$1
git push origin master:refs/heads/$ranjith
echo "git push origin master:refs/heads/$ranjith"
git fetch origin
git checkout --track -b $branch_name origin/$ranjith
git pull
