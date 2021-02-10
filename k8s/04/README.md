# Lesson 04

## The liveness probe
Let's look at liveness probes. Attched there is an updated `app.yml` with a livenessProbe around. 
Apply the new specification to the cluster and watch what happens with `watch kubectl get pod`.

There is something wrong with the setup still. The app seems to not work anymore. 
What could be wrong?

Fix the liveliness probe, so that it works.

## Verify
Verify your probe by hitting the `Set 400` button in the training app to start sending 
bad responses on the `/status` endpoint. Watch again what happens with the pods.

## BONUS
Add a readyness probe with the `/ready` endpoint.
