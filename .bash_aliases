# .aliases
# history ..1991 rogera
#         ..2013.. die ersten gehen mit marke in pension, unienv archive
#
#         wolfhesse
#
alias a="alias"

a aa0off_proxyoff="export http_proxy='';export https_proxy='';export HTTP_PROXY='';export HTTPS_PROXY=''"
a aa1on_proxyon0="export http_proxy='http://0.0.0.0:3128';export https_proxy='http://0.0.0.0:3218';export HTTP_PROXY='http://0.0.0.0:3128';export HTTPS_PROXY='http://0.0.0.0:3218'"
a aa3on_proxyon21="export http_proxy='http://10.0.0.21:3128';export https_proxy='http://10.0.0.21:3218';export HTTP_PROXY='http://10.0.0.21:3128';export HTTPS_PROXY='http://10.0.0.21:3218'"
a aa4on_proxyonrmz="export {http,https,ftp}_proxy='http://138.201.88.95:3128';export {HTTP,HTTPS,FTP}_PROXY='http://138.201.88.95:3218'"

#r
a bpnp='bluepill --no-privilege'

a aatdate=" date +'%Y%m%d' "
a aattext=" vim r$(aatdate).txt "

### the docker group
a aadsudo_docker='sudo docker'
a d='docker'
a dl='docker ps -l -q'
a fig='docker-compose'

### the git group
a ga='git add'
# a ga.="git add . "
# a ga.a="git add . -A "
# ga. & ga.a per r20131120 default with -A flag
a ga.="git add -A . "
a gb="git branch "
a gci="git commit -a -m "
a gcl="git config -l "
a gco="git checkout "
a gfetch='git fetch'
a gl='git lg'
a gp='git push'
a gpull='git pull'
a gpush='git push'
a gmerge='git merge'
a grh='git reset --hard'
a gs="git status "
a gwp='git commit -a -m "wp"'


### the unienv bin group
a uxtblue="~/unienv.d/bin/xtblue $* &"
a uxtred="~/unienv.d/bin/xtred $* &"

### the ruby group
a 2irb="irb --readline -r irb/completion $*"



### interactive shell

a cls="clear"


a h="history"

# typo support
a grpe="grep" # r20131120 ziemlich alt..
a hotp='htop' # r20160209
a m="less" # ~1998?
a mroe="less" # ecosystems
a moer="less" # ecosystems
a more="less" # ecosystems

a j="jobs"

a l="ls -Fa"
a lr="ls -FaR"
a ll="ls -alF"
# r20131120 a llh="ll -h"


a r="fc -s"
# r20131120 a ssm='sudo su -'
a t="cd *; l"
a tf="tail -f"

# r20150728 phasing out xemacs once and for all
a xemax="emacs -nw"
a xmx="emacs -nw"

# r20131120 a xl="logout"
a xx="exit"

a g="cd $*"
# r20131120 a go="cd $*"
a 0="cd .."
a 1="cd 1_*; l"
a 2="cd 2_*; l"
a 3="cd 3_*; l"
a 4="cd 4_*; l"
a 5="cd 5_*; l"
a 6="cd 6_*; l"
a 7="cd 7_*; l"
a 8="cd 8_*; l"
a 9="cd 9_*; l"


#a vi="pfe32 $*"
#a vi="vim $*"
a 2vim="vim -X $*"


# cvsshorties
# r20131120 a cdf=cvsdifffinder

a 777="chmod 777 "
a 777d="find . -type d -exec chmod 777 {} \;"
a 775="chmod 775 "
a 664="chmod 664 "

a s777="chmod 777 "
a s777d="find . -type d -exec chmod 777 {} \;"
a s775="chmod 775 "
a s664="chmod 664 "

a a_e="(cd ~;vi .aliases); a_r"
a a_E=a_e
a a_r=". ~/.aliases; a"

# dos commands
# r20131120 a dir="l"
# r20131120 a edit="vi"

# project specific
# r20131120 a grogera="g //rogera//rogera; l"
# r20131120 a grogera="g_r"
# r20131120 a gcyg="g //d/bin/cygnus/cygwin-b20; l"
# r20131120 a gctmp="g //c/temp/"
# r20131120 a gtmp="gctmp"
# r20131120 a gdtmp="g //d/temp/"

# @home
# r20131120 a gs1="g //c/server001; l"
# r20131120 a gs2="g //c/server002; l"
# r20131120 a gs3="g //c/server003; l"
# r20131120 a gss="g //c/smlsrv; l"


# @bsd
a gports="g /usr/ports; l"

# jrun support
# r20131120 a glogs="g //e/jrun/jsm-default/logs"
# r20131120 a vjlog="view_jrunlog.sh"

# db tool
# r20131120 a isa="isql -Usa -P"
# r20131120 a isagc="mysql dbDebisGC"
# r20131120 a isegc="mysql -E dbDebisGC"

# reach homebase
# r20131120 a ghome="ssh rogera.dyndns.org"
# r20131120 a mc="ssh mc"
# r20131120 a faust="ssh faust"
# r20131120 a gthor="ssh -X 192.168.0.199"
# r20131120 a ghape="ssh -X 192.168.0.182"
# r20131120 a gfaust="ssh -X 192.168.0.189"
a gcsyc="ssh -p 401 -X coder@service.yasssu.com"
a grsyc="ssh -p 401 -X rogera@service.yasssu.com"

# ruby stuff
a be="bundle exec $*"

echo aliases loaded..
#echo ""

