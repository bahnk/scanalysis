{{ block "SaveCsv" . }}
utils::write.csv({{ .Object }}, file="{{ .File }}", row.names={{ .RowNames }})
{{ end }}
