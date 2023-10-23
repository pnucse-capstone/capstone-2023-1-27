## 쿠버네티스 환경 설정

1. NFS 설정

```console
chmod 755 ./setting_nfs.sh
./setting_nfs.sh
```

2. MetalLB 설치

```console
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.11.0/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.11.0/manifests/metallb.yaml
```

3. NGINX Ingress Controller 설치

```console
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.8.1/deploy/static/provider/baremetal/deploy.yaml
```

2. yaml 파일 설정

```console
kubectl apply -f smart-trash-can-mongodb.yaml
SMART_TRASH_CAN_MONGODB=$(kubectl get svc smart-trash-can-mongodb -o=jsonpath='{"mongodb://"}{.spec.clusterIP}{":"}{.spec.ports[*].port}')
echo $SMART_TRASH_CAN_MONGODB
```

스마트 쓰레기통 서비스에서 사용하는 mongodb의 ClusterIP 확인 후 `smart-trash-can-back.yaml`, `smart-trash-can-data-generator.yaml` 파일 수정

```console
kubectl apply -f smart-trash-can-back.yaml
kubectl apply -f smart-trash-can-data-generator.yaml
kubectl apply -f smart-trash-can-hpa.yaml
```

```console
kubectl apply -f street-lamp-mongodb.yaml
STREET_LAMP_MONGODB=$(kubectl get svc street-lamp-mongodb -o=jsonpath='{""mongodb://"}{.spec.clusterIP}{":"}{.spec.ports[*].port}')
echo $STREET_LAMP_MONGODB
```

가로등 모니터링 서비스에서 사용하는 mongodb의 ClusterIP 확인 후 `street-lamp-back.yaml`, `street-lamp-data-generator.yaml` 파일 수정

```console
kubectl apply -f street-lamp-back.yaml
kubectl apply -f street-lamp-data-generator.yaml
kubectl apply -f street-lamp-hpa.yaml
```

마지막으로 `config.yaml` 및 `ingress.yaml` 적용

`config.yaml`은 MetalLB에서 사용하는 파일이며, IP 주소 영역을 사용하는 환경에 맞게 수정

```console
kubectl apply -f config.yaml
kubectl apply -f ingress.yaml
```
