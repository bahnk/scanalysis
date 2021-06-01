package main

import (
	"fmt"
	"path"
)

type CellCycleRegression struct {
	Name string
	InObject string
	OutObject string
	FeaturesVariable string
	ScaleData Seurat__ScaleData `json:"Seurat::ScaleData"`
	Parallelization Parallelization `json:"Parallelization"`
	SaveRda SaveRda
}

func (obj *CellCycleRegression) Prepare(name string, object string, directory string) {

	var suffix = "cell_cycle_regressed"
	var out_object = fmt.Sprintf("%s_%s", name, suffix)
	var features_variable = "features"

	obj.Name = name
	obj.InObject = object
	obj.OutObject = out_object
	obj.FeaturesVariable = features_variable

	obj.ScaleData.OUTPUT = out_object
	obj.ScaleData.Object = out_object
	obj.ScaleData.Features = features_variable
	obj.ScaleData.Vars_to_regress = "c(\"S.Score\", \"G2M.Score\")"

	// save
	obj.SaveRda.Object = out_object
	obj.SaveRda.File = path.Join(directory, fmt.Sprintf("%s.rda", out_object))
}

