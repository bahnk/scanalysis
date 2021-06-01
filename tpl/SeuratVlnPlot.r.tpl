{{ block "NFeatureRNAVlnPlot" . }}
###############################################################################
### {{ .Name }} {{ .Title }}

{{ template "Seurat::VlnPlot" .VlnPlot }}
{{ if .GGSave }}{{ template "GGSave" .GGSave }}{{ end }}
{{ end }}
