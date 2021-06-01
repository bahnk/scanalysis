package main

import (
	"fmt"
	"path"
)

type CreateSeuratObject struct {
	Read10X Seurat__Read10X `json:"Seurat::Read10x"`
	CreateSeuratObject Seurat__CreateSeuratObject `json:"Seurat::CreateSeuratObject"`
	Data_dir string
	Data_dir_variable string
	Object string
	Name string
	Columns map[string]string `json:"columns"`
	Attributes map[string]string `json:"attributes"`
	SaveRda SaveRda
}

func (obj *CreateSeuratObject) Prepare(name string, directory string) {

	var suffix string = "seurat_object"

	obj.Name = name
	obj.Read10X.OUTPUT = fmt.Sprintf("%s_%s.data", name, suffix)
	obj.Data_dir = obj.Read10X.Data_dir
	obj.Data_dir_variable = fmt.Sprintf("%s_directory", name)
	obj.Read10X.Data_dir = fmt.Sprintf("%s_directory", name)

	obj.CreateSeuratObject.Counts = fmt.Sprintf("%s_%s.data", name, suffix)
	obj.CreateSeuratObject.OUTPUT = fmt.Sprintf("%s_%s", name, suffix)

	obj.Object = fmt.Sprintf("%s_%s", name, suffix)

	obj.SaveRda.Object = obj.Object
	obj.SaveRda.File = path.Join(directory, fmt.Sprintf("%s.rda", obj.Object))
}

