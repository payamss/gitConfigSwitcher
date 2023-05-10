read -r -p "Switch git between personal [p] or work [w]-> " answer
if [[ "$answer" == 'p' || "$answer" == 'P' || "$answer" == 'personal' || "$answer" == 'PERSONAL' ]]; then
    ssh-add -D
    git config --global user.email "put personal email here"
    ssh-add ~/.ssh/id_rsa_personal 
fi
if [[ "$answer" == 'w' || "$answer" == 'W' || "$answer" == 'work' || "$answer" == 'WORK' ]]; then
    ssh-add -D
    git config --global user.email "put work email here"
    ssh-add ~/.ssh/id_rsa
fi
git config --list