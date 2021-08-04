bundle exec asciidoctor -o html/index.html -b html5 -r asciidoctor-diagram html/UsersGuide.adoc

asciidoctor-pdf -a scripts=cjk -a pdf-theme=default-with-fallback-font -r asciidoctor-diagram html/UsersGuide.adoc

git add .

git diff --name-only origin/master | perl -pe 's/\n/ /'| pbcopy

changed_files=$(pbpaste)

commit_message="updated: ${changed_files}"

git commit -m "${commit_message}"

git push -u origin master

