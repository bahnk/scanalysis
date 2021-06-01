{{ block "SaveRda" . }}
base::save({{ .Object }}, file="{{ .File }}")
{{ end }}
