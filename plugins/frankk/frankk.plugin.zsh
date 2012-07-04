# ----------------------------------------------------------------------
# ALIASES
# ----------------------------------------------------------------------
alias bc='bc -l'
alias du='du -h --max-depth=1'
alias duf='du -sk * | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'
alias fn='find . -name'
alias th='history | tail -20'
alias ts='tail -f /var/log/syslog'
alias ta='tail -f /var/log/apache2/access.log'
alias te='tail -f /var/log/apache2/error.log'
alias h='cat /etc/hosts'
alias eh='sudo vi /etc/hosts'
alias m='mount | column -t'
alias .zshrc='source ~/.zshrc'

# ----------------------------------------------------------------------
# MISC FUNCTIONS
# ----------------------------------------------------------------------

# Generate a random password.
genpasswd() {
	l=$1
	[[ "$l" == "" ]] && l=16
	tr -dc A-Za-z0-9_ < /dev/urandom | head -c $l | xargs
}

