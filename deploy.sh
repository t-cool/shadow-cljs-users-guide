make

git add .

git diff --name-only origin/master | perl -pe 's/\n/ /'| pbcopy

commit_message="update: $(pbpaste)"

git commit -m $commit_message

git push -u origin master

