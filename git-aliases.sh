# git-aliases.sh
eval "git config --global alias.pb '!git fetch -p && branches_to_delete=\$(git branch -vv | grep '\''origin/.*: gone'\'' | awk '\''{print \$1}'\'') && if [ -z \"\$branches_to_delete\" ]; then echo \"No branches to delete\"; else echo \$branches_to_delete | xargs -r git branch -d; fi'"

eval "git config --global alias.sp '!f() { git switch \"\$1\" && git pull; }; f'"

eval "git config --global alias.ac '!f() { git add . && git commit -m \"\$@\"; }; f'"