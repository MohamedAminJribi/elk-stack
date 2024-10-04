# ELK Stack Project

## Description
ELK Stack for Centralized Logging: A comprehensive setup of Elasticsearch, Logstash, and Kibana for monitoring, analyzing, and visualizing log data in real time.

# Getting Started
1. Clone this repository
2. Update your Helm repository to ensure you have the latest charts:
    - helm repo add elastic https://helm.elastic.co
    - helm repo update
      
3.Update Dependencies for Each Component
   -Navigate to each component directory (elasticsearch, logstash, kibana) and update the dependencies:
     cd elasticsearch
     helm dep update
     
4.Install the ELK Stack 
    If you are inside the directory : /elasticsearch
      run : helm install elasticsearch ./
    If you are in the root directory of the repository : /elk-stack
      run : helm install elasticsearch elasticsearch






   







