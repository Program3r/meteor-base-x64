meteor-base-x64
===============

Turnkey Linux Meteor / NodeJS Base


Run meteor detached, map to an application directory on host, and connect to remote mongo database.
--------------------------------------------------------------------------------------------------
docker run -d -t -i -v /your/app:/root/app -P -e MONGO_URL='mongodb://<user>:<password>@hostname:port/clode_development' -e NODE_OPTIONS='--debug' program3r/meteor-base-x64:development meteor


Run CodeBox IDE Detached - Using Host App Storage
-------------------
docker run -t -d -i -v /optional/app/path:/root/app -P clode/meteor-base-x64:ide /bin/bash -c '. /.nvm/nvm.sh && codebox run /root/app -u user1:user1pass,user2:user2pass'      
