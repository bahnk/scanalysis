{{ block "Seurat::DimHeatmap" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::DimHeatmap(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Dims .Nfeatures .Cells .Reduction .Disp_min .Disp_max .Balanced .Projected .Ncol .Fast .Raster .Slot .Assays .Combine }},{{ end }}{{ end }}
{{- if .Dims }}{{ "\n\t\t" }}dims={{ .Dims }}{{ if or .Nfeatures .Cells .Reduction .Disp_min .Disp_max .Balanced .Projected .Ncol .Fast .Raster .Slot .Assays .Combine }},{{ end }}{{ end }}
{{- if .Nfeatures }}{{ "\n\t\t" }}nfeatures={{ .Nfeatures }}{{ if or .Cells .Reduction .Disp_min .Disp_max .Balanced .Projected .Ncol .Fast .Raster .Slot .Assays .Combine }},{{ end }}{{ end }}
{{- if .Cells }}{{ "\n\t\t" }}cells={{ .Cells }}{{ if or .Reduction .Disp_min .Disp_max .Balanced .Projected .Ncol .Fast .Raster .Slot .Assays .Combine }},{{ end }}{{ end }}
{{- if .Reduction }}{{ "\n\t\t" }}reduction="{{ .Reduction }}"{{ if or .Disp_min .Disp_max .Balanced .Projected .Ncol .Fast .Raster .Slot .Assays .Combine }},{{ end }}{{ end }}
{{- if .Disp_min }}{{ "\n\t\t" }}disp.min={{ .Disp_min }}{{ if or .Disp_max .Balanced .Projected .Ncol .Fast .Raster .Slot .Assays .Combine }},{{ end }}{{ end }}
{{- if .Disp_max }}{{ "\n\t\t" }}disp.max={{ .Disp_max }}{{ if or .Balanced .Projected .Ncol .Fast .Raster .Slot .Assays .Combine }},{{ end }}{{ end }}
{{- if .Balanced }}{{ "\n\t\t" }}balanced={{ .Balanced }}{{ if or .Projected .Ncol .Fast .Raster .Slot .Assays .Combine }},{{ end }}{{ end }}
{{- if .Projected }}{{ "\n\t\t" }}projected={{ .Projected }}{{ if or .Ncol .Fast .Raster .Slot .Assays .Combine }},{{ end }}{{ end }}
{{- if .Ncol }}{{ "\n\t\t" }}ncol={{ .Ncol }}{{ if or .Fast .Raster .Slot .Assays .Combine }},{{ end }}{{ end }}
{{- if .Fast }}{{ "\n\t\t" }}fast={{ .Fast }}{{ if or .Raster .Slot .Assays .Combine }},{{ end }}{{ end }}
{{- if .Raster }}{{ "\n\t\t" }}raster={{ .Raster }}{{ if or .Slot .Assays .Combine }},{{ end }}{{ end }}
{{- if .Slot }}{{ "\n\t\t" }}slot="{{ .Slot }}"{{ if or .Assays .Combine }},{{ end }}{{ end }}
{{- if .Assays }}{{ "\n\t\t" }}assays={{ .Assays }}{{ if or .Combine }},{{ end }}{{ end }}
{{- if .Combine }}{{ "\n\t\t" }}combine={{ .Combine }}{{ end }}
	)
{{ end }}
