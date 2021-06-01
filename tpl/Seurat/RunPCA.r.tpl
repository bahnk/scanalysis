{{ block "Seurat::RunPCA" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::RunPCA(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Assay .Features .Npcs .Rev_pca .Weight_by_var .Verbose .Ndims_print .Nfeatures_print .Reduction_key .Seed_use }},{{ end }}{{ end }}
{{- if .Assay }}{{ "\n\t\t" }}assay={{ .Assay }}{{ if or .Features .Npcs .Rev_pca .Weight_by_var .Verbose .Ndims_print .Nfeatures_print .Reduction_key .Seed_use }},{{ end }}{{ end }}
{{- if .Features }}{{ "\n\t\t" }}features={{ .Features }}{{ if or .Npcs .Rev_pca .Weight_by_var .Verbose .Ndims_print .Nfeatures_print .Reduction_key .Seed_use }},{{ end }}{{ end }}
{{- if .Npcs }}{{ "\n\t\t" }}npcs={{ .Npcs }}{{ if or .Rev_pca .Weight_by_var .Verbose .Ndims_print .Nfeatures_print .Reduction_key .Seed_use }},{{ end }}{{ end }}
{{- if .Rev_pca }}{{ "\n\t\t" }}rev.pca={{ .Rev_pca }}{{ if or .Weight_by_var .Verbose .Ndims_print .Nfeatures_print .Reduction_key .Seed_use }},{{ end }}{{ end }}
{{- if .Weight_by_var }}{{ "\n\t\t" }}weight.by.var={{ .Weight_by_var }}{{ if or .Verbose .Ndims_print .Nfeatures_print .Reduction_key .Seed_use }},{{ end }}{{ end }}
{{- if .Verbose }}{{ "\n\t\t" }}verbose={{ .Verbose }}{{ if or .Ndims_print .Nfeatures_print .Reduction_key .Seed_use }},{{ end }}{{ end }}
{{- if .Ndims_print }}{{ "\n\t\t" }}ndims.print={{ .Ndims_print }}{{ if or .Nfeatures_print .Reduction_key .Seed_use }},{{ end }}{{ end }}
{{- if .Nfeatures_print }}{{ "\n\t\t" }}nfeatures.print={{ .Nfeatures_print }}{{ if or .Reduction_key .Seed_use }},{{ end }}{{ end }}
{{- if .Reduction_key }}{{ "\n\t\t" }}reduction.key="{{ .Reduction_key }}"{{ if or .Seed_use }},{{ end }}{{ end }}
{{- if .Seed_use }}{{ "\n\t\t" }}seed.use={{ .Seed_use }}{{ end }}
	)
{{ end }}
