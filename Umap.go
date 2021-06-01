package main

import (
	"fmt"
	"path"
)

type Umap struct {
	Name string
	InObject string
	OutObject string
	RunUMAP Seurat__RunUMAP `json:"Seurat::RunUMAP"`
	SaveRda SaveRda
}

func (obj *Umap) Prepare(name string, object string, directory string) {

	var suffix = "umap"
	var out_object = fmt.Sprintf("%s_%s", name, suffix)

	obj.Name = name
	obj.InObject = object
	obj.OutObject = out_object

	obj.RunUMAP.OUTPUT = out_object
	obj.RunUMAP.Object = out_object

	// save
	obj.SaveRda.Object = out_object
	obj.SaveRda.File = path.Join(directory, fmt.Sprintf("%s.rda", out_object))
}

