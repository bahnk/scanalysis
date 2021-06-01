{{ block "Seurat::CreateSeuratObject" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::CreateSeuratObject(
{{- if .Counts }}{{ "\n\t\t" }}counts={{ .Counts }}{{ if or .Project .Assay .Names_field .Names_delim .Meta_data }},{{ end }}{{ end }}
{{- if .Project }}{{ "\n\t\t" }}project="{{ .Project }}"{{ if or .Assay .Names_field .Names_delim .Meta_data }},{{ end }}{{ end }}
{{- if .Assay }}{{ "\n\t\t" }}assay="{{ .Assay }}"{{ if or .Names_field .Names_delim .Meta_data }},{{ end }}{{ end }}
{{- if .Names_field }}{{ "\n\t\t" }}names.field={{ .Names_field }}{{ if or .Names_delim .Meta_data }},{{ end }}{{ end }}
{{- if .Names_delim }}{{ "\n\t\t" }}names.delim="{{ .Names_delim }}"{{ if or .Meta_data }},{{ end }}{{ end }}
{{- if .Meta_data }}{{ "\n\t\t" }}meta.data={{ .Meta_data }}{{ end }}
	)
{{ end }}
