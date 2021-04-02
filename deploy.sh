git add .

git diff --name-only origin/master | perl -pe 's/\n/ /'| read -d '' x

commit_message="update "$x

git commit -m $commit_message

git push -u origin master


