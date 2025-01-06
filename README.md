# AKS cluster installation using Terraform

## Set Terraform Variables

These environment variables are used by Terraform to authenticate with Azure.

```bash
export TF_VAR_subscription_id="12345678-1234-1234-1234-123456789abc"
export TF_VAR_client_id="12345678-1234-1234-1234-123456789abc"
export TF_VAR_client_secret="12345678-1234-1234-1234-123456789abc"
source ~/.bashrc
```
### For this to work you shouldchange the value in the terraform.tfvars to be in your public IP adress 


### We will need kubectl to connect to the kubernetes cluster so below are the steps how to install it

`kubectl` is a command-line tool for interacting with Kubernetes clusters.

```bash
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
kubectl version --client
```

### Configure kubectl to Connect to the Kubernetes Cluster

These commands should be executed in the same directory where the Terraform files are located. They will write the kube configuration file which will be used to connect to the Kubernetes cluster.

```bash
terraform output -raw kube_config > kubeconfig
export KUBECONFIG=$(pwd)/kubeconfig
kubectl get nodes
```

### Install Infracost

Infracost is a tool to estimate the cost of your Terraform projects.

```bash
curl -fsSL https://raw.githubusercontent.com/infracost/infracost/master/scripts/install.sh | sh
```

### Authenticate with Infracost

Set your Infracost API key to authenticate with the Infracost service.

```bash
export INFRACOST_API_KEY=your_api_key
```

### Generate Infracost Configuration and View the Cost Estimate

This command generates a cost estimate for your Terraform project and saves it to a JSON file.

```bash
infracost breakdown --path . --format json --out-file infracost.json
```

### View the Cost Estimate

This command displays the cost estimate in the terminal.

```bash
infracost breakdown --path .
```

### (Optional) Integrate Infracost with Your CI/CD Pipeline

Refer to the Infracost CI/CD documentation for detailed instructions on integrating Infracost with your CI/CD pipeline. This allows you to get cost estimates for every pull request.
