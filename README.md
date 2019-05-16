this application labels all nodes with a specific label in PKS to help with Affinity based approach for Kubernetes.

Docker image used is https://hub.docker.com/r/yanivno/pks-labeling

the application was tested in PKS 1.3 (Kubernetes 1.12.4) environment

The Manifest creates a DaemonSet in Kubernetes that runs a task to label each node with the Environment Variables (included in Manifest) LABELNAME = the label name required LABELVALUE = the label value required in the example manifest it will tag all nodes with app=standard.
