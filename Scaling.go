package main

import (
	"fmt"
	"path"
)

type Scaling struct {
	Name string
	InObject string
	OutObject string
	GenesVariable string
	ScaleData Seurat__ScaleData `json:"Seurat::ScaleData"`
	Parallelization Parallelization `json:"Parallelization"`
	SaveRda SaveRda
}

func (obj *Scaling) Prepare(name string, object string, genes_variable string, directory string) {

	var suffix = "scaled"
	var out_object = fmt.Sprintf("%s_%s", name, suffix)

	obj.Name = name
	obj.InObject = object
	obj.OutObject = out_object
	obj.GenesVariable = genes_variable

	obj.ScaleData.OUTPUT = out_object
	obj.ScaleData.Object = out_object
	obj.ScaleData.Features = genes_variable

	// save
	obj.SaveRda.Object = out_object
	obj.SaveRda.File = path.Join(directory, fmt.Sprintf("%s.rda", out_object))
}

