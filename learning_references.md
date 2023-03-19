# **Research Notes References**

## **AWS**
### VPC Design and Considerations

> #### 1. https://aws.github.io/aws-eks-best-practices/networking/subnets/#:~:text=Tag%20the%20public%20subnet%20with%20kubernetes.io%2Frole%2Felb%20to%20construct,whereas%20Ingress%20resources%20are%20instantiated%20in%20public%20subnets. </br>
> Helped me understand the best practices when creating the vpc for both security and HA kubernetes cluster. After further research described below, I have landed on the following configuration:
>> - Public: Bastion Instance, NAT, IGW, Network LB
>> - Private: Cluster Nodes  
 
 
> #### 2. https://stackoverflow.com/questions/53406714/kubernetes-cluster-in-public-and-private-topology
> I chose to follow this architecture design from stackoverflow: load balancing resources in the public subnet, and all nodes in private.
I learned that us can use a Terraform module to condense the amount of code in the vpc setup. This saved me so much time and typing.

> #### 3. https://aws-quickstart.github.io/quickstart-linux-bastion/ </br>
> Continuing to read up on design patterns, I ran across the use of a Linux Bastion instance for security purposes. This project could be created without one, but I wanted to harden this project to reflect a more production like configuration. The bastion instance will allow ssh from my lab instance into my VPC. It will be used to deploy ansible for cluster configuration. 

## **Terraform**

### Community VPC Module

> #### 1. https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest </br>
> The community module was sufficient for this project. In production, I would use the complete module to map VPC endpoints and provide more robust configurations based on business needs and architectural design.

## **Docker**

## **Kubernetes**

> #### 1. https://devops.stackexchange.com/questions/16799/kubernetes-trouble-adding-node-to-cluster </br>
> #### 2. https://github.com/kubernetes/kubernetes/blob/8eda21ea3f1c2a95581e8b48b6333d600e7ecda4/cmd/kubeadm/app/util/runtime/runtime.go#L196-L229 </br>
> Fix for multiple socket error. I decided to edit the config file to allow cri-dockerd as the default socket.

> #### https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/ha-topology/ </br>
> HA Topoogy: Stacked etcd


### Networking

> #### 1. https://kubernetes.io/docs/reference/networking/ports-and-protocols/ </br>
> Port Reference for Master and Worker Nodes used to create Security Groups in VPC.

> #### 2. https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancer-getting-started.html </br>
> #### 3. https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb </br>
> LB setup documentation

## **Miscellaneous**