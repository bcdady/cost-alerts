# Terraform Cost Monitoring

This project provides a comprehensive solution for monitoring cost anomalies across multiple cloud providers: AWS, Azure, and Google Cloud Platform (GCP). It utilizes Terraform to set up the necessary resources and configurations for effective cost monitoring.

## Project Structure

The project is organized into the following directories:

- **aws/**: Contains Terraform configurations specific to AWS cost anomaly monitoring.
  - `main.tf`: AWS cost monitoring resources.

  - `example.auto.tfvars`: Example input variables for AWS module.
  - `variables.tf`: Input variables for AWS setup.
  - `outputs.tf`: Outputs from AWS resources.
  - `providers.tf`: configures AWS Terraform provider
  - `versions.tf`: specifies the Terraform version and required providers

- **azure/**: Contains Terraform configurations specific to Azure cost anomaly monitoring.
  - `main.tf`: Azure cost monitoring resources.
  - `example.auto.tfvars`: Example input variables for Azure module.
  - `variables.tf`: Input variables for Azure setup.
  - `outputs.tf`: Outputs from Azure resources.
  - `providers.tf`: configures Azure Terraform provider
  - `versions.tf`: specifies the Terraform version and required providers

- **gcp/**: Contains Terraform configurations specific to GCP cost anomaly monitoring.
  - `main.tf`: GCP cost monitoring resources.
  - `example.auto.tfvars`: Example input variables for GCP module.
  - `variables.tf`: Input variables for GCP setup.
  - `outputs.tf`: Outputs from GCP resources.
  - `providers.tf`: configures Google Cloud Terraform provider
  - `versions.tf`: specifies the Terraform version and required providers

- **modules/**: Contains reusable modules for cost monitoring across different cloud providers.
  - **aws-cost-monitoring/**: AWS cost monitoring module.
    - `main.tf`: Reusable configuration for AWS.
    - `variables.tf`: Input variables for AWS module.
    - `outputs.tf`: Outputs from AWS module.
  - **azure-cost-monitoring/**: Azure cost monitoring module.
    - `main.tf`: Reusable configuration for Azure.
    - `variables.tf`: Input variables for Azure module.
    - `outputs.tf`: Outputs from Azure module.
  - **gcp-cost-monitoring/**: GCP cost monitoring module.
    - `main.tf`: Reusable configuration for GCP.
    - `variables.tf`: Input variables for GCP module.
    - `outputs.tf`: Outputs from GCP module.

## Setup Instructions

1. **Prerequisites**: Ensure you have Terraform installed on your machine. You will also need access credentials for AWS, Azure, and GCP.
   1. AWS CLI: [Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
   2. Azure 'az' CLI: [Install Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
   3. GCP 'gcloud' CLI`: [Install GCP SDK](https://cloud.google.com/sdk/docs/install)
   4. Terraform: [Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)

2. **Configure Variables**

   2. Update the `variables.tf` files in the `aws/`, `azure/`, and `gcp/` directories to specify your variables such as customizing thresholds and specifying notification email addresses.

3. **Initialize Terraform**: Navigate to the root of the project and run:

   ```shell
   terraform init
   ```

4. **Plan the Deployment**: Run the following command to see the resources that will be created:

   ```shell
   terraform plan
   ```

5. **Apply the Configuration**: Deploy the resources by running:

   ```shell
   terraform apply
   ```

## Usage

After deployment, the project will monitor cost anomalies across the specified cloud providers. You can reference the outputs defined in the `outputs.tf` files to get insights into the monitoring setup.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.
