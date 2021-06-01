
package main

import (
	"fmt"
	"path"
)

type SeuratVlnPlot struct {
	Name string
	Title string
	Plot string
	Object string
	VlnPlot Seurat__VlnPlot `json:"Seurat::VlnPlot`
	GGSave GGSave
}

func (obj *NFeatureRNAVlnPlot) Prepare(name string, object string, directory string) {

	var suffix = "nfeat_violin"

	obj.Name = name
	obj.Plot = fmt.Sprintf("%s_%s", name, suffix)

	obj.VlnPlot.OUTPUT = obj.Plot
	obj.VlnPlot.Object = object
	obj.VlnPlot.Features = "\"nFeature_RNA\""
 
	// save
	obj.GGSave.Object = obj.Plot
	obj.GGSave.BasePath= path.Join(directory, obj.Plot)
}

package main

import (
	"fmt"
	"path"
)

type NCountRNAVlnPlot struct {
	Name string
	Plot string
	Object string
	VlnPlot Seurat__VlnPlot `json:"Seurat::VlnPlot`
	GGSave GGSave
}

func (obj *NCountRNAVlnPlot) Prepare(name string, object string, directory string) {

	var suffix = "ncount_violin"

	obj.Name = name
	obj.Plot = fmt.Sprintf("%s_%s", name, suffix)

	obj.VlnPlot.OUTPUT = obj.Plot
	obj.VlnPlot.Object = object
	obj.VlnPlot.Features = "\"nCount_RNA\""
 
	// save
	obj.GGSave.Object = obj.Plot
	obj.GGSave.BasePath= path.Join(directory, obj.Plot)
}

