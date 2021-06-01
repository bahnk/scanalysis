{{ block "CellCycleDifferenceRegression" . }}
###############################################################################
### {{ .Name }} CELL CYCLE DIFFERENCE REGRESSION

{{ if .Parallelization }}{{ template "Parallelization" .Parallelization }}{{ end }}
{{ .OutObject }} <- {{ .InObject }}
{{ .OutObject }}${{ .CellCycleDifferenceVariable }} <- {{ .OutObject }}$S.Score - {{ .OutObject }}$G2M.Score
{{ template "Seurat::ScaleData" .ScaleData }}
{{ if .SaveRda }}{{ template "SaveRda" .SaveRda }}{{ end }}
{{ end }}

