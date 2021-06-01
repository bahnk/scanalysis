{{ block "Filtering" . }}
###############################################################################
### {{ .Name }} FILTERING

{{ .OutObject }} <- {{ .InObject }}
{{ .OutObject }} <- base::subset( {{ .OutObject }} , subset = nFeatureRNA > {{ .NFeatureRnaMin }} )
{{ .OutObject }} <- base::subset( {{ .OutObject }} , subset = nFeatureRNA < {{ .NFeatureRnaMax }} )
{{ .OutObject }} <- base::subset( {{ .OutObject }} , subset = {{ .MitochondriaColumn }}  > {{ .PercentMtMax }} )
{{ .OutObject }} <- base::subset( {{ .OutObject }} , subset = {{ .MitochondriaColumn }}  < {{ .PercentMtMax }} )
{{ if .SaveRda }}{{ template "SaveRda" .SaveRda }}{{ end }}
{{ end }}
