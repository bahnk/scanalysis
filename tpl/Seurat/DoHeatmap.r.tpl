{{ block "Seurat::DoHeatmap" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::DoHeatmap(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Features .Cells .Group_by .Group_bar .Group_colors .Disp_min .Disp_max .Slot .Assay .Label .Size .Hjust .Angle .Raster .Draw_lines .Lines_width .Group_bar_height .Combine }},{{ end }}{{ end }}
{{- if .Features }}{{ "\n\t\t" }}features={{ .Features }}{{ if or .Cells .Group_by .Group_bar .Group_colors .Disp_min .Disp_max .Slot .Assay .Label .Size .Hjust .Angle .Raster .Draw_lines .Lines_width .Group_bar_height .Combine }},{{ end }}{{ end }}
{{- if .Cells }}{{ "\n\t\t" }}cells={{ .Cells }}{{ if or .Group_by .Group_bar .Group_colors .Disp_min .Disp_max .Slot .Assay .Label .Size .Hjust .Angle .Raster .Draw_lines .Lines_width .Group_bar_height .Combine }},{{ end }}{{ end }}
{{- if .Group_by }}{{ "\n\t\t" }}group.by="{{ .Group_by }}"{{ if or .Group_bar .Group_colors .Disp_min .Disp_max .Slot .Assay .Label .Size .Hjust .Angle .Raster .Draw_lines .Lines_width .Group_bar_height .Combine }},{{ end }}{{ end }}
{{- if .Group_bar }}{{ "\n\t\t" }}group.bar={{ .Group_bar }}{{ if or .Group_colors .Disp_min .Disp_max .Slot .Assay .Label .Size .Hjust .Angle .Raster .Draw_lines .Lines_width .Group_bar_height .Combine }},{{ end }}{{ end }}
{{- if .Group_colors }}{{ "\n\t\t" }}group.colors={{ .Group_colors }}{{ if or .Disp_min .Disp_max .Slot .Assay .Label .Size .Hjust .Angle .Raster .Draw_lines .Lines_width .Group_bar_height .Combine }},{{ end }}{{ end }}
{{- if .Disp_min }}{{ "\n\t\t" }}disp.min={{ .Disp_min }}{{ if or .Disp_max .Slot .Assay .Label .Size .Hjust .Angle .Raster .Draw_lines .Lines_width .Group_bar_height .Combine }},{{ end }}{{ end }}
{{- if .Disp_max }}{{ "\n\t\t" }}disp.max={{ .Disp_max }}{{ if or .Slot .Assay .Label .Size .Hjust .Angle .Raster .Draw_lines .Lines_width .Group_bar_height .Combine }},{{ end }}{{ end }}
{{- if .Slot }}{{ "\n\t\t" }}slot="{{ .Slot }}"{{ if or .Assay .Label .Size .Hjust .Angle .Raster .Draw_lines .Lines_width .Group_bar_height .Combine }},{{ end }}{{ end }}
{{- if .Assay }}{{ "\n\t\t" }}assay={{ .Assay }}{{ if or .Label .Size .Hjust .Angle .Raster .Draw_lines .Lines_width .Group_bar_height .Combine }},{{ end }}{{ end }}
{{- if .Label }}{{ "\n\t\t" }}label={{ .Label }}{{ if or .Size .Hjust .Angle .Raster .Draw_lines .Lines_width .Group_bar_height .Combine }},{{ end }}{{ end }}
{{- if .Size }}{{ "\n\t\t" }}size={{ .Size }}{{ if or .Hjust .Angle .Raster .Draw_lines .Lines_width .Group_bar_height .Combine }},{{ end }}{{ end }}
{{- if .Hjust }}{{ "\n\t\t" }}hjust={{ .Hjust }}{{ if or .Angle .Raster .Draw_lines .Lines_width .Group_bar_height .Combine }},{{ end }}{{ end }}
{{- if .Angle }}{{ "\n\t\t" }}angle={{ .Angle }}{{ if or .Raster .Draw_lines .Lines_width .Group_bar_height .Combine }},{{ end }}{{ end }}
{{- if .Raster }}{{ "\n\t\t" }}raster={{ .Raster }}{{ if or .Draw_lines .Lines_width .Group_bar_height .Combine }},{{ end }}{{ end }}
{{- if .Draw_lines }}{{ "\n\t\t" }}draw.lines={{ .Draw_lines }}{{ if or .Lines_width .Group_bar_height .Combine }},{{ end }}{{ end }}
{{- if .Lines_width }}{{ "\n\t\t" }}lines.width={{ .Lines_width }}{{ if or .Group_bar_height .Combine }},{{ end }}{{ end }}
{{- if .Group_bar_height }}{{ "\n\t\t" }}group.bar.height={{ .Group_bar_height }}{{ if or .Combine }},{{ end }}{{ end }}
{{- if .Combine }}{{ "\n\t\t" }}combine={{ .Combine }}{{ end }}
	)
{{ end }}
