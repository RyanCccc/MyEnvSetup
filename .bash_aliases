pullreq() {
    if [ $# -gt 0 ]; then
        hub pull-request -i $1 -b PolicyStat:master -h PolicyStat:issue_$1     
    else
        echo "Usage: pullreq issue_num"
    fi
}

vup(){
    cd ~/policystat/PolicyStat
    vagrant up --no-provision
}

vssh(){
    vagrant ssh
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

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
    ssh -i ~/.ssh/ryanc.pem ubuntu@ec2-54-213-10-72.us-west-2.compute.amazonaws.com
}
