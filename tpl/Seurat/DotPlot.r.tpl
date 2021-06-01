{{ block "Seurat::DotPlot" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::DotPlot(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Assay .Features .Cols .Col_min .Col_max .Dot_min .Dot_scale .Idents .Group_by .Split_by .Cluster_idents .Scale .Scale_by .Scale_min .Scale_max }},{{ end }}{{ end }}
{{- if .Assay }}{{ "\n\t\t" }}assay={{ .Assay }}{{ if or .Features .Cols .Col_min .Col_max .Dot_min .Dot_scale .Idents .Group_by .Split_by .Cluster_idents .Scale .Scale_by .Scale_min .Scale_max }},{{ end }}{{ end }}
{{- if .Features }}{{ "\n\t\t" }}features={{ .Features }}{{ if or .Cols .Col_min .Col_max .Dot_min .Dot_scale .Idents .Group_by .Split_by .Cluster_idents .Scale .Scale_by .Scale_min .Scale_max }},{{ end }}{{ end }}
{{- if .Cols }}{{ "\n\t\t" }}cols={{ .Cols }}{{ if or .Col_min .Col_max .Dot_min .Dot_scale .Idents .Group_by .Split_by .Cluster_idents .Scale .Scale_by .Scale_min .Scale_max }},{{ end }}{{ end }}
{{- if .Col_min }}{{ "\n\t\t" }}col.min={{ .Col_min }}{{ if or .Col_max .Dot_min .Dot_scale .Idents .Group_by .Split_by .Cluster_idents .Scale .Scale_by .Scale_min .Scale_max }},{{ end }}{{ end }}
{{- if .Col_max }}{{ "\n\t\t" }}col.max={{ .Col_max }}{{ if or .Dot_min .Dot_scale .Idents .Group_by .Split_by .Cluster_idents .Scale .Scale_by .Scale_min .Scale_max }},{{ end }}{{ end }}
{{- if .Dot_min }}{{ "\n\t\t" }}dot.min={{ .Dot_min }}{{ if or .Dot_scale .Idents .Group_by .Split_by .Cluster_idents .Scale .Scale_by .Scale_min .Scale_max }},{{ end }}{{ end }}
{{- if .Dot_scale }}{{ "\n\t\t" }}dot.scale={{ .Dot_scale }}{{ if or .Idents .Group_by .Split_by .Cluster_idents .Scale .Scale_by .Scale_min .Scale_max }},{{ end }}{{ end }}
{{- if .Idents }}{{ "\n\t\t" }}idents={{ .Idents }}{{ if or .Group_by .Split_by .Cluster_idents .Scale .Scale_by .Scale_min .Scale_max }},{{ end }}{{ end }}
{{- if .Group_by }}{{ "\n\t\t" }}group.by={{ .Group_by }}{{ if or .Split_by .Cluster_idents .Scale .Scale_by .Scale_min .Scale_max }},{{ end }}{{ end }}
{{- if .Split_by }}{{ "\n\t\t" }}split.by={{ .Split_by }}{{ if or .Cluster_idents .Scale .Scale_by .Scale_min .Scale_max }},{{ end }}{{ end }}
{{- if .Cluster_idents }}{{ "\n\t\t" }}cluster.idents={{ .Cluster_idents }}{{ if or .Scale .Scale_by .Scale_min .Scale_max }},{{ end }}{{ end }}
{{- if .Scale }}{{ "\n\t\t" }}scale={{ .Scale }}{{ if or .Scale_by .Scale_min .Scale_max }},{{ end }}{{ end }}
{{- if .Scale_by }}{{ "\n\t\t" }}scale.by="{{ .Scale_by }}"{{ if or .Scale_min .Scale_max }},{{ end }}{{ end }}
{{- if .Scale_min }}{{ "\n\t\t" }}scale.min={{ .Scale_min }}{{ if or .Scale_max }},{{ end }}{{ end }}
{{- if .Scale_max }}{{ "\n\t\t" }}scale.max={{ .Scale_max }}{{ end }}
	)
{{ end }}
