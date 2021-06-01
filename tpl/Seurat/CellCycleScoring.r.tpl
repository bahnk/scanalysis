{{ block "Seurat::CellCycleScoring" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::CellCycleScoring(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .S_features .G2m_features .Ctrl .Set_ident }},{{ end }}{{ end }}
{{- if .S_features }}{{ "\n\t\t" }}s.features={{ .S_features }}{{ if or .G2m_features .Ctrl .Set_ident }},{{ end }}{{ end }}
{{- if .G2m_features }}{{ "\n\t\t" }}g2m.features={{ .G2m_features }}{{ if or .Ctrl .Set_ident }},{{ end }}{{ end }}
{{- if .Ctrl }}{{ "\n\t\t" }}ctrl={{ .Ctrl }}{{ if or .Set_ident }},{{ end }}{{ end }}
{{- if .Set_ident }}{{ "\n\t\t" }}set.ident={{ .Set_ident }}{{ end }}
	)
{{ end }}
