package main

import (
	"fmt"
	"path"
)

type Clustering struct {
	Name string
	InObject string
	OutObject string
	FindNeighbors Seurat__FindNeighbors `json:"Seurat::FindNeighbors"`
	FindClusters Seurat__FindClusters `json:"Seurat::FindClusters"`
	Parallelization Parallelization `json:"Parallelization"`
	SaveRda SaveRda
}

func (obj *Clustering) Prepare(name string, object string, directory string) {

	var suffix = "clustered"
	var out_object = fmt.Sprintf("%s_%s", name, suffix)

	obj.Name = name
	obj.InObject = object
	obj.OutObject = out_object

	obj.FindNeighbors.OUTPUT = out_object
	obj.FindNeighbors.Object = out_object

	obj.FindClusters.OUTPUT = out_object
	obj.FindClusters.Object = out_object

	// save
	obj.SaveRda.Object = out_object
	obj.SaveRda.File = path.Join(directory, fmt.Sprintf("%s.rda", out_object))
}

