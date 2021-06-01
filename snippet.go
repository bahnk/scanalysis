package main

/////////////////////////////////////////////////////////////////////////////////
//type RFunction struct {
//}
//
//type SeuratFunction struct {
//	OUTPUT string
//}
//
//
/////////////////////////////////////////////////////////////////////////////////
//type CodeChunk struct {
//}
//
//type RCodeChunk struct {
//	CodeChunk
//}
//
//type RmdCodeChunk struct {
//	RCodeChunk
//}

///////////////////////////////////////////////////////////////////////////////

type SaveRda struct {
	Object string
	File string
}

///////////////////////////////////////////////////////////////////////////////

type SaveCsv struct {
	Object string
	File string
	RowNames string
}

///////////////////////////////////////////////////////////////////////////////

type GGSave struct {
	Object string
	BasePath string
}

///////////////////////////////////////////////////////////////////////////////

type Parallelization struct {
	GlobalsMaxSize string `json:"globals_maxsize"`
	Workers string `json:"workers"`
}

///////////////////////////////////////////////////////////////////////////////

type Parameters struct {
	Samples []Sample `json:"samples"`
}

type Sample struct {

	Project string `json:"project"`
	Name string `json:"name"`
	Species string `json:"species"`
	Condition string `json:"condition"`
	Color string `json:"color"`

	CreateSeuratObject CreateSeuratObject `json:"create_seurat_object"`
	PercentageOfMitochondria PercentageOfMitochondria `json:"percentage_of_mitochondria"`
	Filtering Filtering `json:"filtering"`
	Normalizing Normalizing `json:"normalizing"`
	FindVariableFeatures FindVariableFeatures `json:"find_variable_features"`
	Scaling Scaling `json:"scaling"`
	CellCycleScoring `json:"cell_cycle_scoring"`
	CellCycleRegression `json:"cell_cycle_regression"`
	CellCycleDifferenceRegression `json:"cell_cycle_difference_regression"`
	CellCyclePca `json:"cell_cycle_pca"`
	PcaVariableFeatures PcaVariableFeatures `json:"pca"`
	JackStraw JackStraw `json:"jackstraw"`
	Clustering Clustering `json:"clustering"`
	Umap Umap `json:"umap"`
	FindAllMarkers FindAllMarkers `json:"find_all_markers"`

	NFeatureRNAVlnPlot NFeatureRNAVlnPlot 
	NCountRNAVlnPlot NFCountRNAVlnPlot 
	MitochondriaVlnPlot MitochondriaVlnPlot
}

