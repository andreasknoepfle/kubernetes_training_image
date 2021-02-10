# Lesson 02

Edit the `app.yml` so that the deployment has a ENV variable called `FOO` with a value that you choose. 

https://kubernetes.io/docs/tasks/inject-data-application/define-environment-variable-container/

Apply your modified yaml file and watch again with `watch kubectl get pod` what happens. 

Verify with `kubectl describe` that your ENV variable is set on the pod.

Navigate to the deployment and get a little surprise.

## BONUS:

Try to set your ENV variable from a secret you create.

https://kubernetes.io/docs/concepts/configuration/secret/
