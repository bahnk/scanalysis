{{ block "IntegrationSCTransform" . }}
###############################################################################
### {{ .Name }} SC TRANSFORM INTEGRATION

{{ .SampleListVariable }} <- list()
{{ range $name, $object := .Samples }}
{{ $.SampleListVariable }}[["{{ $name }}"]] <- {{ $object }}
{{ end }}
{{ .SampleListVariable }} <- base::lapply({{ .SampleListVariable }}, FUN=Seurat::SCTransform)
{{ template "Seurat::SelectIntegrationFeatures" .SelectIntegrationFeatures }}
{{ template "Seurat::PrepSCTIntegration" .PrepSCTIntegration }}
{{ template "Seurat::FindIntegrationAnchors" .FindIntegrationAnchors }}
{{ template "Seurat::IntegrateData" .IntegrateData }}
Seurat::DefaultAssay({{ .OutObject }}) <- "integrated"
{{ if .SaveRda }}{{ template "SaveRda" .SaveRda }}{{ end }}
{{ end }}
