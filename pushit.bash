init(){
    echo "creating "$1 "with src" $2;
    gh repo create $1 --private --source=$2 --remote=upstream
    cd $2
    echo "# dummy-test" >> README.md
    git init
    echo "initalized git repo"
    git add README.md
    git add .
    echo "added files succesfully"
    git commit -m "initial commit"
    echo "commited succesfully"
    git remote add origin git@github.com:sudir-hash/$1.git
    echo "added remote succesfully"
    git push --set-upstream origin master
    echo "pushed succesfully"
}
init $@

# bash /home/sudhir/projects/gp.bash $(basename "$PWD") "$PWD"
