# Udacity Cloud DevOps Engineer
## Capstone project

### Files
1. `/cluster` Contains all Cloudformation scripts to setup the EKS network, cluster and workers.
2. `/Kubernetes`Contains K8S ECR configuration
3. `/public` Contains the HTML template.
4. `Dockerfile` Used to build the capstone app image.
5. `Jenkinsfile` Jenkins pipeline file.


### Setup EKS cluster and worker nodes.
To setup the EKS cluster you need to first create the network, then the EKS cluster and lastly add the worker nodes. You can do so by running the following commands:

```
cd cluster
./create_stack.sh Infrastructure network.yml network-params.json
./create-stack.sh K8Scluster cluster.yml cluster-params.json
./create_stack.sh UdacityCapStone-K8S-Workers cluster-workers.yml cluster-workers-params.json
```

And  to join the worker nodes to the cluster running the following commands:

```
cd config
kubectl apply -f aws-auth-cm.yaml
```


Indicated is the rolling update within the `/Kubernetes/deployment.yml`-file through the
deploy strategy type. The CI/CD pipeline (`Jenkinsfile`) performs an rolling
update command to update the image to the latest image created during the build.

