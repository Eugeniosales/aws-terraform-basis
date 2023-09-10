/* 

-- Configure kubectl
aws eks --region $(terraform output -raw region) update-kubeconfig \
    --name $(terraform output -raw cluster_name)

-- Verify cluster
kubectl cluster-info

-- Verify svc
kubectl get svc

-- Verify nodes
kubectl get nodes -o wide

-- Verify pods
kubectl get pods --all-namespaces -o wide

-- Create namespace
kubectl create namespace practice-eks-fargate

-- Create deployment
kubectl apply -f https://k8s.io/examples/application/deployment.yaml

-- Describe deployment
kubectl describe deployment nginx-deployment
 */
