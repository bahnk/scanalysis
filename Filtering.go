package main

import (
	"fmt"
	"path"
)

type Filtering struct {
	Name string
	InObject string
	OutObject string
	MitochondriaColumn string
	NFeatureRnaMin string `json:"n_feature_rna_min"`
	NFeatureRnaMax string `json:"n_feature_rna_max"`
	PercentMtMin string `json:"percent_mt_min"`
	PercentMtMax string `json:"percent_mt_max"`
	SaveRda SaveRda
}

func (obj *Filtering) Prepare(name string, object string, mitochondria_column string, directory string) {

	var suffix = "filtered"

	obj.Name = name
	obj.InObject = object
	obj.OutObject = fmt.Sprintf("%s_%s", name, suffix)
	obj.MitochondriaColumn = mitochondria_column

	// save
	obj.SaveRda.Object = obj.OutObject
	obj.SaveRda.File = path.Join(directory, fmt.Sprintf("%s.rda", obj.OutObject))

}

