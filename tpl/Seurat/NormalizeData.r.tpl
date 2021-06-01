{{ block "Seurat::NormalizeData" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::NormalizeData(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Normalization_method .Scale_factor .Margin .Verbose }},{{ end }}{{ end }}
{{- if .Normalization_method }}{{ "\n\t\t" }}normalization.method="{{ .Normalization_method }}"{{ if or .Scale_factor .Margin .Verbose }},{{ end }}{{ end }}
{{- if .Scale_factor }}{{ "\n\t\t" }}scale.factor={{ .Scale_factor }}{{ if or .Margin .Verbose }},{{ end }}{{ end }}
{{- if .Margin }}{{ "\n\t\t" }}margin={{ .Margin }}{{ if or .Verbose }},{{ end }}{{ end }}
{{- if .Verbose }}{{ "\n\t\t" }}verbose={{ .Verbose }}{{ end }}
	)
{{ end }}
