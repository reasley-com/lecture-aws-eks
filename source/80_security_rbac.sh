cat <<EOF > 80_security_rbac.yaml
apiVersion: v1
kind: Namespace
metadata:
  name: rbac-test-ns
---
kind: ClusterRole
apiVersion: rbac.authorization.k8s.io/v1
metadata:
  name: rbac-test-role
rules:
  # 허가할 조작을 설정
  - apiGroups: ["extensions", "apps", ""]
    resources: ["pods","pods/log","deployments","replicasets","services"]
    verbs: ["get", "watch", "list"]
---
kind: RoleBinding
apiVersion: rbac.authorization.k8s.io/v1
metadata:
  name: rbac-test-role-binding
  # 대상 네임스페이스만 조작 허가
  namespace: rbac-test-ns
roleRef:
  kind: ClusterRole
  name: rbac-test-role # ClusterRole명을 지정
  apiGroup: rbac.authorization.k8s.io
subjects:
  - kind: Group
    name: rbac-test-group # 허가할 그룹을 지정
    apiGroup: rbac.authorization.k8s.io
EOF

kubectl apply -f 80_security_rbac.yaml