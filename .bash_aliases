
alias grepm='grep -Hrn'
# -H: print file name
# -r: recursive
# -n: print line number

alias g='git'

# Docker
alias docker_purge='docker rm -f $(docker ps -aq); docker volume prune -f; docker network prune -f'
alias docker_rmi_dangling='docker rmi $(docker images -f "dangling=true" -q)'
function docker_ls_tag () { docker images --filter=reference="*/*:$1"; }
function docker_rmi_tag () { docker rmi $(docker images -q --filter=reference="*/*:$1"); }

#--------------------- Prompt
NONE='\[\033[0m\]'      # default coloring
K='\[\033[0;30;1m\]'    # black
R='\[\033[0;31;1m\]'    # red
G='\[\033[0;32;1m\]'    # green
Y='\[\033[0;33;1m\]'    # yellow
B='\[\033[0;34;1m\]'    # blue
M='\[\033[0;35;1m\]'    # magenta
C='\[\033[0;36;1m\]'    # cyan
W='\[\033[0;37;1m\]'    # white
export PS1="$R\u$Y@$W\h $G\w$Y$ $w\$(__git_ps1 '[%s]') $NONE"

# Kisio
alias vpn='globalprotect connect --portal portail-vpn.canaltp.fr'
