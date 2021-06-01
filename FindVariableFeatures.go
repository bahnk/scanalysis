package main

import (
	"fmt"
	"path"
)

type FindVariableFeatures struct {
	Name string
	InObject string
	OutObject string
	FindVariableFeatures Seurat__FindVariableFeatures `json:"Seurat::FindVariableFeatures"`
	SaveRda SaveRda
}

func (obj *FindVariableFeatures) Prepare(name string, object string, directory string) {

	var suffix = "varfeats"
	var out_object = fmt.Sprintf("%s_%s", name, suffix)

	obj.Name = name
	obj.InObject = object
	obj.OutObject = out_object
	obj.FindVariableFeatures.OUTPUT = out_object
	obj.FindVariableFeatures.Object = out_object

	// save
	obj.SaveRda.Object = out_object
	obj.SaveRda.File = path.Join(directory, fmt.Sprintf("%s.rda", out_object))
}

