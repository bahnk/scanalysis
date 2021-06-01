{{ block "FindVariableFeatures" . }}
###############################################################################
### {{ .Name }} VARIABLE FEATURES

{{ .OutObject }} <- {{ .InObject }}
{{ template "Seurat::FindVariableFeatures" .FindVariableFeatures }}
{{ if .SaveRda }}{{ template "SaveRda" .SaveRda }}{{ end }}
{{ end }}

