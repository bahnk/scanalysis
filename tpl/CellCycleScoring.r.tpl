{{ block "CellCycleScoring" . }}
###############################################################################
### {{ .Name }} CELL CYCLE SCORING

{{ .OutObject }} <- {{ .InObject }}
{{ if eq .GeneSymbolCase "lower" }}
{{ .SPhaseGenesVariable }} <- stringr::str_to_title(cc.genes$s.genes)
{{ .G2MPhasesGenesVariable }} <- stringr::str_to_title(cc.genes$g2m.genes)
{{ else }}
{{ .SPhaseGenesVariable }} <- cc.genes$s.genes
{{ .G2MPhasesGenesVariable }} <- cc.genes$g2m.genes
{{ end }}
{{ template "Seurat::CellCycleScoring" .CellCycleScoring }}
{{ if .SaveRda }}{{ template "SaveRda" .SaveRda }}{{ end }}
{{ end }}
