{{ block "Seurat::RenameCells" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::RenameCells(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Add_cell_id .New_names .For_merge }},{{ end }}{{ end }}
{{- if .Add_cell_id }}{{ "\n\t\t" }}add.cell.id={{ .Add_cell_id }}{{ if or .New_names .For_merge }},{{ end }}{{ end }}
{{- if .New_names }}{{ "\n\t\t" }}new.names={{ .New_names }}{{ if or .For_merge }},{{ end }}{{ end }}
{{- if .For_merge }}{{ "\n\t\t" }}for.merge={{ .For_merge }}{{ end }}
	)
{{ end }}
