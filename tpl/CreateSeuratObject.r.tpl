{{ block "CreateSeuratObject" . }}
###############################################################################
### {{ .Name }} CREATE SEURAT OBJECT

{{ .Data_dir_variable }} <- "{{ .Data_dir }}"
{{ template "Seurat::Read10X" .Read10X }}
{{ template "Seurat::CreateSeuratObject" .CreateSeuratObject }}
{{- if .Columns }}
{{ range $colname, $value := .Columns -}}
{{ $.Object }}${{ $colname }} <- "{{ $value }}"
{{ end -}}
{{ end }}
{{- if .Attributes }}
{{ range $attr, $value := .Attributes -}}
base::attr({{ $.Object }}, "{{ $attr }}") <- "{{ $value }}"
{{ end -}}
{{ end }}
{{ if .SaveRda }}{{ template "SaveRda" .SaveRda }}{{ end }}
{{ end }}
