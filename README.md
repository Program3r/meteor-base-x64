meteor-base-x64
===============

Turnkey Linux Meteor / NodeJS Base


Run meteor detached, map to an application directory on host, and connect to remote mongo database.
--------------------------------------------------------------------------------------------------
docker run -d -t -i -v /your/app:/root/app -P -e MONGO_URL='mongodb://<user>:<password>@hostname:port/clode_development' -e NODE_OPTIONS='--debug' program3r/meteor-base-x64:development meteor
