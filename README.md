# Liferay Docker Demo

This runs a Liferay 7.1 CE instance - it is used for demo purposes only and has no real data persistence.

## Prerequisites

* Installed Docker
* Installed docker-compose
* A brief understanding of Docker, Liferay and the Terminal of your operating system

### Installing the demo

Clone the project from [Bitbucket](https://bitbucket.org/liferaysamples/liferay-docker-demo/) and you are ready to go.

## Prebuilt demo scenarios

### Demo #1 - Running / Stopping / Reinitializing the Liferay container

Hint: the sudo command is only needed on Linux systems, for Mac and Windows just use the command without the phrase `sudo`.

Initialize / Startup Liferay

1. Open a shell in the directory of this project
2. Start the server with this command

    # sudo docker-compose up -d

3. Wait for Liferay to boot it takes a bit of time ;-)
   You can look into the logfiles (see below) to see when booting has been finished
4. Open your browser on 127.0.0.1:8080
5. Use your Liferay instance

View Liferay Logs

1. Open a shell in the directory of this project
2. View the logs with this command

    # sudo docker logs -f liferaydockerdemo_liferay_1

3. Press `Ctrl + c` to end viewing the logs (the `-f` above meant that it would follow the logs until ended)

Stop Liferay

1. Open a shell in the directory of this project
2. Stop the server with this command

    # sudo docker-compose stop

3. Liferay will stop now, this takes some time too

Reset everything / restart from the beginning

1. Open a shell in the directory of this project
2. Start the server with this command

    # sudo docker-compose down

3. Now the container will be removed

### Demo #2 - Environment variables / Configuration

The Liferay container has the ability to read specific environment variables and put these into the `portal.properties` file. So it is possible to do put configurations in your compose file and every created container will start with this configuration.

1. Edit the `docker-compose.yml` file
2. Un- / Comment the lines for demo #2 (see comments in the file)
3. Proceed like described above in `Demo #1` -> `Initialize / Startup Liferay`

If the volume mount is activated in the `docker-compose.yml` file

### Demo #3 - Volume mounts / Injections

The Liferay container will react on files in specific directories. So it is possible to do inject startup scripts, add / override files in the liferay home directory or deploy plugins into the instance on startup.

The easiest way to achieve this is to create a volumen mount (mounts a host directory into the container). In this demo I use the folder `./conf/liferay` to mount it to the correct position in the container.

1. Edit the `docker-compose.yml` file
2. Un- / Comment the lines for demo #3 (see comments in the file)
3. Have a look into the subdirectories of `./conf/liferay` to see what we change in our Liferay instance
4. Proceed like described above in `Demo #1` -> `Initialize / Startup Liferay`

## Conclusion

Now you have seen that the official Liferay container is on the one hand very beginner-friendly and on the other hand very flexible to the needs of more complex applications.

## Authors

* **Manuel Manhart** - *Initial work*

## Built With

* [Docker](http://docs.docker.com/) - The container base
* [Docker-Compose](https://docs.docker.com/compose/) - Composing multiple containers into one service
* [VS Code](https://rometools.github.io/rome/) - Used to edit all the files
* [Liferay Portal](https://www.liferay.com/) - The service used in the container

## see also

[Liferay at Docker Hub](https://hub.docker.com/r/liferay/portal)

## Contributing

To the time of writing this is a finished demo project, so contributing is not planned.

## Versioning

We do not use versioning since this is a project that was built solely for demo purposes.

## License

This project is licensed under MIT license, feel free to clone and modify as you wish.

## Open issues

none I know of, if you find any, feel free to contact me
