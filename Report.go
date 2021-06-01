package main

type Report struct {
}

type RmdReport struct {
	Report
}

type IntegrationSCTransformCellCycle struct {
	RmdReport
	CreateSeuratObject CreateSeuratObject
}

