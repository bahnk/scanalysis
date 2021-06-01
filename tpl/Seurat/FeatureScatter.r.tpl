{{ block "Seurat::FeatureScatter" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::FeatureScatter(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Feature1 .Feature2 .Cells .Group_by .Cols .Pt_size .Shape_by .Span .Smooth .Combine .Slot .Plot_cor .Raster }},{{ end }}{{ end }}
{{- if .Feature1 }}{{ "\n\t\t" }}feature1={{ .Feature1 }}{{ if or .Feature2 .Cells .Group_by .Cols .Pt_size .Shape_by .Span .Smooth .Combine .Slot .Plot_cor .Raster }},{{ end }}{{ end }}
{{- if .Feature2 }}{{ "\n\t\t" }}feature2={{ .Feature2 }}{{ if or .Cells .Group_by .Cols .Pt_size .Shape_by .Span .Smooth .Combine .Slot .Plot_cor .Raster }},{{ end }}{{ end }}
{{- if .Cells }}{{ "\n\t\t" }}cells={{ .Cells }}{{ if or .Group_by .Cols .Pt_size .Shape_by .Span .Smooth .Combine .Slot .Plot_cor .Raster }},{{ end }}{{ end }}
{{- if .Group_by }}{{ "\n\t\t" }}group.by={{ .Group_by }}{{ if or .Cols .Pt_size .Shape_by .Span .Smooth .Combine .Slot .Plot_cor .Raster }},{{ end }}{{ end }}
{{- if .Cols }}{{ "\n\t\t" }}cols={{ .Cols }}{{ if or .Pt_size .Shape_by .Span .Smooth .Combine .Slot .Plot_cor .Raster }},{{ end }}{{ end }}
{{- if .Pt_size }}{{ "\n\t\t" }}pt.size={{ .Pt_size }}{{ if or .Shape_by .Span .Smooth .Combine .Slot .Plot_cor .Raster }},{{ end }}{{ end }}
{{- if .Shape_by }}{{ "\n\t\t" }}shape.by={{ .Shape_by }}{{ if or .Span .Smooth .Combine .Slot .Plot_cor .Raster }},{{ end }}{{ end }}
{{- if .Span }}{{ "\n\t\t" }}span={{ .Span }}{{ if or .Smooth .Combine .Slot .Plot_cor .Raster }},{{ end }}{{ end }}
{{- if .Smooth }}{{ "\n\t\t" }}smooth={{ .Smooth }}{{ if or .Combine .Slot .Plot_cor .Raster }},{{ end }}{{ end }}
{{- if .Combine }}{{ "\n\t\t" }}combine={{ .Combine }}{{ if or .Slot .Plot_cor .Raster }},{{ end }}{{ end }}
{{- if .Slot }}{{ "\n\t\t" }}slot="{{ .Slot }}"{{ if or .Plot_cor .Raster }},{{ end }}{{ end }}
{{- if .Plot_cor }}{{ "\n\t\t" }}plot.cor={{ .Plot_cor }}{{ if or .Raster }},{{ end }}{{ end }}
{{- if .Raster }}{{ "\n\t\t" }}raster={{ .Raster }}{{ end }}
	)
{{ end }}
