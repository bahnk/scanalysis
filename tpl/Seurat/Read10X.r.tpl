{{ block "Seurat::Read10X" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::Read10X(
{{- if .Data_dir }}{{ "\n\t\t" }}data.dir={{ .Data_dir }}{{ if or .Gene_column .Cell_column .Unique_features .Strip_suffix }},{{ end }}{{ end }}
{{- if .Gene_column }}{{ "\n\t\t" }}gene.column={{ .Gene_column }}{{ if or .Cell_column .Unique_features .Strip_suffix }},{{ end }}{{ end }}
{{- if .Cell_column }}{{ "\n\t\t" }}cell.column={{ .Cell_column }}{{ if or .Unique_features .Strip_suffix }},{{ end }}{{ end }}
{{- if .Unique_features }}{{ "\n\t\t" }}unique.features={{ .Unique_features }}{{ if or .Strip_suffix }},{{ end }}{{ end }}
{{- if .Strip_suffix }}{{ "\n\t\t" }}strip.suffix={{ .Strip_suffix }}{{ end }}
	)
{{ end }}
