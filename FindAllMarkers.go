package main

import (
	"fmt"
	"path"
)

type FindAllMarkers struct {
	Name string
	InObject string
	OutObject string
	FindAllMarkers Seurat__FindAllMarkers `json:"Seurat::FindAllMarkers"`
	Parallelization Parallelization `json:"Parallelization"`
	SaveCsv SaveCsv
}

func (obj *FindAllMarkers) Prepare(name string, object string, directory string) {

	var suffix = "markers"
	var out_object = fmt.Sprintf("%s_%s", name, suffix)

	obj.Name = name

	obj.FindAllMarkers.OUTPUT = out_object
	obj.FindAllMarkers.Object = object

	// save
	obj.SaveCsv.Object = out_object
	obj.SaveCsv.File = path.Join(directory, fmt.Sprintf("%s.csv", out_object))
	obj.SaveCsv.RowNames = "F"
}

