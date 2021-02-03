# replace DASHBOARD_URL with the hostname you want for your dashboard
# the hostname should be setup to point to your ingress controller
DASHBOARD_URL=dashboard.domain.tld
kubectl apply -n tekton-pipelines -f - <<EOF
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: tekton-dashboard
  namespace: tekton-pipelines
spec:
  rules:
  - host: $DASHBOARD_URL
    http:
      paths:
      - backend:
          serviceName: tekton-dashboard
          servicePort: 9097
EOF
