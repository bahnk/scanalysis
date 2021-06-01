{{ block "Seurat::FindNeighbors" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::FindNeighbors(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Features .K_param .Return_neighbor .Compute_snn .Prune_snn .Nn_method .N_trees .Annoy_metric .Nn_eps .Verbose .Force_recalc .L2_norm .Cache_index }},{{ end }}{{ end }}
{{- if .Features }}{{ "\n\t\t" }}features={{ .Features }}{{ if or .K_param .Return_neighbor .Compute_snn .Prune_snn .Nn_method .N_trees .Annoy_metric .Nn_eps .Verbose .Force_recalc .L2_norm .Cache_index }},{{ end }}{{ end }}
{{- if .K_param }}{{ "\n\t\t" }}k.param={{ .K_param }}{{ if or .Return_neighbor .Compute_snn .Prune_snn .Nn_method .N_trees .Annoy_metric .Nn_eps .Verbose .Force_recalc .L2_norm .Cache_index }},{{ end }}{{ end }}
{{- if .Return_neighbor }}{{ "\n\t\t" }}return.neighbor={{ .Return_neighbor }}{{ if or .Compute_snn .Prune_snn .Nn_method .N_trees .Annoy_metric .Nn_eps .Verbose .Force_recalc .L2_norm .Cache_index }},{{ end }}{{ end }}
{{- if .Compute_snn }}{{ "\n\t\t" }}compute.SNN={{ .Compute_snn }}{{ if or .Prune_snn .Nn_method .N_trees .Annoy_metric .Nn_eps .Verbose .Force_recalc .L2_norm .Cache_index }},{{ end }}{{ end }}
{{- if .Prune_snn }}{{ "\n\t\t" }}prune.SNN={{ .Prune_snn }}{{ if or .Nn_method .N_trees .Annoy_metric .Nn_eps .Verbose .Force_recalc .L2_norm .Cache_index }},{{ end }}{{ end }}
{{- if .Nn_method }}{{ "\n\t\t" }}nn.method="{{ .Nn_method }}"{{ if or .N_trees .Annoy_metric .Nn_eps .Verbose .Force_recalc .L2_norm .Cache_index }},{{ end }}{{ end }}
{{- if .N_trees }}{{ "\n\t\t" }}n.trees={{ .N_trees }}{{ if or .Annoy_metric .Nn_eps .Verbose .Force_recalc .L2_norm .Cache_index }},{{ end }}{{ end }}
{{- if .Annoy_metric }}{{ "\n\t\t" }}annoy.metric="{{ .Annoy_metric }}"{{ if or .Nn_eps .Verbose .Force_recalc .L2_norm .Cache_index }},{{ end }}{{ end }}
{{- if .Nn_eps }}{{ "\n\t\t" }}nn.eps={{ .Nn_eps }}{{ if or .Verbose .Force_recalc .L2_norm .Cache_index }},{{ end }}{{ end }}
{{- if .Verbose }}{{ "\n\t\t" }}verbose={{ .Verbose }}{{ if or .Force_recalc .L2_norm .Cache_index }},{{ end }}{{ end }}
{{- if .Force_recalc }}{{ "\n\t\t" }}force.recalc={{ .Force_recalc }}{{ if or .L2_norm .Cache_index }},{{ end }}{{ end }}
{{- if .L2_norm }}{{ "\n\t\t" }}l2.norm={{ .L2_norm }}{{ if or .Cache_index }},{{ end }}{{ end }}
{{- if .Cache_index }}{{ "\n\t\t" }}cache.index={{ .Cache_index }}{{ end }}
	)
{{ end }}
