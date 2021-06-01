{{ block "Scaling" . }}
###############################################################################
### {{ .Name }} SCALING

{{ if .Parallelization }}{{ template "Parallelization" .Parallelization }}{{ end }}
{{ .OutObject }} <- {{ .InObject }}
{{ .GenesVariable }} <- base::rownames({{ .OutObject }})
{{ template "Seurat::ScaleData" .ScaleData }}
{{ if .SaveRda }}{{ template "SaveRda" .SaveRda }}{{ end }}
{{ end }}
