# Lesson 05: Add a new deployment 

Add a new deployment to the cluster with [the official `redis` image](https://hub.docker.com/_/redis/) 
and make it available under the incluser DNS name `redis` for the training app in the cluster with a 
service (of type ClusterIP).

Check if the training app can connect to the redis deployment with the training app (will be visible there).

You do not need to set up volumnes to make redis persist anything. This will be for the next lesson. 

NOTE: The app connects to the default redis port `redis://redis:6379` with no password.
