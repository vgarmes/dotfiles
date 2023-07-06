function __check_rvm --on-variable PWD --description 'Calls nvm automatically in a directory with a package.json file'
  status --is-command-substitution; and return

  if test -f package.json; and test -r package.json;
    nvm use default
  else
  end
end

# exa
if type -q exa
	alias ll "exa -l -g --icons"
	alias lla "ll -a"
end
