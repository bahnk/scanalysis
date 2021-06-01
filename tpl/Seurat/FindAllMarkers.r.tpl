{{ block "Seurat::FindAllMarkers" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::FindAllMarkers(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Assay .Features .Logfc_threshold .Test_use .Slot .Min_pct .Min_diff_pct .Node .Verbose .Only_pos .Max_cells_per_ident .Random_seed .Latent_vars .Min_cells_feature .Min_cells_group .Pseudocount_use .Mean_fxn .Fc_name .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Assay }}{{ "\n\t\t" }}assay={{ .Assay }}{{ if or .Features .Logfc_threshold .Test_use .Slot .Min_pct .Min_diff_pct .Node .Verbose .Only_pos .Max_cells_per_ident .Random_seed .Latent_vars .Min_cells_feature .Min_cells_group .Pseudocount_use .Mean_fxn .Fc_name .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Features }}{{ "\n\t\t" }}features={{ .Features }}{{ if or .Logfc_threshold .Test_use .Slot .Min_pct .Min_diff_pct .Node .Verbose .Only_pos .Max_cells_per_ident .Random_seed .Latent_vars .Min_cells_feature .Min_cells_group .Pseudocount_use .Mean_fxn .Fc_name .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Logfc_threshold }}{{ "\n\t\t" }}logfc.threshold={{ .Logfc_threshold }}{{ if or .Test_use .Slot .Min_pct .Min_diff_pct .Node .Verbose .Only_pos .Max_cells_per_ident .Random_seed .Latent_vars .Min_cells_feature .Min_cells_group .Pseudocount_use .Mean_fxn .Fc_name .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Test_use }}{{ "\n\t\t" }}test.use="{{ .Test_use }}"{{ if or .Slot .Min_pct .Min_diff_pct .Node .Verbose .Only_pos .Max_cells_per_ident .Random_seed .Latent_vars .Min_cells_feature .Min_cells_group .Pseudocount_use .Mean_fxn .Fc_name .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Slot }}{{ "\n\t\t" }}slot="{{ .Slot }}"{{ if or .Min_pct .Min_diff_pct .Node .Verbose .Only_pos .Max_cells_per_ident .Random_seed .Latent_vars .Min_cells_feature .Min_cells_group .Pseudocount_use .Mean_fxn .Fc_name .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Min_pct }}{{ "\n\t\t" }}min.pct={{ .Min_pct }}{{ if or .Min_diff_pct .Node .Verbose .Only_pos .Max_cells_per_ident .Random_seed .Latent_vars .Min_cells_feature .Min_cells_group .Pseudocount_use .Mean_fxn .Fc_name .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Min_diff_pct }}{{ "\n\t\t" }}min.diff.pct={{ .Min_diff_pct }}{{ if or .Node .Verbose .Only_pos .Max_cells_per_ident .Random_seed .Latent_vars .Min_cells_feature .Min_cells_group .Pseudocount_use .Mean_fxn .Fc_name .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Node }}{{ "\n\t\t" }}node={{ .Node }}{{ if or .Verbose .Only_pos .Max_cells_per_ident .Random_seed .Latent_vars .Min_cells_feature .Min_cells_group .Pseudocount_use .Mean_fxn .Fc_name .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Verbose }}{{ "\n\t\t" }}verbose={{ .Verbose }}{{ if or .Only_pos .Max_cells_per_ident .Random_seed .Latent_vars .Min_cells_feature .Min_cells_group .Pseudocount_use .Mean_fxn .Fc_name .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Only_pos }}{{ "\n\t\t" }}only.pos={{ .Only_pos }}{{ if or .Max_cells_per_ident .Random_seed .Latent_vars .Min_cells_feature .Min_cells_group .Pseudocount_use .Mean_fxn .Fc_name .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Max_cells_per_ident }}{{ "\n\t\t" }}max.cells.per.ident={{ .Max_cells_per_ident }}{{ if or .Random_seed .Latent_vars .Min_cells_feature .Min_cells_group .Pseudocount_use .Mean_fxn .Fc_name .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Random_seed }}{{ "\n\t\t" }}random.seed={{ .Random_seed }}{{ if or .Latent_vars .Min_cells_feature .Min_cells_group .Pseudocount_use .Mean_fxn .Fc_name .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Latent_vars }}{{ "\n\t\t" }}latent.vars={{ .Latent_vars }}{{ if or .Min_cells_feature .Min_cells_group .Pseudocount_use .Mean_fxn .Fc_name .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Min_cells_feature }}{{ "\n\t\t" }}min.cells.feature={{ .Min_cells_feature }}{{ if or .Min_cells_group .Pseudocount_use .Mean_fxn .Fc_name .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Min_cells_group }}{{ "\n\t\t" }}min.cells.group={{ .Min_cells_group }}{{ if or .Pseudocount_use .Mean_fxn .Fc_name .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Pseudocount_use }}{{ "\n\t\t" }}pseudocount.use={{ .Pseudocount_use }}{{ if or .Mean_fxn .Fc_name .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Mean_fxn }}{{ "\n\t\t" }}mean.fxn={{ .Mean_fxn }}{{ if or .Fc_name .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Fc_name }}{{ "\n\t\t" }}fc.name={{ .Fc_name }}{{ if or .Base .Return_thresh }},{{ end }}{{ end }}
{{- if .Base }}{{ "\n\t\t" }}base={{ .Base }}{{ if or .Return_thresh }},{{ end }}{{ end }}
{{- if .Return_thresh }}{{ "\n\t\t" }}return.thresh={{ .Return_thresh }}{{ end }}
	)
{{ end }}
