# Lesson 01

## Start the service 

There is a prepared `app.yml` that contains a custom made little kuberenetes training app and 
a service that runs this app. For now, try to get it to work in your cluster with `kubectl apply -f ...` 
and see if you can access the service. 
Check the external IP of the loadbalancer that was deployed with the app with `kubectl get service` 
to find out how to connect to the service.

Note: When you use minikube you have to run `minikube service --url k8s-training-service` to connect to you loadbalancer and click the URL there.

## Kill a pod

Kubernetes tries to keep your deployment running.

In order to see what is going on run a `watch` in a separate console and list all pods:

```
watch kubectl get pod
```

Our training image has a "Shutdown" button to terminate the server. Try clicking that and see what happens 
with the pods.

When everything is back up again you can also try to kill a pod with the `kubectl delete` command. 
Keep watching the pods. Do you see any difference when using `kubectl` to delete the pod? 

