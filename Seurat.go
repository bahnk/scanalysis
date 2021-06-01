package main

type Seurat__CellCycleScoring struct {
	OUTPUT string
	Object string `json:"object"`
	S_features string `json:"s.features"`
	G2m_features string `json:"g2m.features"`
	Ctrl string `json:"ctrl"`
	Set_ident string `json:"set.ident"`
}

type Seurat__CreateSeuratObject struct {
	OUTPUT string
	Counts string `json:"counts"`
	Project string `json:"project"`
	Assay string `json:"assay"`
	Names_field string `json:"names.field"`
	Names_delim string `json:"names.delim"`
	Meta_data string `json:"meta.data"`
}

type Seurat__DimHeatmap struct {
	OUTPUT string
	Object string `json:"object"`
	Dims string `json:"dims"`
	Nfeatures string `json:"nfeatures"`
	Cells string `json:"cells"`
	Reduction string `json:"reduction"`
	Disp_min string `json:"disp.min"`
	Disp_max string `json:"disp.max"`
	Balanced string `json:"balanced"`
	Projected string `json:"projected"`
	Ncol string `json:"ncol"`
	Fast string `json:"fast"`
	Raster string `json:"raster"`
	Slot string `json:"slot"`
	Assays string `json:"assays"`
	Combine string `json:"combine"`
}

type Seurat__DimPlot struct {
	OUTPUT string
	Object string `json:"object"`
	Dims string `json:"dims"`
	Cells string `json:"cells"`
	Cols string `json:"cols"`
	Pt_size string `json:"pt.size"`
	Reduction string `json:"reduction"`
	Group_by string `json:"group.by"`
	Split_by string `json:"split.by"`
	Shape_by string `json:"shape.by"`
	Order string `json:"order"`
	Shuffle string `json:"shuffle"`
	Seed string `json:"seed"`
	Label string `json:"label"`
	Label_size string `json:"label.size"`
	Label_color string `json:"label.color"`
	Label_box string `json:"label.box"`
	Repel string `json:"repel"`
	Cells_highlight string `json:"cells.highlight"`
	Cols_highlight string `json:"cols.highlight"`
	Sizes_highlight string `json:"sizes.highlight"`
	Na_value string `json:"na.value"`
	Ncol string `json:"ncol"`
	Combine string `json:"combine"`
	Raster string `json:"raster"`
}

type Seurat__DoHeatmap struct {
	OUTPUT string
	Object string `json:"object"`
	Features string `json:"features"`
	Cells string `json:"cells"`
	Group_by string `json:"group.by"`
	Group_bar string `json:"group.bar"`
	Group_colors string `json:"group.colors"`
	Disp_min string `json:"disp.min"`
	Disp_max string `json:"disp.max"`
	Slot string `json:"slot"`
	Assay string `json:"assay"`
	Label string `json:"label"`
	Size string `json:"size"`
	Hjust string `json:"hjust"`
	Angle string `json:"angle"`
	Raster string `json:"raster"`
	Draw_lines string `json:"draw.lines"`
	Lines_width string `json:"lines.width"`
	Group_bar_height string `json:"group.bar.height"`
	Combine string `json:"combine"`
}

type Seurat__DotPlot struct {
	OUTPUT string
	Object string `json:"object"`
	Assay string `json:"assay"`
	Features string `json:"features"`
	Cols string `json:"cols"`
	Col_min string `json:"col.min"`
	Col_max string `json:"col.max"`
	Dot_min string `json:"dot.min"`
	Dot_scale string `json:"dot.scale"`
	Idents string `json:"idents"`
	Group_by string `json:"group.by"`
	Split_by string `json:"split.by"`
	Cluster_idents string `json:"cluster.idents"`
	Scale string `json:"scale"`
	Scale_by string `json:"scale.by"`
	Scale_min string `json:"scale.min"`
	Scale_max string `json:"scale.max"`
}

type Seurat__FeatureScatter struct {
	OUTPUT string
	Object string `json:"object"`
	Feature1 string `json:"feature1"`
	Feature2 string `json:"feature2"`
	Cells string `json:"cells"`
	Group_by string `json:"group.by"`
	Cols string `json:"cols"`
	Pt_size string `json:"pt.size"`
	Shape_by string `json:"shape.by"`
	Span string `json:"span"`
	Smooth string `json:"smooth"`
	Combine string `json:"combine"`
	Slot string `json:"slot"`
	Plot_cor string `json:"plot.cor"`
	Raster string `json:"raster"`
}

type Seurat__FindAllMarkers struct {
	OUTPUT string
	Object string `json:"object"`
	Assay string `json:"assay"`
	Features string `json:"features"`
	Logfc_threshold string `json:"logfc.threshold"`
	Test_use string `json:"test.use"`
	Slot string `json:"slot"`
	Min_pct string `json:"min.pct"`
	Min_diff_pct string `json:"min.diff.pct"`
	Node string `json:"node"`
	Verbose string `json:"verbose"`
	Only_pos string `json:"only.pos"`
	Max_cells_per_ident string `json:"max.cells.per.ident"`
	Random_seed string `json:"random.seed"`
	Latent_vars string `json:"latent.vars"`
	Min_cells_feature string `json:"min.cells.feature"`
	Min_cells_group string `json:"min.cells.group"`
	Pseudocount_use string `json:"pseudocount.use"`
	Mean_fxn string `json:"mean.fxn"`
	Fc_name string `json:"fc.name"`
	Base string `json:"base"`
	Return_thresh string `json:"return.thresh"`
}

type Seurat__FindClusters struct {
	OUTPUT string
	Object string `json:"object"`
	Modularity_fxn string `json:"modularity.fxn"`
	Initial_membership string `json:"initial.membership"`
	Node_sizes string `json:"node.sizes"`
	Resolution string `json:"resolution"`
	Method string `json:"method"`
	Algorithm string `json:"algorithm"`
	N_start string `json:"n.start"`
	N_iter string `json:"n.iter"`
	Random_seed string `json:"random.seed"`
	Group_singletons string `json:"group.singletons"`
	Temp_file_location string `json:"temp.file.location"`
	Edge_file_name string `json:"edge.file.name"`
	Verbose string `json:"verbose"`
}

type Seurat__FindIntegrationAnchors struct {
	OUTPUT string
	Object_list string `json:"object.list"`
	Assay string `json:"assay"`
	Reference string `json:"reference"`
	Anchor_features string `json:"anchor.features"`
	Scale string `json:"scale"`
	Normalization_method string `json:"normalization.method"`
	Sct_clip_range string `json:"sct.clip.range"`
	Reduction string `json:"reduction"`
	L2_norm string `json:"l2.norm"`
	Dims string `json:"dims"`
	K_anchor string `json:"k.anchor"`
	K_filter string `json:"k.filter"`
	K_score string `json:"k.score"`
	Max_features string `json:"max.features"`
	Nn_method string `json:"nn.method"`
	N_trees string `json:"n.trees"`
	Eps string `json:"eps"`
	Verbose string `json:"verbose"`
}

type Seurat__FindNeighbors struct {
	OUTPUT string
	Object string `json:"object"`
	Features string `json:"features"`
	K_param string `json:"k.param"`
	Return_neighbor string `json:"return.neighbor"`
	Compute_snn string `json:"compute.SNN"`
	Prune_snn string `json:"prune.SNN"`
	Nn_method string `json:"nn.method"`
	N_trees string `json:"n.trees"`
	Annoy_metric string `json:"annoy.metric"`
	Nn_eps string `json:"nn.eps"`
	Verbose string `json:"verbose"`
	Force_recalc string `json:"force.recalc"`
	L2_norm string `json:"l2.norm"`
	Cache_index string `json:"cache.index"`
}

type Seurat__FindVariableFeatures struct {
	OUTPUT string
	Object string `json:"object"`
	Selection_method string `json:"selection.method"`
	Loess_span string `json:"loess.span"`
	Clip_max string `json:"clip.max"`
	Mean_function string `json:"mean.function"`
	Dispersion_function string `json:"dispersion.function"`
	Num_bin string `json:"num.bin"`
	Binning_method string `json:"binning.method"`
	Nfeatures string `json:"nfeatures"`
	Mean_cutoff string `json:"mean.cutoff"`
	Dispersion_cutoff string `json:"dispersion.cutoff"`
	Verbose string `json:"verbose"`
}

type Seurat__IntegrateData struct {
	OUTPUT string
	Anchorset string `json:"anchorset"`
	New_assay_name string `json:"new.assay.name"`
	Normalization_method string `json:"normalization.method"`
	Features string `json:"features"`
	Features_to_integrate string `json:"features.to.integrate"`
	Dims string `json:"dims"`
	K_weight string `json:"k.weight"`
	Weight_reduction string `json:"weight.reduction"`
	Sd_weight string `json:"sd.weight"`
	Sample_tree string `json:"sample.tree"`
	Preserve_order string `json:"preserve.order"`
	Eps string `json:"eps"`
	Verbose string `json:"verbose"`
}

type Seurat__JackStraw struct {
	OUTPUT string
	Object string `json:"object"`
	Reduction string `json:"reduction"`
	Assay string `json:"assay"`
	Dims string `json:"dims"`
	Num_replicate string `json:"num.replicate"`
	Prop_freq string `json:"prop.freq"`
	Verbose string `json:"verbose"`
	Maxit string `json:"maxit"`
}

type Seurat__NormalizeData struct {
	OUTPUT string
	Object string `json:"object"`
	Normalization_method string `json:"normalization.method"`
	Scale_factor string `json:"scale.factor"`
	Margin string `json:"margin"`
	Verbose string `json:"verbose"`
}

type Seurat__PercentageFeatureSet struct {
	OUTPUT string
	Object string `json:"object"`
	Pattern string `json:"pattern"`
	Features string `json:"features"`
	Col_name string `json:"col.name"`
	Assay string `json:"assay"`
}

type Seurat__PrepSCTIntegration struct {
	OUTPUT string
	Object_list string `json:"object.list"`
	Assay string `json:"assay"`
	Anchor_features string `json:"anchor.features"`
	Sct_clip_range string `json:"sct.clip.range"`
	Verbose string `json:"verbose"`
}

type Seurat__Read10X struct {
	OUTPUT string
	Data_dir string `json:"data.dir"`
	Gene_column string `json:"gene.column"`
	Cell_column string `json:"cell.column"`
	Unique_features string `json:"unique.features"`
	Strip_suffix string `json:"strip.suffix"`
}

type Seurat__RenameCells struct {
	OUTPUT string
	Object string `json:"object"`
	Add_cell_id string `json:"add.cell.id"`
	New_names string `json:"new.names"`
	For_merge string `json:"for.merge"`
}

type Seurat__RunPCA struct {
	OUTPUT string
	Object string `json:"object"`
	Assay string `json:"assay"`
	Features string `json:"features"`
	Npcs string `json:"npcs"`
	Rev_pca string `json:"rev.pca"`
	Weight_by_var string `json:"weight.by.var"`
	Verbose string `json:"verbose"`
	Ndims_print string `json:"ndims.print"`
	Nfeatures_print string `json:"nfeatures.print"`
	Reduction_key string `json:"reduction.key"`
	Seed_use string `json:"seed.use"`
}

type Seurat__RunUMAP struct {
	OUTPUT string
	Object string `json:"object"`
	Reduction_key string `json:"reduction.key"`
	Assay string `json:"assay"`
	Reduction_model string `json:"reduction.model"`
	Return_model string `json:"return.model"`
	Umap_method string `json:"umap.method"`
	N_neighbors string `json:"n.neighbors"`
	N_components string `json:"n.components"`
	Metric string `json:"metric"`
	N_epochs string `json:"n.epochs"`
	Learning_rate string `json:"learning.rate"`
	Min_dist string `json:"min.dist"`
	Spread string `json:"spread"`
	Set_op_mix_ratio string `json:"set.op.mix.ratio"`
	Local_connectivity string `json:"local.connectivity"`
	Repulsion_strength string `json:"repulsion.strength"`
	Negative_sample_rate string `json:"negative.sample.rate"`
	A string `json:"a"`
	B string `json:"b"`
	Uwot_sgd string `json:"uwot.sgd"`
	Seed_use string `json:"seed.use"`
	Metric_kwds string `json:"metric.kwds"`
	Angular_rp_forest string `json:"angular.rp.forest"`
	Verbose string `json:"verbose"`
}

type Seurat__ScaleData struct {
	OUTPUT string
	Object string `json:"object"`
	Features string `json:"features"`
	Vars_to_regress string `json:"vars.to.regress"`
	Latent_data string `json:"latent.data"`
	Split_by string `json:"split.by"`
	Model_use string `json:"model.use"`
	Use_umi string `json:"use.umi"`
	Do_scale string `json:"do.scale"`
	Do_center string `json:"do.center"`
	Scale_max string `json:"scale.max"`
	Block_size string `json:"block.size"`
	Min_cells_to_block string `json:"min.cells.to.block"`
	Verbose string `json:"verbose"`
}

type Seurat__ScoreJackStraw struct {
	OUTPUT string
	Object string `json:"object"`
	Dims string `json:"dims"`
	Score_thresh string `json:"score.thresh"`
}

type Seurat__SelectIntegrationFeatures struct {
	OUTPUT string
	Object_list string `json:"object.list"`
	Nfeatures string `json:"nfeatures"`
	Assay string `json:"assay"`
	Verbose string `json:"verbose"`
	Fvf_nfeatures string `json:"fvf.nfeatures"`
}

type Seurat__VariableFeaturePlot struct {
	OUTPUT string
	Object string `json:"object"`
	Cols string `json:"cols"`
	Pt_size string `json:"pt.size"`
	Log string `json:"log"`
	Selection_method string `json:"selection.method"`
	Assay string `json:"assay"`
	Raster string `json:"raster"`
}

type Seurat__VariableFeatures struct {
	OUTPUT string
	Object string `json:"object"`
	Selection_method string `json:"selection.method"`
}

type Seurat__VizDimLoadings struct {
	OUTPUT string
	Object string `json:"object"`
	Dims string `json:"dims"`
	Nfeatures string `json:"nfeatures"`
	Col string `json:"col"`
	Reduction string `json:"reduction"`
	Projected string `json:"projected"`
	Balanced string `json:"balanced"`
	Ncol string `json:"ncol"`
	Combine string `json:"combine"`
}

type Seurat__VlnPlot struct {
	OUTPUT string
	Object string `json:"object"`
	Features string `json:"features"`
	Cols string `json:"cols"`
	Pt_size string `json:"pt.size"`
	Idents string `json:"idents"`
	Sort string `json:"sort"`
	Assay string `json:"assay"`
	Group_by string `json:"group.by"`
	Split_by string `json:"split.by"`
	Adjust string `json:"adjust"`
	Y_max string `json:"y.max"`
	Same_y_lims string `json:"same.y.lims"`
	Log string `json:"log"`
	Ncol string `json:"ncol"`
	Slot string `json:"slot"`
	Split_plot string `json:"split.plot"`
	Stack string `json:"stack"`
	Combine string `json:"combine"`
	Fill_by string `json:"fill.by"`
	Flip string `json:"flip"`
}


