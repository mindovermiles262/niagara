# Niagara Helm

A helm chart for Niagara

## Installing the chart

Check your kubectl configuration to make sure you're pointed at the cluster you want to install this Niagara chart onto

```
kubectl config current-context
```

Then install/upgrade the niagara chart.
```
helm upgrade --install my-niagara-chart .
```

## Assumptions

In this helm chart we assume that you have Traefik Ingress Controller installed. If you do not, you may add it to your kubernetes cluster by running the following commands:

```
# Make sure there are no existing ingressclasses
kubectl get ingressclasses -A
  #--> No Resources Found

# Install Traefik via Helm
helm repo add traefik https://traefik.github.io/charts
helm repo update
helm upgrade --install \
  --namespace traefik \
  --create-namespace \
  --values traefik-values.yaml \
  traefik \
  traefik/traefik

# Check that Traefik was installed
kubectl get ingressclasses -A

NAME      CONTROLLER
traefik   traefik.io/ingress-controller
```

## TODOs

- [x] Niagara Deployment
- [x] Niagara Service
- [ ] Niagara Ingress
- [ ] Test with Workbench
- [ ] License
