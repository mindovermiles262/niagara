#!/bin/bash

helm upgrade --install --namespace kube-system --values ./traefik-values.yaml traefik traefik/traefik
