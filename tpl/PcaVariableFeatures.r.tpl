{{ block "PcaVariableFeatures" . }}
###############################################################################
### {{ .Name }} VARIABLE FEATURES PCA

{{ .OutObject }} <- {{ .InObject }}
{{ template "Seurat::VariableFeatures" .VariableFeatures }}
{{ template "Seurat::RunPCA" .RunPCA }}
{{ if .SaveRda }}{{ template "SaveRda" .SaveRda }}{{ end }}
{{ end }}
