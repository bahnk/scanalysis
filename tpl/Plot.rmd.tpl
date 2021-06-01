{{ block "CreateSeuratObject_rmd" . }}
{{ template "CreateSeuratObject" .CreateSeuratObject }}
{{ range $ext := .Extension }}
ggplot2::ggsave(
	plot="{{ $.Plot }}",
	path="{{ $.Path }}",
	filename="{{ $.Basename }}.{{ $ext }}"
	)
{{ end }}
{{ end }}

