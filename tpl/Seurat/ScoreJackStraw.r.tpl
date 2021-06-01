{{ block "Seurat::ScoreJackStraw" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::ScoreJackStraw(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Dims .Score_thresh }},{{ end }}{{ end }}
{{- if .Dims }}{{ "\n\t\t" }}dims={{ .Dims }}{{ if or .Score_thresh }},{{ end }}{{ end }}
{{- if .Score_thresh }}{{ "\n\t\t" }}score.thresh={{ .Score_thresh }}{{ end }}
	)
{{ end }}
