{{ block "Integration" . }}
###############################################################################
### {{ .Name }} INTEGRATION

{{ .SampleListVariable }} <- list()
{{ range $name, $object := .Samples }}
{{ $.SampleListVariable }}[["{{ $name }}"]] <- {{ $object }}
{{ end }}
{{ template "Seurat::SelectIntegrationFeatures" .SelectIntegrationFeatures }}
{{ template "Seurat::FindIntegrationAnchors" .FindIntegrationAnchors }}
{{ template "Seurat::IntegrateData" .IntegrateData }}
Seurat::DefaultAssay({{ .OutObject }}) <- "integrated"
{{ if .SaveRda }}{{ template "SaveRda" .SaveRda }}{{ end }}
{{ end }}
