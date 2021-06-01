package main

import (
	"fmt"
	"path"
)

type Integration struct {
	Name string
	OutObject string
	Samples map[string]string
	SampleListVariable string
	FeaturesVariable string
	AnchorsVariable string
	SelectIntegrationFeatures Seurat__SelectIntegrationFeatures `json:"Seurat::SelectIntegrationFeatures"`
	FindIntegrationAnchors Seurat__FindIntegrationAnchors `json:"Seurat::FindIntegrationAnchors"`
	IntegrateData Seurat__IntegrateData `json:"Seurat::IntegrateData"`
	SaveRda SaveRda
}

func (obj *Integration) Prepare(name string, samples []Sample, directory string) {

	var suffix = "integrated"
	var out_object = fmt.Sprintf("%s_%s", name, suffix)

	obj.Name = name
	obj.OutObject = out_object
	obj.SampleListVariable = "samples"
	obj.FeaturesVariable = "features"
	obj.AnchorsVariable = "anchors"

	obj.Samples = make(map[string]string)
	for _, sample := range samples {
		obj.Samples[sample.Name] = sample.FindVariableFeatures.OutObject
	}

	obj.SelectIntegrationFeatures.OUTPUT = obj.FeaturesVariable
	obj.SelectIntegrationFeatures.Object_list = obj.SampleListVariable

	obj.FindIntegrationAnchors.OUTPUT = obj.AnchorsVariable
	obj.FindIntegrationAnchors.Object_list = obj.SampleListVariable
	obj.FindIntegrationAnchors.Anchor_features = obj.FeaturesVariable

	obj.IntegrateData.OUTPUT = out_object
	obj.IntegrateData.Anchorset = obj.AnchorsVariable

	// save
	obj.SaveRda.Object = out_object
	obj.SaveRda.File = path.Join(directory, fmt.Sprintf("%s.rda", out_object))
}

