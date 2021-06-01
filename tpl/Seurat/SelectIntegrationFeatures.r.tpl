{{ block "Seurat::SelectIntegrationFeatures" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::SelectIntegrationFeatures(
{{- if .Object_list }}{{ "\n\t\t" }}object.list={{ .Object_list }}{{ if or .Nfeatures .Assay .Verbose .Fvf_nfeatures }},{{ end }}{{ end }}
{{- if .Nfeatures }}{{ "\n\t\t" }}nfeatures={{ .Nfeatures }}{{ if or .Assay .Verbose .Fvf_nfeatures }},{{ end }}{{ end }}
{{- if .Assay }}{{ "\n\t\t" }}assay={{ .Assay }}{{ if or .Verbose .Fvf_nfeatures }},{{ end }}{{ end }}
{{- if .Verbose }}{{ "\n\t\t" }}verbose={{ .Verbose }}{{ if or .Fvf_nfeatures }},{{ end }}{{ end }}
{{- if .Fvf_nfeatures }}{{ "\n\t\t" }}fvf.nfeatures={{ .Fvf_nfeatures }}{{ end }}
	)
{{ end }}
