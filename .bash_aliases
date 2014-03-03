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
