{{ block "Seurat::FindVariableFeatures" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::FindVariableFeatures(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Selection_method .Loess_span .Clip_max .Mean_function .Dispersion_function .Num_bin .Binning_method .Nfeatures .Mean_cutoff .Dispersion_cutoff .Verbose }},{{ end }}{{ end }}
{{- if .Selection_method }}{{ "\n\t\t" }}selection.method="{{ .Selection_method }}"{{ if or .Loess_span .Clip_max .Mean_function .Dispersion_function .Num_bin .Binning_method .Nfeatures .Mean_cutoff .Dispersion_cutoff .Verbose }},{{ end }}{{ end }}
{{- if .Loess_span }}{{ "\n\t\t" }}loess.span={{ .Loess_span }}{{ if or .Clip_max .Mean_function .Dispersion_function .Num_bin .Binning_method .Nfeatures .Mean_cutoff .Dispersion_cutoff .Verbose }},{{ end }}{{ end }}
{{- if .Clip_max }}{{ "\n\t\t" }}clip.max="{{ .Clip_max }}"{{ if or .Mean_function .Dispersion_function .Num_bin .Binning_method .Nfeatures .Mean_cutoff .Dispersion_cutoff .Verbose }},{{ end }}{{ end }}
{{- if .Mean_function }}{{ "\n\t\t" }}mean.function={{ .Mean_function }}{{ if or .Dispersion_function .Num_bin .Binning_method .Nfeatures .Mean_cutoff .Dispersion_cutoff .Verbose }},{{ end }}{{ end }}
{{- if .Dispersion_function }}{{ "\n\t\t" }}dispersion.function={{ .Dispersion_function }}{{ if or .Num_bin .Binning_method .Nfeatures .Mean_cutoff .Dispersion_cutoff .Verbose }},{{ end }}{{ end }}
{{- if .Num_bin }}{{ "\n\t\t" }}num.bin={{ .Num_bin }}{{ if or .Binning_method .Nfeatures .Mean_cutoff .Dispersion_cutoff .Verbose }},{{ end }}{{ end }}
{{- if .Binning_method }}{{ "\n\t\t" }}binning.method="{{ .Binning_method }}"{{ if or .Nfeatures .Mean_cutoff .Dispersion_cutoff .Verbose }},{{ end }}{{ end }}
{{- if .Nfeatures }}{{ "\n\t\t" }}nfeatures={{ .Nfeatures }}{{ if or .Mean_cutoff .Dispersion_cutoff .Verbose }},{{ end }}{{ end }}
{{- if .Mean_cutoff }}{{ "\n\t\t" }}mean.cutoff={{ .Mean_cutoff }}{{ if or .Dispersion_cutoff .Verbose }},{{ end }}{{ end }}
{{- if .Dispersion_cutoff }}{{ "\n\t\t" }}dispersion.cutoff={{ .Dispersion_cutoff }}{{ if or .Verbose }},{{ end }}{{ end }}
{{- if .Verbose }}{{ "\n\t\t" }}verbose={{ .Verbose }}{{ end }}
	)
{{ end }}
