# Lesson 1

> Do you see any difference when using `kubectl` to delete the pod? 

* Using the "Shutdown" button the application terminates itself, putting the pod into `completed` state.
  After this the app is restarted within the *same* pod.
* Killing a pod with `kubectl delete pod` kills the application and removes the pod from the list while
  spawning a new pod (= application instance).





hmm - das war's irgendwie mit den Fragen, vielleicht ist die answers.md doch ein bisschen überflüssig


# Lesson 4

> ... bad responses on the `/status` endpoint. Watch again what happens with the pods.

Nothing happens?!

habs auf 6/5 gestellt wie in deiner solution/app.yml (tricky die Werte sonst herauszufinden btw)



