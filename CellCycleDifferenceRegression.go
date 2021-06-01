package main

import (
	"fmt"
	"path"
)

type CellCycleDifferenceRegression struct {
	Name string
	InObject string
	OutObject string
	CellCycleDifferenceVariable string
	ScaleData Seurat__ScaleData `json:"Seurat::ScaleData"`
	Parallelization Parallelization `json:"Parallelization"`
	SaveRda SaveRda
}

func (obj *CellCycleDifferenceRegression) Prepare(name string, object string, directory string) {

	var suffix = "cell_cycle_difference_regressed"
	var out_object = fmt.Sprintf("%s_%s", name, suffix)
	var cell_cycle_difference_variable = "CC.Difference"

	obj.Name = name
	obj.InObject = object
	obj.OutObject = out_object
	obj.CellCycleDifferenceVariable = cell_cycle_difference_variable

	obj.ScaleData.OUTPUT = out_object
	obj.ScaleData.Object = out_object
	obj.ScaleData.Features = fmt.Sprintf("\"%s\"", cell_cycle_difference_variable)

	// save
	obj.SaveRda.Object = out_object
	obj.SaveRda.File = path.Join(directory, fmt.Sprintf("%s.rda", out_object))
}

