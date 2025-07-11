apiVersion: gateway.networking.k8s.io/v1
kind: HTTPRoute
metadata:
  name: https-route
  namespace: test-adrilab-com
  labels:
    gateway: gateway
spec:
  parentRefs:
  - name: test-adrilab-com
    sectionName: https
  hostnames:
  - flask-app-gw.adrilab.com
  rules:
  - backendRefs:
    - name: test-adrilab-com
      port: 80
