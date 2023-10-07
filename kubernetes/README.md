# Niagara Kubernetes

Kubernetes Resources for Niagara

## Installing all the resources

```
kubectl apply -f .
```

## Assumptions

In the [ingress](./ingress-k8s-niagara.yaml) we assume that Traefik has been set up with an entrypoint named "n4-platform" open on port 5011.

```
# Traefik values.yaml
---
ports:
  n4-platform:
    port: 5011
    expose: true
    exposedPort: 5011
    protocol: TCP
```