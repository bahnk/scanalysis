{{ block "Parallelization" . }}
BiocParallel::register(BiocParallel::MulticoreParam({{ .Workers }}))
base::options(future.globals.maxSize = {{ .GlobalsMaxSize }})
future::plan("multiprocess", workers={{ .Workers }})
{{ end }}
