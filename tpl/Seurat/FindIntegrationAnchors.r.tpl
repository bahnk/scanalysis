{{ block "Seurat::FindIntegrationAnchors" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::FindIntegrationAnchors(
{{- if .Object_list }}{{ "\n\t\t" }}object.list={{ .Object_list }}{{ if or .Assay .Reference .Anchor_features .Scale .Normalization_method .Sct_clip_range .Reduction .L2_norm .Dims .K_anchor .K_filter .K_score .Max_features .Nn_method .N_trees .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Assay }}{{ "\n\t\t" }}assay={{ .Assay }}{{ if or .Reference .Anchor_features .Scale .Normalization_method .Sct_clip_range .Reduction .L2_norm .Dims .K_anchor .K_filter .K_score .Max_features .Nn_method .N_trees .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Reference }}{{ "\n\t\t" }}reference={{ .Reference }}{{ if or .Anchor_features .Scale .Normalization_method .Sct_clip_range .Reduction .L2_norm .Dims .K_anchor .K_filter .K_score .Max_features .Nn_method .N_trees .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Anchor_features }}{{ "\n\t\t" }}anchor.features={{ .Anchor_features }}{{ if or .Scale .Normalization_method .Sct_clip_range .Reduction .L2_norm .Dims .K_anchor .K_filter .K_score .Max_features .Nn_method .N_trees .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Scale }}{{ "\n\t\t" }}scale={{ .Scale }}{{ if or .Normalization_method .Sct_clip_range .Reduction .L2_norm .Dims .K_anchor .K_filter .K_score .Max_features .Nn_method .N_trees .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Normalization_method }}{{ "\n\t\t" }}normalization.method={{ .Normalization_method }}{{ if or .Sct_clip_range .Reduction .L2_norm .Dims .K_anchor .K_filter .K_score .Max_features .Nn_method .N_trees .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Sct_clip_range }}{{ "\n\t\t" }}sct.clip.range={{ .Sct_clip_range }}{{ if or .Reduction .L2_norm .Dims .K_anchor .K_filter .K_score .Max_features .Nn_method .N_trees .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Reduction }}{{ "\n\t\t" }}reduction={{ .Reduction }}{{ if or .L2_norm .Dims .K_anchor .K_filter .K_score .Max_features .Nn_method .N_trees .Eps .Verbose }},{{ end }}{{ end }}
{{- if .L2_norm }}{{ "\n\t\t" }}l2.norm={{ .L2_norm }}{{ if or .Dims .K_anchor .K_filter .K_score .Max_features .Nn_method .N_trees .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Dims }}{{ "\n\t\t" }}dims={{ .Dims }}{{ if or .K_anchor .K_filter .K_score .Max_features .Nn_method .N_trees .Eps .Verbose }},{{ end }}{{ end }}
{{- if .K_anchor }}{{ "\n\t\t" }}k.anchor={{ .K_anchor }}{{ if or .K_filter .K_score .Max_features .Nn_method .N_trees .Eps .Verbose }},{{ end }}{{ end }}
{{- if .K_filter }}{{ "\n\t\t" }}k.filter={{ .K_filter }}{{ if or .K_score .Max_features .Nn_method .N_trees .Eps .Verbose }},{{ end }}{{ end }}
{{- if .K_score }}{{ "\n\t\t" }}k.score={{ .K_score }}{{ if or .Max_features .Nn_method .N_trees .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Max_features }}{{ "\n\t\t" }}max.features={{ .Max_features }}{{ if or .Nn_method .N_trees .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Nn_method }}{{ "\n\t\t" }}nn.method="{{ .Nn_method }}"{{ if or .N_trees .Eps .Verbose }},{{ end }}{{ end }}
{{- if .N_trees }}{{ "\n\t\t" }}n.trees={{ .N_trees }}{{ if or .Eps .Verbose }},{{ end }}{{ end }}
{{- if .Eps }}{{ "\n\t\t" }}eps={{ .Eps }}{{ if or .Verbose }},{{ end }}{{ end }}
{{- if .Verbose }}{{ "\n\t\t" }}verbose={{ .Verbose }}{{ end }}
	)
{{ end }}
