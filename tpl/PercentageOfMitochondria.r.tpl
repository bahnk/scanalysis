{{ block "PercentageOfMitochondria" . }}
###############################################################################
### {{ .Name }} MITOCHONDRIA

{{ .OutObject }} <- {{ .InObject }}
{{ .PatternVariable }} <- "{{ .Pattern }}"
{{ template "Seurat::PercentageFeatureSet" .PercentageFeatureSet }}
{{ if .SaveRda }}{{ template "SaveRda" .SaveRda }}{{ end }}
{{ end }}
