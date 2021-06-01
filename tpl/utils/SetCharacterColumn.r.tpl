{{ block "SetCharacterColumn" . }}
{{ .Object }}${{ .Column }} <- "{{ .Value }}"
{{ end }}
