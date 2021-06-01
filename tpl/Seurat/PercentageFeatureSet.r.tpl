{{ block "Seurat::PercentageFeatureSet" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::PercentageFeatureSet(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Pattern .Features .Col_name .Assay }},{{ end }}{{ end }}
{{- if .Pattern }}{{ "\n\t\t" }}pattern={{ .Pattern }}{{ if or .Features .Col_name .Assay }},{{ end }}{{ end }}
{{- if .Features }}{{ "\n\t\t" }}features={{ .Features }}{{ if or .Col_name .Assay }},{{ end }}{{ end }}
{{- if .Col_name }}{{ "\n\t\t" }}col.name={{ .Col_name }}{{ if or .Assay }},{{ end }}{{ end }}
{{- if .Assay }}{{ "\n\t\t" }}assay={{ .Assay }}{{ end }}
	)
{{ end }}
