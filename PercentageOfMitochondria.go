package main

import (
	"fmt"
	"path"
)

type PercentageOfMitochondria struct {
	Name string
	InObject string
	OutObject string
	ColumnName string `json:"column_name"`
	Pattern string
	PatternVariable string
	PercentageFeatureSet Seurat__PercentageFeatureSet `json:"Seurat::PercentageFeatureSet"`
	SaveRda SaveRda
}

func (obj *PercentageOfMitochondria) Prepare(name string, object string, directory string) {

	var suffix = "mitochondria"

	obj.Name = name
	obj.InObject = object
	obj.OutObject = fmt.Sprintf("%s_%s", name, suffix)

	obj.PercentageFeatureSet.Object = obj.InObject
	obj.PercentageFeatureSet.OUTPUT = fmt.Sprintf("%s[[\"%s\"]]", obj.OutObject, obj.ColumnName)

	// the pattern is not double quoted
	obj.Pattern = obj.PercentageFeatureSet.Pattern
	var pattern_variable = fmt.Sprintf("%s_pattern", name)
	obj.PatternVariable = pattern_variable
	obj.PercentageFeatureSet.Pattern = pattern_variable

	// save
	obj.SaveRda.Object = obj.OutObject
	obj.SaveRda.File = path.Join(directory, fmt.Sprintf("%s.rda", obj.OutObject))
}

