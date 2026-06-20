{{/*
Common labels applied to all resources in this chart.
*/}}
{{- define "service.labels" -}}
app: {{ .Release.Name }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels used by Deployment and Service to identify pods.
*/}}
{{- define "service.selectorLabels" -}}
app: {{ .Release.Name }}
{{- end }}
