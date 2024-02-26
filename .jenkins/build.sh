#!/bin/bash

jenkinsHome = "${JENKINS_HOME}"
rm -rf [jenkinsHome]/\.terraform.d/plugins/registry.terraform.io/netascode/fmc/0.2/darwin_amd64
rm -rf vendor

go mod vendor
go mod tidy
go build -o terraform-provider-fmc_0.2_darwin_amd64

mkdir -p [jenkinsHome]/\.terraform.d/plugins/registry.terraform.io/netascode/fmc/0.2/darwin_amd64
mv terraform-provider-fmc_0.2_darwin_amd64 [jenkinsHome]/.terraform.d/plugins/registry.terraform.io/netascode/fmc/0.2/darwin_amd64
cp [jenkinsHome]/\.terraform.d/plugins/registry.terraform.io/netascode/fmc/0.2/darwin_amd64/terraform-provider-fmc_0.2_darwin_amd64 [jenkinsHome]/.terraform.d/plugins/registry.terraform.io/netascode/fmc/0.2/darwin_amd64/terraform-provider-fmc

rm [jenkinsHome]/\.terraform.d/plugins/registry.terraform.io/netascode/fmc/0.2/darwin_amd64/terraform-provider-fmc_0.2_darwin_amd64