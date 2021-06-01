{{ block "Seurat::VlnPlot" . }}
{{ .OUTPUT }} <-
{{ "\t" }}Seurat::VlnPlot(
{{- if .Object }}{{ "\n\t\t" }}object={{ .Object }}{{ if or .Features .Cols .Pt_size .Idents .Sort .Assay .Group_by .Split_by .Adjust .Y_max .Same_y_lims .Log .Ncol .Slot .Split_plot .Stack .Combine .Fill_by .Flip }},{{ end }}{{ end }}
{{- if .Features }}{{ "\n\t\t" }}features={{ .Features }}{{ if or .Cols .Pt_size .Idents .Sort .Assay .Group_by .Split_by .Adjust .Y_max .Same_y_lims .Log .Ncol .Slot .Split_plot .Stack .Combine .Fill_by .Flip }},{{ end }}{{ end }}
{{- if .Cols }}{{ "\n\t\t" }}cols={{ .Cols }}{{ if or .Pt_size .Idents .Sort .Assay .Group_by .Split_by .Adjust .Y_max .Same_y_lims .Log .Ncol .Slot .Split_plot .Stack .Combine .Fill_by .Flip }},{{ end }}{{ end }}
{{- if .Pt_size }}{{ "\n\t\t" }}pt.size={{ .Pt_size }}{{ if or .Idents .Sort .Assay .Group_by .Split_by .Adjust .Y_max .Same_y_lims .Log .Ncol .Slot .Split_plot .Stack .Combine .Fill_by .Flip }},{{ end }}{{ end }}
{{- if .Idents }}{{ "\n\t\t" }}idents={{ .Idents }}{{ if or .Sort .Assay .Group_by .Split_by .Adjust .Y_max .Same_y_lims .Log .Ncol .Slot .Split_plot .Stack .Combine .Fill_by .Flip }},{{ end }}{{ end }}
{{- if .Sort }}{{ "\n\t\t" }}sort={{ .Sort }}{{ if or .Assay .Group_by .Split_by .Adjust .Y_max .Same_y_lims .Log .Ncol .Slot .Split_plot .Stack .Combine .Fill_by .Flip }},{{ end }}{{ end }}
{{- if .Assay }}{{ "\n\t\t" }}assay={{ .Assay }}{{ if or .Group_by .Split_by .Adjust .Y_max .Same_y_lims .Log .Ncol .Slot .Split_plot .Stack .Combine .Fill_by .Flip }},{{ end }}{{ end }}
{{- if .Group_by }}{{ "\n\t\t" }}group.by={{ .Group_by }}{{ if or .Split_by .Adjust .Y_max .Same_y_lims .Log .Ncol .Slot .Split_plot .Stack .Combine .Fill_by .Flip }},{{ end }}{{ end }}
{{- if .Split_by }}{{ "\n\t\t" }}split.by={{ .Split_by }}{{ if or .Adjust .Y_max .Same_y_lims .Log .Ncol .Slot .Split_plot .Stack .Combine .Fill_by .Flip }},{{ end }}{{ end }}
{{- if .Adjust }}{{ "\n\t\t" }}adjust={{ .Adjust }}{{ if or .Y_max .Same_y_lims .Log .Ncol .Slot .Split_plot .Stack .Combine .Fill_by .Flip }},{{ end }}{{ end }}
{{- if .Y_max }}{{ "\n\t\t" }}y.max={{ .Y_max }}{{ if or .Same_y_lims .Log .Ncol .Slot .Split_plot .Stack .Combine .Fill_by .Flip }},{{ end }}{{ end }}
{{- if .Same_y_lims }}{{ "\n\t\t" }}same.y.lims={{ .Same_y_lims }}{{ if or .Log .Ncol .Slot .Split_plot .Stack .Combine .Fill_by .Flip }},{{ end }}{{ end }}
{{- if .Log }}{{ "\n\t\t" }}log={{ .Log }}{{ if or .Ncol .Slot .Split_plot .Stack .Combine .Fill_by .Flip }},{{ end }}{{ end }}
{{- if .Ncol }}{{ "\n\t\t" }}ncol={{ .Ncol }}{{ if or .Slot .Split_plot .Stack .Combine .Fill_by .Flip }},{{ end }}{{ end }}
{{- if .Slot }}{{ "\n\t\t" }}slot="{{ .Slot }}"{{ if or .Split_plot .Stack .Combine .Fill_by .Flip }},{{ end }}{{ end }}
{{- if .Split_plot }}{{ "\n\t\t" }}split.plot={{ .Split_plot }}{{ if or .Stack .Combine .Fill_by .Flip }},{{ end }}{{ end }}
{{- if .Stack }}{{ "\n\t\t" }}stack={{ .Stack }}{{ if or .Combine .Fill_by .Flip }},{{ end }}{{ end }}
{{- if .Combine }}{{ "\n\t\t" }}combine={{ .Combine }}{{ if or .Fill_by .Flip }},{{ end }}{{ end }}
{{- if .Fill_by }}{{ "\n\t\t" }}fill.by="{{ .Fill_by }}"{{ if or .Flip }},{{ end }}{{ end }}
{{- if .Flip }}{{ "\n\t\t" }}flip={{ .Flip }}{{ end }}
	)
{{ end }}
