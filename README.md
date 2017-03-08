# Bash_aliases
A project to collect useful bash aliases and functions.

You can pull requests if you hava any useful aliases or functions to make things easy.

# How to use
Just put the `bash_aliases` and `bash_docker_aliases` in your home directory and make them hiden with a dot in front them.
And makr sure that you enable alias in you `.bahsrc` whitch the codes looks like follows:

````bash
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_docker_aliases ]; then
    . ~/.bash_docker_aliases
fi
````
