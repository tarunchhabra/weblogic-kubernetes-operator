# Copyright 2018 Oracle Corporation and/or its affiliates.  All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl.

{{- define "operator.operatorInternalService" }}
---
apiVersion: "v1"
kind: "Service"
metadata:
  name: "internal-weblogic-operator-svc"
  namespace: {{ .operatorNamespace | quote }}
  labels:
    weblogic.resourceVersion: "operator-v1"
    weblogic.operatorName: {{ .operatorNamespace | quote }}
spec:
  type: "ClusterIP"
  selector:
    app: "weblogic-operator"
  ports:
    - port: 8082
      name: "rest"
{{- end }}
