{{ block "Seurat::VariableFeaturePlot" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::VariableFeaturePlot(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Cols .Pt_size .Log .Selection_method .Assay .Raster }},{{ end }}{{ end }}
{{- if .Cols }}{{ "\n\t\t" }}cols={{ .Cols }}{{ if or .Pt_size .Log .Selection_method .Assay .Raster }},{{ end }}{{ end }}
{{- if .Pt_size }}{{ "\n\t\t" }}pt.size={{ .Pt_size }}{{ if or .Log .Selection_method .Assay .Raster }},{{ end }}{{ end }}
{{- if .Log }}{{ "\n\t\t" }}log={{ .Log }}{{ if or .Selection_method .Assay .Raster }},{{ end }}{{ end }}
{{- if .Selection_method }}{{ "\n\t\t" }}selection.method={{ .Selection_method }}{{ if or .Assay .Raster }},{{ end }}{{ end }}
{{- if .Assay }}{{ "\n\t\t" }}assay={{ .Assay }}{{ if or .Raster }},{{ end }}{{ end }}
{{- if .Raster }}{{ "\n\t\t" }}raster={{ .Raster }}{{ end }}
	)
{{ end }}
