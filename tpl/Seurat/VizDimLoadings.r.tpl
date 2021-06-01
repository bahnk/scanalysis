{{ block "Seurat::VizDimLoadings" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::VizDimLoadings(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Dims .Nfeatures .Col .Reduction .Projected .Balanced .Ncol .Combine }},{{ end }}{{ end }}
{{- if .Dims }}{{ "\n\t\t" }}dims={{ .Dims }}{{ if or .Nfeatures .Col .Reduction .Projected .Balanced .Ncol .Combine }},{{ end }}{{ end }}
{{- if .Nfeatures }}{{ "\n\t\t" }}nfeatures={{ .Nfeatures }}{{ if or .Col .Reduction .Projected .Balanced .Ncol .Combine }},{{ end }}{{ end }}
{{- if .Col }}{{ "\n\t\t" }}col="{{ .Col }}"{{ if or .Reduction .Projected .Balanced .Ncol .Combine }},{{ end }}{{ end }}
{{- if .Reduction }}{{ "\n\t\t" }}reduction="{{ .Reduction }}"{{ if or .Projected .Balanced .Ncol .Combine }},{{ end }}{{ end }}
{{- if .Projected }}{{ "\n\t\t" }}projected={{ .Projected }}{{ if or .Balanced .Ncol .Combine }},{{ end }}{{ end }}
{{- if .Balanced }}{{ "\n\t\t" }}balanced={{ .Balanced }}{{ if or .Ncol .Combine }},{{ end }}{{ end }}
{{- if .Ncol }}{{ "\n\t\t" }}ncol={{ .Ncol }}{{ if or .Combine }},{{ end }}{{ end }}
{{- if .Combine }}{{ "\n\t\t" }}combine={{ .Combine }}{{ end }}
	)
{{ end }}
