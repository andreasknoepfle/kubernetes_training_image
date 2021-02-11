# Lesson 6: Persistance and Volumnes

Let's give our redis server a persisted volume to store information on.

Maybe you can use this as a resource or try on your own:
https://estl.tech/deploying-redis-with-persistence-on-google-kubernetes-engine-c1d60f70a043
They use a StatefulSet, but it also works with a Deployment.

Essentially we need to start redis with `--appendonly yes` and mount a persistant volme to `/data`

## Testing persistance

You can click "Put cat" to store a value in redis and trigger a redis restart. 
After that the page should show no connection to redis. Once the redis pod comes 
up again you can refresh the page and see if your cat is now stored.
If you see a cat under the "Put cat" button you volume is set up correctly.
