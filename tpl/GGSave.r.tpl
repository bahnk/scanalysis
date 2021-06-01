{{ block "GGSave" . }}
ggplot2::ggsave(plot={{ .Object }}, filename="{{ .BasePath }}.pdf")
ggplot2::ggsave(plot={{ .Object }}, filename="{{ .BasePath }}.png")
{{ end }}
