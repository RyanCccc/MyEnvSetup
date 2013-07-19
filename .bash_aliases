pullreq() {
    if [ $# -gt 0 ]; then
        hub pull-request -i $1 -b PolicyStat:master -h PolicyStat:issue_$1     
    else
        echo "Usage: pullreq issue_num"
    fi
}

vup(){
    cd ~/MyProject/PolicyStat
    vagrant up --no-provision
}

vssh(){
    vagrant ssh
}

# bash
# No ttyctl, so we need to save and then restore terminal settings
vim()
{
    local STTYOPTS="$(stty --save)"
    stty stop '' -ixoff
    command vim "$@"
    stty "$STTYOPTS"
}

sshaws(){
    ssh root@54.213.40.47
}

rs(){
    python manage.py runserver 8888
}

rshell(){
    python manage.py shell
}
