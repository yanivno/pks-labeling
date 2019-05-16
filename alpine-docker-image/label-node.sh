TOKEN=`cat /var/run/secrets/kubernetes.io/serviceaccount/token`
NS=`cat /var/run/secrets/kubernetes.io/serviceaccount/namespace`
HOST=`hostname`
alias k=kubectl --token=$TOKEN --server='https://kubernetes.default.svc.cluster.local' --insecure-skip-tls-verify=true
#k get nodes
NODE=`k get po $HOST -n $NS -o json | jq -r .spec.nodeName`
echo "Running on node : $NODE"
echo "Label name : $LABELNAME"
echo "Label value : $LABELVALUE"
k label nodes --overwrite=true $NODE $LABELNAME=$LABELVALUE
echo "now resting..."
#while :; do sleep 2073600; done
tail -f /dev/null
