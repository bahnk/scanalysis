{{ block "Seurat::VariableFeatures" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::VariableFeatures(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Selection_method }},{{ end }}{{ end }}
{{- if .Selection_method }}{{ "\n\t\t" }}selection.method={{ .Selection_method }}{{ end }}
	)
{{ end }}
