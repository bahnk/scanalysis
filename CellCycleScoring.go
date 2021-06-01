package main

import (
	"fmt"
	"path"
	"strings"
)

type CellCycleScoring struct {
	Name string
	InObject string
	OutObject string
	SPhaseGenesVariable string
	G2MPhasesGenesVariable string
	GeneSymbolCase string
	CellCycleScoring Seurat__CellCycleScoring `json:"Seurat::CellCycleScoring"`
	SaveRda SaveRda
}

func (obj *CellCycleScoring) Prepare(name string, object string, species, directory string) {

	var suffix = "cell_cycle_scored"
	var out_object = fmt.Sprintf("%s_%s", name, suffix)

	obj.Name = name
	obj.InObject = object
	obj.OutObject = out_object
	obj.SPhaseGenesVariable = "s.genes"
	obj.G2MPhasesGenesVariable = "g2m.genes"

	obj.CellCycleScoring.OUTPUT = out_object
	obj.CellCycleScoring.Object = out_object
	obj.CellCycleScoring.S_features = obj.SPhaseGenesVariable
	obj.CellCycleScoring.G2m_features = obj.G2MPhasesGenesVariable
	obj.CellCycleScoring.Set_ident = "F"

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

