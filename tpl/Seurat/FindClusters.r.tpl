{{ block "Seurat::FindClusters" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::FindClusters(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Modularity_fxn .Initial_membership .Node_sizes .Resolution .Method .Algorithm .N_start .N_iter .Random_seed .Group_singletons .Temp_file_location .Edge_file_name .Verbose }},{{ end }}{{ end }}
{{- if .Modularity_fxn }}{{ "\n\t\t" }}modularity.fxn={{ .Modularity_fxn }}{{ if or .Initial_membership .Node_sizes .Resolution .Method .Algorithm .N_start .N_iter .Random_seed .Group_singletons .Temp_file_location .Edge_file_name .Verbose }},{{ end }}{{ end }}
{{- if .Initial_membership }}{{ "\n\t\t" }}initial.membership={{ .Initial_membership }}{{ if or .Node_sizes .Resolution .Method .Algorithm .N_start .N_iter .Random_seed .Group_singletons .Temp_file_location .Edge_file_name .Verbose }},{{ end }}{{ end }}
{{- if .Node_sizes }}{{ "\n\t\t" }}node.sizes={{ .Node_sizes }}{{ if or .Resolution .Method .Algorithm .N_start .N_iter .Random_seed .Group_singletons .Temp_file_location .Edge_file_name .Verbose }},{{ end }}{{ end }}
{{- if .Resolution }}{{ "\n\t\t" }}resolution={{ .Resolution }}{{ if or .Method .Algorithm .N_start .N_iter .Random_seed .Group_singletons .Temp_file_location .Edge_file_name .Verbose }},{{ end }}{{ end }}
{{- if .Method }}{{ "\n\t\t" }}method="{{ .Method }}"{{ if or .Algorithm .N_start .N_iter .Random_seed .Group_singletons .Temp_file_location .Edge_file_name .Verbose }},{{ end }}{{ end }}
{{- if .Algorithm }}{{ "\n\t\t" }}algorithm={{ .Algorithm }}{{ if or .N_start .N_iter .Random_seed .Group_singletons .Temp_file_location .Edge_file_name .Verbose }},{{ end }}{{ end }}
{{- if .N_start }}{{ "\n\t\t" }}n.start={{ .N_start }}{{ if or .N_iter .Random_seed .Group_singletons .Temp_file_location .Edge_file_name .Verbose }},{{ end }}{{ end }}
{{- if .N_iter }}{{ "\n\t\t" }}n.iter={{ .N_iter }}{{ if or .Random_seed .Group_singletons .Temp_file_location .Edge_file_name .Verbose }},{{ end }}{{ end }}
{{- if .Random_seed }}{{ "\n\t\t" }}random.seed={{ .Random_seed }}{{ if or .Group_singletons .Temp_file_location .Edge_file_name .Verbose }},{{ end }}{{ end }}
{{- if .Group_singletons }}{{ "\n\t\t" }}group.singletons={{ .Group_singletons }}{{ if or .Temp_file_location .Edge_file_name .Verbose }},{{ end }}{{ end }}
{{- if .Temp_file_location }}{{ "\n\t\t" }}temp.file.location={{ .Temp_file_location }}{{ if or .Edge_file_name .Verbose }},{{ end }}{{ end }}
{{- if .Edge_file_name }}{{ "\n\t\t" }}edge.file.name={{ .Edge_file_name }}{{ if or .Verbose }},{{ end }}{{ end }}
{{- if .Verbose }}{{ "\n\t\t" }}verbose={{ .Verbose }}{{ end }}
	)
{{ end }}
