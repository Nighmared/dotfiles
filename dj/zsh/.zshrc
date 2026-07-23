DEBUG=0

# anything generic shell scripting
for file in $ZDOTDIR/conf.d/*.zsh; do
	# echo "$file"
	source "$file"
done

#completion scripts in separate directory for nice structure
for file in $ZDOTDIR/completions.d/*.zsh; do
	# echo "$file"
	source "$file"
done
