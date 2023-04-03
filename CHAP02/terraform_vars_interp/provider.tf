provider "azurerm" {
}

#provider "azurem" {

#    features {}
#        subscriptions_id = "<subscription ID>"
#        client_id = "<Client ID>"
#        client_secret = "<Client Secret>"
#        tenant_id = "<Tenant ID>"
#}

# The above script links iur terraform configuration to Azure using the newly created SP (user). to prevent spillage the following script can be condensed into the following: 
#provider "azurem" {
#    features {}
#}

#This will mean that terraform no longer contains any secerets in the configuraiton file. When needed we will pass the secerets values to specfic terraform environmental variables. 
