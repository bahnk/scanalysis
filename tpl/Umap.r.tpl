{{ block "Umap" . }}
###############################################################################
### {{ .Name }} UMAP

{{ .OutObject }} <- {{ .InObject }}
{{ template "Seurat::RunUMAP" .RunUMAP }}
{{ if .SaveRda }}{{ template "SaveRda" .SaveRda }}{{ end }}
{{ end }}
