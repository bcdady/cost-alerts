# Notes for Cloud Cost Observability workshop

I used these shell commands to setup and demonstrate this workshop from my linux laptop.
You may need to adapt some of these commands for use with a different operating system or shell.

## Tools I use

- [Warp](https://www.warp.dev/) terminal
- [Windsurf](https://codeium.com/windsurf/) editor

### Workshop Reference

1. Clone <https://github.com/bcdady/cost-alerts>
    1. Feel free to fork it
    2. PRs are welcome too

#### Prerequisites

1. Install AWS CLI

    1. `python -m pip install --upgrade awscli` -OR- `sudo uv pip install --upgrade --system awscli`
    2. AWS credentials configured via ACCESS KEY (or maybe SSO / IAM-IC
    3. Check with `aws sts get-caller-identity`

2. Install Azure CLI

    1. `curl -L https://aka.ms/InstallAzureCli | bash`
    2. `az version`

3. Install GCP CLI

    1. `curl https://sdk.cloud.google.com | bash`
    2. `gcloud version`

Consider:
<https://aquaproj.github.io/docs/install>
\-OR-
<https://asdf-vm.com/guide/getting-started.html#_1-install-asdf>

4. Install Terraform and/or OpenToFu

    1. `asdf plugin add hashicorp`
    2. `asdf install terraform latest`
OR
    1. `snap install --classic opentofu`

    3. `alias tf=terraform` OR `alias tf=tofu`
    4. `tf version`

---

5. Login to AWS CLI

    1. `aws sts get-caller-identity`
    2. `tf plan -out=aws.tfplan`
    3. `tf apply aws.tfplan`
    4. `tf plan -destroy -out=cleanup.tfplan`

6. Login to Azure CLI

    1. `az login`
    2. `tf plan -out=azure.tfplan`
    3. `tf apply azure.tfplan`
    4. `tf plan -destroy -out=cleanup.tfplan`

7. Login to GCP CLI

    1. `gcloud auth application-default login`
    2. `gcloud auth application-default set-quota-project quickstart-1580172057967`
    3. `gcloud config set billing/quota_project quickstart-1580172057967`
    4. `tf plan -out=gcp.tfplan`
    5. `tf apply gcp.tfplan`
    6. `tf plan -destroy -out=cleanup.tfplan`

### AI Prompt

Please create a new project with a set of terraform modules for cost anomaly alerting for each of these cloud systems: AWS, Azure, and Google Cloud
