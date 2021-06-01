{{ block "Seurat::PrepSCTIntegration" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::PrepSCTIntegration(
{{- if .Object_list }}{{ "\n\t\t" }}object.list={{ .Object_list }}{{ if or .Assay .Anchor_features .Sct_clip_range .Verbose }},{{ end }}{{ end }}
{{- if .Assay }}{{ "\n\t\t" }}assay={{ .Assay }}{{ if or .Anchor_features .Sct_clip_range .Verbose }},{{ end }}{{ end }}
{{- if .Anchor_features }}{{ "\n\t\t" }}anchor.features={{ .Anchor_features }}{{ if or .Sct_clip_range .Verbose }},{{ end }}{{ end }}
{{- if .Sct_clip_range }}{{ "\n\t\t" }}sct.clip.range={{ .Sct_clip_range }}{{ if or .Verbose }},{{ end }}{{ end }}
{{- if .Verbose }}{{ "\n\t\t" }}verbose={{ .Verbose }}{{ end }}
	)
{{ end }}
