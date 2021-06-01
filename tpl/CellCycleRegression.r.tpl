{{ block "CellCycleRegression" . }}
###############################################################################
### {{ .Name }} CELL CYCLE REGRESSION

{{ if .Parallelization }}{{ template "Parallelization" .Parallelization }}{{ end }}
{{ .OutObject }} <- {{ .InObject }}
{{ .FeaturesVariable }} <- rownames({{ .OutObject }})
{{ template "Seurat::ScaleData" .ScaleData }}
{{ if .SaveRda }}{{ template "SaveRda" .SaveRda }}{{ end }}
{{ end }}
