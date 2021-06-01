{{ block "Seurat::ScaleData" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::ScaleData(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Features .Vars_to_regress .Latent_data .Split_by .Model_use .Use_umi .Do_scale .Do_center .Scale_max .Block_size .Min_cells_to_block .Verbose }},{{ end }}{{ end }}
{{- if .Features }}{{ "\n\t\t" }}features={{ .Features }}{{ if or .Vars_to_regress .Latent_data .Split_by .Model_use .Use_umi .Do_scale .Do_center .Scale_max .Block_size .Min_cells_to_block .Verbose }},{{ end }}{{ end }}
{{- if .Vars_to_regress }}{{ "\n\t\t" }}vars.to.regress={{ .Vars_to_regress }}{{ if or .Latent_data .Split_by .Model_use .Use_umi .Do_scale .Do_center .Scale_max .Block_size .Min_cells_to_block .Verbose }},{{ end }}{{ end }}
{{- if .Latent_data }}{{ "\n\t\t" }}latent.data={{ .Latent_data }}{{ if or .Split_by .Model_use .Use_umi .Do_scale .Do_center .Scale_max .Block_size .Min_cells_to_block .Verbose }},{{ end }}{{ end }}
{{- if .Split_by }}{{ "\n\t\t" }}split.by={{ .Split_by }}{{ if or .Model_use .Use_umi .Do_scale .Do_center .Scale_max .Block_size .Min_cells_to_block .Verbose }},{{ end }}{{ end }}
{{- if .Model_use }}{{ "\n\t\t" }}model.use="{{ .Model_use }}"{{ if or .Use_umi .Do_scale .Do_center .Scale_max .Block_size .Min_cells_to_block .Verbose }},{{ end }}{{ end }}
{{- if .Use_umi }}{{ "\n\t\t" }}use.umi={{ .Use_umi }}{{ if or .Do_scale .Do_center .Scale_max .Block_size .Min_cells_to_block .Verbose }},{{ end }}{{ end }}
{{- if .Do_scale }}{{ "\n\t\t" }}do.scale={{ .Do_scale }}{{ if or .Do_center .Scale_max .Block_size .Min_cells_to_block .Verbose }},{{ end }}{{ end }}
{{- if .Do_center }}{{ "\n\t\t" }}do.center={{ .Do_center }}{{ if or .Scale_max .Block_size .Min_cells_to_block .Verbose }},{{ end }}{{ end }}
{{- if .Scale_max }}{{ "\n\t\t" }}scale.max={{ .Scale_max }}{{ if or .Block_size .Min_cells_to_block .Verbose }},{{ end }}{{ end }}
{{- if .Block_size }}{{ "\n\t\t" }}block.size={{ .Block_size }}{{ if or .Min_cells_to_block .Verbose }},{{ end }}{{ end }}
{{- if .Min_cells_to_block }}{{ "\n\t\t" }}min.cells.to.block={{ .Min_cells_to_block }}{{ if or .Verbose }},{{ end }}{{ end }}
{{- if .Verbose }}{{ "\n\t\t" }}verbose={{ .Verbose }}{{ end }}
	)
{{ end }}
