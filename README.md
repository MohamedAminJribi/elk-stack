# ELK Stack Project

## Description
ELK Stack for Centralized Logging: A comprehensive setup of Elasticsearch, Logstash, and Kibana for monitoring, analyzing, and visualizing log data in real time.

## Getting Started
1. Clone this repository
2. Update your Helm repository to ensure you have the latest charts:
    - `helm repo add elastic https://helm.elastic.co`
    and ` helm repo update`
3. Update Dependencies for Each Component
    - Navigate to each component directory (elasticsearch, logstash, kibana) and update the dependencies :
         -  `cd elasticsearch `
         - `helm dep update`
4. Install the all element elk :
    - If you are inside the directory ( `/elasticsearch`) run :
       - `helm install elasticsearch` 
    - If you are in the root directory of the repository ( `/elk-stack`) run :
       - `helm install elasticsearch elasticsearch`.
NB: don't forget to change password from values.yaml of elasticsearch LINE 61 
    and in values.yaml of logstash  LINE 23,79






   







