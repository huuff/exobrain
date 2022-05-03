# Elastic File System (EFS)
An AWS offering that gives a managed NFS service. It has some benefits over [[ebs]] such as:
* Multiple [[ec2]] instances can access the same file across multiple availability zones (but within the same region)
* Capacity is automatically scaled up or down based on usage
* You only pay for what you use
* Can connect on-premises servers to EFS over VPN
* EFS runs off SSD drives that are automatically replicated across availability zones
