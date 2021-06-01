{{ block "Seurat::IntegrateData" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::IntegrateData(
{{- if .Anchorset }}{{ "\n\t\t" }}anchorset={{ .Anchorset }}{{ if or .New_assay_name .Normalization_method .Features .Features_to_integrate .Dims .K_weight .Weight_reduction .Sd_weight .Sample_tree .Preserve_order .Eps .Verbose }},{{ end }}{{ end }}
{{- if .New_assay_name }}{{ "\n\t\t" }}new.assay.name="{{ .New_assay_name }}"{{ if or .Normalization_method .Features .Features_to_integrate .Dims .K_weight .Weight_reduction .Sd_weight .Sample_tree .Preserve_order .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Normalization_method }}{{ "\n\t\t" }}normalization.method={{ .Normalization_method }}{{ if or .Features .Features_to_integrate .Dims .K_weight .Weight_reduction .Sd_weight .Sample_tree .Preserve_order .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Features }}{{ "\n\t\t" }}features={{ .Features }}{{ if or .Features_to_integrate .Dims .K_weight .Weight_reduction .Sd_weight .Sample_tree .Preserve_order .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Features_to_integrate }}{{ "\n\t\t" }}features.to.integrate={{ .Features_to_integrate }}{{ if or .Dims .K_weight .Weight_reduction .Sd_weight .Sample_tree .Preserve_order .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Dims }}{{ "\n\t\t" }}dims={{ .Dims }}{{ if or .K_weight .Weight_reduction .Sd_weight .Sample_tree .Preserve_order .Eps .Verbose }},{{ end }}{{ end }}
{{- if .K_weight }}{{ "\n\t\t" }}k.weight={{ .K_weight }}{{ if or .Weight_reduction .Sd_weight .Sample_tree .Preserve_order .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Weight_reduction }}{{ "\n\t\t" }}weight.reduction={{ .Weight_reduction }}{{ if or .Sd_weight .Sample_tree .Preserve_order .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Sd_weight }}{{ "\n\t\t" }}sd.weight={{ .Sd_weight }}{{ if or .Sample_tree .Preserve_order .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Sample_tree }}{{ "\n\t\t" }}sample.tree={{ .Sample_tree }}{{ if or .Preserve_order .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Preserve_order }}{{ "\n\t\t" }}preserve.order={{ .Preserve_order }}{{ if or .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Eps }}{{ "\n\t\t" }}eps={{ .Eps }}{{ if or .Verbose }},{{ end }}{{ end }}
{{- if .Verbose }}{{ "\n\t\t" }}verbose={{ .Verbose }}{{ end }}
	)
{{ end }}
