# Httpd Helm Chart

## Chart Details:

HTTP Daemon is a software program that runs in the background of a web server and waits for the incoming server requests. The daemon answers the request automatically and serves the hypertext and multimedia documents over the internet using HTTP.

Httpd version:2.4.6

## Installing the chart in cli:

```
helm install --name <release-name> httpd --tiller-namespace=<your-tiller-namespace> -n <your-namespace>
```

## Uninstalling the chart:

```
helm del --purge <release-name>
```
## Accessing the application after deploying the chart:

Open any browser and type the host name configured for ingress


