export FMC_URL="https://172.16.133.47"
export FMC_USERNAME="jenkins"
export FMC_PASSWORD="jenkins"

cd internal/provider
TF_ACC=1 go test -v -timeout 20m -cover