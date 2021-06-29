export TERM=xterm


alias vi='nvim'
alias v= 'nvim'


Y() {
	youtube-dl \
		--audio-quality=128k \
		-f worst \
		-o "$HOME/data/media/%(channel)s-%(release_date)s-%(id)s.%(ext)s" \
		-x "$@"
}
