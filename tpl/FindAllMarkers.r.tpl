{{ block "FindAllMarkers" . }}
###############################################################################
### {{ .Name }} ALL MARKERS

{{ if .Parallelization }}{{ template "Parallelization" .Parallelization }}{{ end }}
{{ template "Seurat::FindAllMarkers" .FindAllMarkers }}
{{ if .SaveCsv }}{{ template "SaveCsv" .SaveCsv }}{{ end }}
{{ end }}
