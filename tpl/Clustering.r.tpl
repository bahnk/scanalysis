{{ block "Clustering" . }}
###############################################################################
### {{ .Name }} CLUSTERING

{{ if .Parallelization }}{{ template "Parallelization" .Parallelization }}{{ end }}
{{ .OutObject }} <- {{ .InObject }}
{{ template "Seurat::FindNeighbors" .FindNeighbors }}
{{ template "Seurat::FindClusters" .FindClusters }}
{{ if .SaveRda }}{{ template "SaveRda" .SaveRda }}{{ end }}
{{ end }}
