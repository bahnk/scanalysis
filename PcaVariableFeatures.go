package main

import (
	"fmt"
	"path"
)

type PcaVariableFeatures struct {
	Name string
	InObject string
	OutObject string
	FeaturesVariable string
	RunPCA Seurat__RunPCA `json:"Seurat::RunPCA"`
	VariableFeatures Seurat__VariableFeatures `json:"Seurat::VariableFeatures"`
	SaveRda SaveRda
}

func (obj *PcaVariableFeatures) Prepare(name string, object string, features_variable string, directory string) {

	var suffix = "varfeats_pca"
	var out_object = fmt.Sprintf("%s_%s", name, suffix)

	obj.Name = name
	obj.InObject = object
	obj.OutObject = out_object
	obj.FeaturesVariable = features_variable

	obj.VariableFeatures.OUTPUT = features_variable
	obj.VariableFeatures.Object = out_object

	obj.RunPCA.OUTPUT = out_object
	obj.RunPCA.Object = out_object
	obj.RunPCA.Features = features_variable

	// save
	obj.SaveRda.Object = out_object
	obj.SaveRda.File = path.Join(directory, fmt.Sprintf("%s.rda", out_object))
}
