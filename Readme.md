# Tor Services via Docker!

This repository holds docker-compose configurations for running Nextcloud,
Mumble-Server (Murmur), and Etherpad as Tor hidden services!


## Quick Setup

1: Install Docker and Docker-Compose.

2:Create the docker network `tor` by running `./create-network.sh`.

3: Create the hidden service volumes (these contain Tor's Keys and onion
addresses). Head to tor and run

```
sudo ./new-volume.sh ../volumes/tor/nextcloud
sudo ./new-volume.sh ../volumes/tor/murmur
sudo ./new-volume.sh ../volumes/tor/etherpad
```

4: Start Etherpad. Head to `etherpad` and set decent passwords in `db.env`.
Then, run `./up.sh`.

5: Start Nextcloud. Head to `nextcloud` and run `./up.sh`.

6: Build Murmur. Head to `murmur` and run `./build.sh`. Then configure
the `murmur.ini` file according to your needs. Finally, run Murmur via
`./up.sh`.

7: After the services are up (check with `docker ps`), head to `tor` and run
`./build.sh`. Then run the tor network via `./up.sh`.

8: Find the onion addresses of each service under
`./volumes/tor/SERVICE-NAME/hostname`.

You can stop each service with `./stop.sh`. Note that, to prevent the Tor
service from crashing, the other services must be started before it.

If you do not want to use all three services or add a new one, modify the
`torrc` file in `tor` and restart the service.
