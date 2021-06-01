package main

import (
	"fmt"
	"path"
)

type JackStraw struct {
	Name string
	InObject string
	OutObject string
	JackStraw Seurat__JackStraw `json:"Seurat::JackStraw"`
	ScoreJackStraw Seurat__ScoreJackStraw `json:"Seurat::ScoreJackStraw"`
	Parallelization Parallelization `json:"Parallelization"`
	SaveRda SaveRda
}

func (obj *JackStraw) Prepare(name string, object string, directory string) {

	var suffix = "jackstraw"
	var out_object = fmt.Sprintf("%s_%s", name, suffix)

	obj.Name = name
	obj.InObject = object
	obj.OutObject = out_object

	obj.JackStraw.OUTPUT = out_object
	obj.JackStraw.Object = out_object

	obj.ScoreJackStraw.OUTPUT = out_object
	obj.ScoreJackStraw.Object = out_object

	// save
	obj.SaveRda.Object = out_object
	obj.SaveRda.File = path.Join(directory, fmt.Sprintf("%s.rda", out_object))
}

