package main

import (
	"fmt"
	"path"
)

type Normalizing struct {
	Name string
	InObject string
	OutObject string
	NormalizeData Seurat__NormalizeData `json:"Seurat::NormalizeData"`
	Parallelization Parallelization `json:"Parallelization"`
	SaveRda SaveRda
}

func (obj *Normalizing) Prepare(name string, object string, directory string) {

	obj.Name = name

	var suffix = "normalized"

	var out_object = fmt.Sprintf("%s_%s", name, suffix)

	obj.InObject = object
	obj.OutObject = out_object
	obj.NormalizeData.OUTPUT = out_object
	obj.NormalizeData.Object = out_object

	// save
	obj.SaveRda.Object = obj.OutObject
	obj.SaveRda.File = path.Join(directory, fmt.Sprintf("%s.rda", out_object))
}

