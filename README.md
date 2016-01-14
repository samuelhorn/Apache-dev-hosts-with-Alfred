# Apache-dev-hosts-with-Alfred
Smooth workflow for adding development hosts to httpd-vhosts.conf &amp; hosts on OSX El Capitan. Consists of one shellscript and one Alfred workflow.

## Screenshots
### Alfred input
![Alfred input screenshot](https://raw.github.com/samuelhorn/Apache-dev-hosts-with-Alfred/master/Screenshots/alfred.jpg)

### httpd-vhosts output
![httpd-vhosts output screenshot](https://raw.github.com/samuelhorn/Apache-dev-hosts-with-Alfred/master/Screenshots/httpd-vhosts.jpg)

### hosts output
![hosts output screenshot](https://raw.github.com/samuelhorn/Apache-dev-hosts-with-Alfred/master/Screenshots/hosts.jpg)

# Installation
## In OSX
1. Place the add-host.sh file somewhere on your system (mine is in ~/Sites/scripts/).
2. Open the file in your favourite text editor and look for `/Users/username/Sites/` on line 13, change this to where ever you keep your sites. Also if you want you can change your development topdomain on line 7, look for `.dev`.

## In Alfred
1. Install the alfred workflow.
2. Double click the /bin/bash script icon in the workflow, on line 3 - change tha path to where you placed the add-host.sh file.

## Contribution & Questions
Feel free to enhance this workflow here on gitgub by making a pull request, or just ask me something about it on [Twitter](https://www.twitter.com/pixelcrook).

