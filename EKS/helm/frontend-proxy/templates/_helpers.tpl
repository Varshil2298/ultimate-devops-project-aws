{{/*
Expand the name of the chart.
*/}}
{{- define "opentelemetry-demo-frontendproxy.name" -}}
opentelemetry-demo-frontendproxy
{{- end -}}

{{/*
Create a default fully qualified name.
Uses the release name and appends -frontendproxy
*/}}
{{- define "opentelemetry-demo-frontendproxy.fullname" -}}
{{- printf "%s-frontendproxy" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "opentelemetry-demo-frontendproxy.labels" -}}
app.kubernetes.io/name: {{ include "opentelemetry-demo-frontendproxy.name" . }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: "1.12.0"
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
