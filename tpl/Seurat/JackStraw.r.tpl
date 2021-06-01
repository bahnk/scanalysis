{{ block "Seurat::JackStraw" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::JackStraw(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Reduction .Assay .Dims .Num_replicate .Prop_freq .Verbose .Maxit }},{{ end }}{{ end }}
{{- if .Reduction }}{{ "\n\t\t" }}reduction="{{ .Reduction }}"{{ if or .Assay .Dims .Num_replicate .Prop_freq .Verbose .Maxit }},{{ end }}{{ end }}
{{- if .Assay }}{{ "\n\t\t" }}assay={{ .Assay }}{{ if or .Dims .Num_replicate .Prop_freq .Verbose .Maxit }},{{ end }}{{ end }}
{{- if .Dims }}{{ "\n\t\t" }}dims={{ .Dims }}{{ if or .Num_replicate .Prop_freq .Verbose .Maxit }},{{ end }}{{ end }}
{{- if .Num_replicate }}{{ "\n\t\t" }}num.replicate={{ .Num_replicate }}{{ if or .Prop_freq .Verbose .Maxit }},{{ end }}{{ end }}
{{- if .Prop_freq }}{{ "\n\t\t" }}prop.freq={{ .Prop_freq }}{{ if or .Verbose .Maxit }},{{ end }}{{ end }}
{{- if .Verbose }}{{ "\n\t\t" }}verbose={{ .Verbose }}{{ if or .Maxit }},{{ end }}{{ end }}
{{- if .Maxit }}{{ "\n\t\t" }}maxit={{ .Maxit }}{{ end }}
	)
{{ end }}
