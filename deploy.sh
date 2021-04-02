bundle exec asciidoctor -o docs/UsersGuide.html -b html5 -r asciidoctor-diagram docs/UsersGuide.adoc

git add .

git diff --name-only origin/master | perl -pe 's/\n/ /'| pbcopy

commit_message="update: $(pbpaste)"

git commit -m $commit_message

git push -u origin master

