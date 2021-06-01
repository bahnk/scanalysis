{{ block "SetCharacterAttribute" . }}
base::attr({{ .Object }}, "{{ .Attribute }}") <- "{{ .Value }}"
{{ end }}

