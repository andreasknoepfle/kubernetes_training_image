# Lesson 6: Persistance and Volumnes

Let's give our redis server a persisted volume to store information on.

Maybe you can use this as a resource or try on your own:
https://estl.tech/deploying-redis-with-persistence-on-google-kubernetes-engine-c1d60f70a043
They use a StatefulSet, but it also works with a Deployment.

Essentially we need to start redis with `--appendonly yes` and mount a persistant volme to `/data`
