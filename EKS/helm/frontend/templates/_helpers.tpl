{{/*
Generate the full name of the frontend chart resource.
If .Values.nameOverride is set, use it as the base name.
Otherwise, use the .Release.Name.
Suffix everything with `-frontend`.
*/}}
{{- define "opentelemetry-demo-frontend.fullname" -}}
{{- if .Values.nameOverride }}
{{- printf "%s-frontend" .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-frontend" .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{/*
Common labels for frontend resources.
*/}}
{{- define "opentelemetry-demo-frontend.labels" -}}
opentelemetry.io/name: {{ include "opentelemetry-demo-frontend.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/component: frontend
app.kubernetes.io/name: {{ include "opentelemetry-demo-frontend.fullname" . }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/part-of: opentelemetry-demo
{{- end }}

{{/*
Selector labels used in Deployment selector and Service selector.
*/}}
{{- define "opentelemetry-demo-frontend.selectorLabels" -}}
app.kubernetes.io/name: {{ include "opentelemetry-demo-frontend.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/component: frontend
{{- end }}
