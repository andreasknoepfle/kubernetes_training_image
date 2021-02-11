# Lesson 03

Add some more replicas to the deployment and make sure that your deployment spawns
3 pods with the training service instead of one.

https://kubernetes.io/docs/concepts/workloads/controllers/deployment/

Navigate to the app and click the shutdown button for lesson 3. 
It should shut down one of the nodes and refresh the page after 2 seconds. 
Since there should now be more replicas, you can click the button a bunch of times 
and the service will always be up.

## Restart replicas
Try out a rolling restart with you replicas
`kubectl rollout restart ...`

https://kubernetes.io/docs/reference/kubectl/cheatsheet/#updating-resources

Watch them again with `watch kubectl get pod`

## BONUS
Try to convert your Deployment into a StatefulSet (and maybe read what they are about)
https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/
