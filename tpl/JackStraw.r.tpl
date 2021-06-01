{{ block "JackStraw" . }}
###############################################################################
### {{ .Name }} JACKSTRAW

{{ if .Parallelization }}{{ template "Parallelization" .Parallelization }}{{ end }}
{{ .OutObject }} <- {{ .InObject }}
{{ template "Seurat::JackStraw" .JackStraw }}
{{ template "Seurat::ScoreJackStraw" .ScoreJackStraw }}
{{ if .SaveRda }}{{ template "SaveRda" .SaveRda }}{{ end }}
{{ end }}
