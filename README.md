# PKS Node Labeling
this solution labels all nodes with a specific label in PKS to help with Affinity based approach for Kubernetes.

## Getting Started
Docker image used is https://hub.docker.com/r/yanivno/pks-labeling \
the application was tested in PKS 1.3 (Kubernetes 1.12.4) environment

## Installing
The Manifest creates a DaemonSet in Kubernetes that runs a task to label each node,\
with the Environment Variables (set in yaml manifest) :
```
LABELNAME = <label name required>
LABELVALUE = <label value required> 
```
in the example manifest it will tag all nodes with app=standard.

## Running
To apply to a running Kubernetes cluster:
```
kubectl apply -f kubernetes/all.yaml
```
