# pterodactyl-oracle-java
Publishing this as it took me eternity to figure this out

Why do you even want to use this instead of openjdk? You dont, unless if you are running modded minecraft server as many of the mods run way better on oracle for some reason i've seen up to 40% improvement.


How to build and use on pterodactyl?


First off DO NOT MAKE ANY REPO PUBLIC you could get sued for redistribuing..

1.) Download files
2.) Download oracle java linux archive as tar.gz format
3.) upload to web server
4.) edit the Dockerfile and replace wget url
5.) create docker hub repo https://hub.docker.com/
6.) go into the directory where files of this repo are contained and run `docker build -t <your_username>/my-private-repo .`
7.) then push compiled image to your hosted repo with `docker push <your_username>/my-private-repo`
8.) use the `docker.io/<your_username>/my-private-repo` as the custom docker image.

This is not common knowledge for standard pterodactyl users and i don't get it why they don't explain this in the documentation.
