{{ block "Normalizing" . }}
###############################################################################
### {{ .Name }} NORMALIZATION

{{ if .Parallelization }}{{ template "Parallelization" .Parallelization }}{{ end }}
{{ .OutObject }} <- {{ .InObject }}
{{ template "Seurat::NormalizeData" .NormalizeData }}
{{ if .SaveRda }}{{ template "SaveRda" .SaveRda }}{{ end }}
{{ end }}
