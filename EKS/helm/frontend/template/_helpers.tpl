{{- define "opentelemetry-demo-frontend.fullname" -}}
{{ printf "%s-frontend" .Release.Name }}
{{- end }}

{{- define "opentelemetry-demo-frontend.labels" -}}
opentelemetry.io/name: {{ include "opentelemetry-demo-frontend.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/component: frontend
app.kubernetes.io/name: {{ include "opentelemetry-demo-frontend.fullname" . }}
app.kubernetes.io/version: "1.12.0"
app.kubernetes.io/part-of: opentelemetry-demo
{{- end }}

{{- define "opentelemetry-demo-frontend.selectorLabels" -}}
opentelemetry.io/name: {{ include "opentelemetry-demo-frontend.fullname" . }}
{{- end }}
