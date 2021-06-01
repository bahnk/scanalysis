package main

import (
	"fmt"
	"path"
	"strings"
)

type CellCyclePca struct {
	Name string
	InObject string
	OutObject string
	SPhaseGenesVariable string
	G2MPhasesGenesVariable string
	GeneSymbolCase string
	RunPCA Seurat__RunPCA `json:"Seurat::RunPCA"`
	SaveRda SaveRda
}

func (obj *CellCyclePca) Prepare(name string, object string, species, directory string) {

	var suffix = "cell_cycle_pca"
	var out_object = fmt.Sprintf("%s_%s", name, suffix)

	obj.Name = name
	obj.InObject = object
	obj.OutObject = out_object
	obj.SPhaseGenesVariable = "s.genes"
	obj.G2MPhasesGenesVariable = "g2m.genes"

	obj.RunPCA.OUTPUT = out_object
	obj.RunPCA.Object = out_object
	obj.RunPCA.Features = fmt.Sprintf("c(%s, %s)", obj.SPhaseGenesVariable, obj.G2MPhasesGenesVariable)

	lower_case_species := strings.ToLower(species)
	if "mus musculus" == lower_case_species || "mouse" == lower_case_species {
		obj.GeneSymbolCase = "lower"
	} else {
		obj.GeneSymbolCase = "upper"
	}

	// save
	obj.SaveRda.Object = out_object
	obj.SaveRda.File = path.Join(directory, fmt.Sprintf("%s.rda", out_object))
}


