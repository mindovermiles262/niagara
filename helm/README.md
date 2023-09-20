# Niagara Helm

A helm chart for Niagara

## Installing the chart

Check your kubectl configuration to make sure you're pointed at the cluster you want to install this Niagara chart onto

```
kubectl config current-contextA
```

Then install/upgrade the niagara chart.
```
helm upgrade --install my-niagara-chart .
```

