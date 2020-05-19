# Udacity Cloud DevOps Engineer
## Capstone project

### Files
1. `/eks-cluster` Contains all Cloudformation scripts to setup the EKS network, cluster and workers.
2. `/public` Contains the HTML template.
3. `Dockerfile` Used to build the capstone app image.
4. `Jenkinsfile` Jenkins pipeline file.


### Setup EKS cluster and worker nodes.
To setup the EKS cluster you need to first create the network, then the EKS cluster and lastly add the worker nodes. You can do so by running the following commands:

```
cd aws
./create-stack.sh <stack-name-network> eks-network.yml eks-network-params.json
./create-stack.sh <stack-name-eks> eks-cluster.yml eks-cluster-params.json
./create-stack.sh <stack-name-workers> eks-workers.yml eks-workers-params.json
```

And  to join the worker nodes to the cluster running the following commands:

```
cd config
kubectl apply -f eks-aws-auth-cm.yaml
```

