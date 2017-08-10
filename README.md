# Bash_aliases
A project to collect useful bash aliases and functions.

You can pull requests if you hava any useful aliases or functions to make things easy.

# How to use
Download the `bash_aliases` and `bash_docker_aliases` to your home directory and `mv ~/bash_docker_aliases ~/.bash_docker_aliases && mv ~/bash_aliases ~/.bash_aliases`

Then:

````bash
cat << EOF >> ~/.bashrc
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_docker_aliases ]; then
    . ~/.bash_docker_aliases
fi
EOF
````
