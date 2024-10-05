# ELK Stack Project

## Description
ELK Stack for Centralized Logging: A comprehensive setup of Elasticsearch, Logstash, and Kibana for monitoring, analyzing, and visualizing log data in real time.

## Prerequisites
Before starting, ensure that you have the following tools installed on your local machine:
1. [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
2. [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
3. [Helm](https://helm.sh/docs/intro/install/)
4. [kubectl](https://kubernetes.io/docs/tasks/tools/)
5. A Kubernetes cluster (AKS) configured in Azure and Minikube for local machine.
   
## Getting Started
1. Clone this repository
3. Update your Helm repository to ensure you have the latest charts:
    - `helm repo add elastic https://helm.elastic.co`
    - ` helm repo update`
4. Update Dependencies for Each Component
    - Navigate to each component directory (elasticsearch, logstash, kibana) and **update** the dependencies :
         -  `cd elasticsearch `
         - `helm dep update`
5. Install the all element elk :
    - If you are inside the directory ( `../elasticsearch`) run :
       - `helm install elasticsearch` 
    - If you are in the root directory of the repository ( `../elk-stack`) run :
       - `helm install elasticsearch elasticsearch`.
         
NB: don't forget to change password from values.yaml of elasticsearch LINE "61" 
    and in values.yaml of logstash  LINE "23","79"
6. Install and configure Filebeat using the following ConfigMap and DaemonSet files in minikube , and mount the file containing the logs in Minikube
    




## Contributing

    If you find any bugs or would like to optimize the code, feel free to contribute. Pull requests are welcome!







   







