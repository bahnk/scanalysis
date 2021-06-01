{{ block "Seurat::DimPlot" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::DimPlot(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Dims .Cells .Cols .Pt_size .Reduction .Group_by .Split_by .Shape_by .Order .Shuffle .Seed .Label .Label_size .Label_color .Label_box .Repel .Cells_highlight .Cols_highlight .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Dims }}{{ "\n\t\t" }}dims={{ .Dims }}{{ if or .Cells .Cols .Pt_size .Reduction .Group_by .Split_by .Shape_by .Order .Shuffle .Seed .Label .Label_size .Label_color .Label_box .Repel .Cells_highlight .Cols_highlight .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Cells }}{{ "\n\t\t" }}cells={{ .Cells }}{{ if or .Cols .Pt_size .Reduction .Group_by .Split_by .Shape_by .Order .Shuffle .Seed .Label .Label_size .Label_color .Label_box .Repel .Cells_highlight .Cols_highlight .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Cols }}{{ "\n\t\t" }}cols={{ .Cols }}{{ if or .Pt_size .Reduction .Group_by .Split_by .Shape_by .Order .Shuffle .Seed .Label .Label_size .Label_color .Label_box .Repel .Cells_highlight .Cols_highlight .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Pt_size }}{{ "\n\t\t" }}pt.size={{ .Pt_size }}{{ if or .Reduction .Group_by .Split_by .Shape_by .Order .Shuffle .Seed .Label .Label_size .Label_color .Label_box .Repel .Cells_highlight .Cols_highlight .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Reduction }}{{ "\n\t\t" }}reduction={{ .Reduction }}{{ if or .Group_by .Split_by .Shape_by .Order .Shuffle .Seed .Label .Label_size .Label_color .Label_box .Repel .Cells_highlight .Cols_highlight .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Group_by }}{{ "\n\t\t" }}group.by={{ .Group_by }}{{ if or .Split_by .Shape_by .Order .Shuffle .Seed .Label .Label_size .Label_color .Label_box .Repel .Cells_highlight .Cols_highlight .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Split_by }}{{ "\n\t\t" }}split.by={{ .Split_by }}{{ if or .Shape_by .Order .Shuffle .Seed .Label .Label_size .Label_color .Label_box .Repel .Cells_highlight .Cols_highlight .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Shape_by }}{{ "\n\t\t" }}shape.by={{ .Shape_by }}{{ if or .Order .Shuffle .Seed .Label .Label_size .Label_color .Label_box .Repel .Cells_highlight .Cols_highlight .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Order }}{{ "\n\t\t" }}order={{ .Order }}{{ if or .Shuffle .Seed .Label .Label_size .Label_color .Label_box .Repel .Cells_highlight .Cols_highlight .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Shuffle }}{{ "\n\t\t" }}shuffle={{ .Shuffle }}{{ if or .Seed .Label .Label_size .Label_color .Label_box .Repel .Cells_highlight .Cols_highlight .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Seed }}{{ "\n\t\t" }}seed={{ .Seed }}{{ if or .Label .Label_size .Label_color .Label_box .Repel .Cells_highlight .Cols_highlight .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Label }}{{ "\n\t\t" }}label={{ .Label }}{{ if or .Label_size .Label_color .Label_box .Repel .Cells_highlight .Cols_highlight .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Label_size }}{{ "\n\t\t" }}label.size={{ .Label_size }}{{ if or .Label_color .Label_box .Repel .Cells_highlight .Cols_highlight .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Label_color }}{{ "\n\t\t" }}label.color="{{ .Label_color }}"{{ if or .Label_box .Repel .Cells_highlight .Cols_highlight .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Label_box }}{{ "\n\t\t" }}label.box={{ .Label_box }}{{ if or .Repel .Cells_highlight .Cols_highlight .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Repel }}{{ "\n\t\t" }}repel={{ .Repel }}{{ if or .Cells_highlight .Cols_highlight .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Cells_highlight }}{{ "\n\t\t" }}cells.highlight={{ .Cells_highlight }}{{ if or .Cols_highlight .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Cols_highlight }}{{ "\n\t\t" }}cols.highlight="{{ .Cols_highlight }}"{{ if or .Sizes_highlight .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Sizes_highlight }}{{ "\n\t\t" }}sizes.highlight={{ .Sizes_highlight }}{{ if or .Na_value .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Na_value }}{{ "\n\t\t" }}na.value="{{ .Na_value }}"{{ if or .Ncol .Combine .Raster }},{{ end }}{{ end }}
{{- if .Ncol }}{{ "\n\t\t" }}ncol={{ .Ncol }}{{ if or .Combine .Raster }},{{ end }}{{ end }}
{{- if .Combine }}{{ "\n\t\t" }}combine={{ .Combine }}{{ if or .Raster }},{{ end }}{{ end }}
{{- if .Raster }}{{ "\n\t\t" }}raster={{ .Raster }}{{ end }}
	)
{{ end }}
