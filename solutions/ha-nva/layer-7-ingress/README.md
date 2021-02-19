# Highly Available Ingress with layer 7 NVAs

This sample template will deploy an Front-end Azure Load Balancer in front of two simulated NVA VMs.  The NVA VMs will forward requests on port 80 to a Web-tier Azure Load Balancer, which will distribute traffic across two back-end VMs running a simple web server.

For more information on this deployment and other highly available NVA options, see [Deploy highly available NVAs](https://review.docs.microsoft.com/azure/architecture/reference-architectures/dmz/nva-ha?branch=WIP-360720-hanva-refresh). TODO: Remove review link

TODO: Build Validation Icons



![Highly Available Ingress with layer 7 NVAs architectural diagram.](https://review.docs.microsoft.com/azure/architecture/reference-architectures/dmz/images/nva-ha/l7-ingress.png?branch=WIP-360720-hanva-refresh) TODO: Remove review branch from arch image.

## Deploy this template to Azure

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fhallihan%2Fsamples%2FWIP-hallihan-hanva-samples%2Fsolutions%2Fha-nva%2Flayer-7-ingress%2Fazuredeploy.json)
[![Deploy To Azure US Gov](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazuregov.svg?sanitize=true)](https://portal.azure.us/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmspnp%2Fsamples%2Fmaster%2Fsolutions%2Fha-nva%2Flayer-7-ingress%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fmspnp%2Fsamples%2Fmaster%2Fsolutions%2Fha-nva%2Flayer-7-ingress%2Fazuredeploy.json)

*Note: If you fork this repository, you will need to modify the link in [README.md](README.md) to point to your repo.  If you create a separate branch for testing, you will have to include a change to this link to point to your branch as well. You must include a URL-encoded link to the raw [azuredeploy.json](azuredeploy.json) file after `/uri/` in the link defined for the deployment button. You should also change the default value of `_artifactsLocation`.*