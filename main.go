package main

import (
	"os"
	//"path"
	"io/ioutil"
	"encoding/json"
	"fmt"
	"text/template"
	"path/filepath"
)

func main() {

	tpl := template.New("tpl")

	seurat_r_tpl_paths, _ := filepath.Glob("tpl/Seurat/*.r.tpl")
	for _, path := range seurat_r_tpl_paths {
		content, _ := ioutil.ReadFile(path)
		tpl, _ = tpl.Parse(string(content))
	}

	r_snippet_tpl_path, _ := filepath.Glob("tpl/*.r.tpl")
	for _, path := range r_snippet_tpl_path {
		content, _ := ioutil.ReadFile(path)
		fmt.Println(string(content))
		tpl, _ = tpl.Parse(string(content))
	}

	fmt.Println( tpl.DefinedTemplates() )

	////////////////////////////////////////////////////////////////////////////
	j, _ := ioutil.ReadFile("param/settings.json")
	var params Parameters
	json.Unmarshal(j, &params)

	var colors []string

	for i, sample := range params.Samples {

		colors = append(colors, sample.Color)

		sample.CreateSeuratObject.Prepare(sample.Name, "tmp")
		sample.PercentageOfMitochondria.Prepare(sample.Name, sample.CreateSeuratObject.Object, "tmp")
		sample.Filtering.Prepare(sample.Name, sample.PercentageOfMitochondria.OutObject, sample.PercentageOfMitochondria.ColumnName, "tmp")
		sample.Normalizing.Prepare(sample.Name, sample.Filtering.OutObject, "tmp")
		sample.FindVariableFeatures.Prepare(sample.Name, sample.Normalizing.OutObject, "tmp")
		sample.Scaling.Prepare(sample.Name, sample.FindVariableFeatures.OutObject, "all.genes", "tmp")
		sample.CellCycleScoring.Prepare(sample.Name, sample.Scaling.OutObject, sample.Species, "tmp")
		sample.CellCycleRegression.Prepare(sample.Name, sample.CellCycleScoring.OutObject, "tmp")
		sample.CellCycleDifferenceRegression.Prepare(sample.Name, sample.CellCycleScoring.OutObject, "tmp")
		sample.CellCyclePca.Prepare(sample.Name, sample.CellCycleScoring.OutObject, sample.Species, "tmp")
		sample.PcaVariableFeatures.Prepare(sample.Name, sample.Scaling.OutObject, "features", "tmp")
		sample.JackStraw.Prepare(sample.Name, sample.Scaling.OutObject, "tmp")
		sample.Clustering.Prepare(sample.Name, sample.JackStraw.OutObject, "tmp")
		sample.Umap.Prepare(sample.Name, sample.Clustering.OutObject, "tmp")
		sample.FindAllMarkers.Prepare(sample.Name, sample.Umap.OutObject, "tmp")

		sample.NFeatureRNAVlnPlot.Prepare(sample.Name, sample.Umap.OutObject, "tmp")

		params.Samples[i] = sample
	}

	tpl.ExecuteTemplate(os.Stdout, "CreateSeuratObject", params.Samples[0].CreateSeuratObject)
	tpl.ExecuteTemplate(os.Stdout, "PercentageOfMitochondria", params.Samples[0].PercentageOfMitochondria)
	tpl.ExecuteTemplate(os.Stdout, "Filtering", params.Samples[0].Filtering)
	tpl.ExecuteTemplate(os.Stdout, "Normalizing", params.Samples[0].Normalizing)
	tpl.ExecuteTemplate(os.Stdout, "FindVariableFeatures", params.Samples[0].FindVariableFeatures)
	tpl.ExecuteTemplate(os.Stdout, "Scaling", params.Samples[0].Scaling)
	tpl.ExecuteTemplate(os.Stdout, "CellCycleScoring", params.Samples[0].CellCycleScoring)
	tpl.ExecuteTemplate(os.Stdout, "CellCycleRegression", params.Samples[0].CellCycleRegression)
	tpl.ExecuteTemplate(os.Stdout, "CellCycleDifferenceRegression", params.Samples[0].CellCycleDifferenceRegression)
	tpl.ExecuteTemplate(os.Stdout, "CellCyclePca", params.Samples[0].CellCyclePca)
	tpl.ExecuteTemplate(os.Stdout, "PcaVariableFeatures", params.Samples[0].PcaVariableFeatures)
	tpl.ExecuteTemplate(os.Stdout, "JackStraw", params.Samples[0].JackStraw)
	tpl.ExecuteTemplate(os.Stdout, "Clustering", params.Samples[0].Clustering)
	tpl.ExecuteTemplate(os.Stdout, "Umap", params.Samples[0].Umap)
	tpl.ExecuteTemplate(os.Stdout, "FindAllMarkers", params.Samples[0].FindAllMarkers)

	var integration Integration
	integration.Prepare("samples", params.Samples, "tmp")
	tpl.ExecuteTemplate(os.Stdout, "Integration", integration)

	var integration_sctransform IntegrationSCTransform
	integration_sctransform.Prepare("samples", params.Samples, "tmp")
	tpl.ExecuteTemplate(os.Stdout, "IntegrationSCTransform", integration_sctransform)

	tpl.ExecuteTemplate(os.Stdout, "NFeatureRNAVlnPlot", params.Samples[0].NFeatureRNAVlnPlot)


}

