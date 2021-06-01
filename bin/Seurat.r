#!/usr/bin/Rscript

pkg <- "Seurat"

library(pkg, character.only=T)
path <- file.path( "bin" , paste0(pkg, ".txt") )
fcts <- readLines(path)

dir.create( file.path("param", pkg) , recursive=T , showWarnings=F )
dir.create( file.path("tpl", pkg) , recursive=T , showWarnings=F )

all_struct <- "package main\n\n"

for ( name in fcts ) {

	cat( sprintf("%s\n", name) )

	m <- methods(name)
	df <- attr(m, "info")

	fct <- ""

	if ( nrow(df) == 0 ) {
		fct <- name
	} else if ( "RenameCells" == name ) {
		fct <- "RenameCells.Seurat"
	} else {
		fct <- rownames(df)[1]
	}

	gaw <- getAnywhere(fct)
	#args <- formalArgs(gaw$objs[[1]])
	args <- formals(gaw$objs[[1]])

	i <- 1
	arguments <- list()
	
	for ( arg_name in names(args) ) {

		if ( arg_name == "..." ) {
			i <- i + 1
			next
		}

		#cat( sprintf( "%s,%s,%s\n", name, arg_name, mode( args[[arg_name]] ) ) )

		argument <- list()
		argument[["name"]] <- arg_name
		argument[["mode"]] <- mode( args[[arg_name]] )
		argument[["value"]] <- args[arg_name]
		argument[["field"]] <- stringr::str_to_title(gsub("\\.", "_", arg_name))

		arguments[[i]] <- argument

		i <- i + 1
	}

	############################################################################
	### template value

	for ( i in 1:length(arguments) ) {

		field <- arguments[[i]]$field

		if ( "name" == arguments[[i]]$mode ) {

			arguments[[i]]$template_value <- sprintf('{{ .%s }}', field)

		} else if ( "character" == arguments[[i]]$mode ) {

			arguments[[i]]$template_value <- sprintf('"{{ .%s }}"', field)

		} else if ( "numeric" == arguments[[i]]$mode ) {

			arguments[[i]]$template_value <- sprintf('{{ .%s }}', field)

		} else if ( "logical" == arguments[[i]]$mode ) {

			arguments[[i]]$template_value <- sprintf('{{ .%s }}', field)

		} else if ( "call" == arguments[[i]]$mode ) {

			arguments[[i]]$template_value <- sprintf('{{ .%s }}', field)

		} else if ( "NULL" == arguments[[i]]$mode ) {

			arguments[[i]]$template_value <- sprintf('{{ .%s }}', field)

		}
	}

	############################################################################
	### following arguments

	fields <- paste0(".", unlist(lapply(arguments, function(a)a$field)))
	for ( i in 1:length(arguments) ) {
		if ( i == length(arguments) ) {
			f <- ""
		} else {
			f <- fields[(i+1):length(arguments)]
		}
		arguments[[i]]$followers <- f
	}

	############################################################################
	### go structure

	struct <- ""
	struct <- paste0(struct, sprintf('type %s__%s struct {', pkg, name))
	struct <- paste0(struct, '\n')
	struct <- paste0(struct, '\tOUTPUT string')
	struct <- paste0(struct, '\n')

	for ( i in 1:length(arguments) ) {
		a <- arguments[[i]]
		s <- sprintf('\t%s string `json:"%s"`', a$field, a$name)
		struct <- paste0(struct, s)
		struct <- paste0(struct, '\n')
	}

	struct <- paste0(struct, '}')

	all_struct <- paste0(all_struct, struct, "\n\n")

	src <- ""
	src <- paste0(src, 'package main')
	src <- paste0(src, '\n')
	src <- paste0(src, '\n')
	src <- paste0(src, struct)

	#write(x=src, file=file.path(pkg, paste0(name, ".go")))

	############################################################################
	### go template

	tpl <- ""
	tpl <- paste0(tpl, sprintf('{{ block "%s::%s" . }}', pkg, name))
	tpl <- paste0(tpl, '\n')
	tpl <- paste0(tpl, '{{ .OUTPUT }} <-')
	tpl <- paste0(tpl, '\n')
	tpl <- paste0(tpl, sprintf('{{ "\\t" }}%s::%s(', pkg, name))
	tpl <- paste0(tpl, '\n')

	for ( i in 1:length(arguments) ) {

		a <- arguments[[i]]

		if ( i == length(arguments) ) {

			ss <- '{{- if .%s }}{{ "\\n\\t\\t" }}%s=%s{{ end }}'
			s <- sprintf(ss, a$field, a$name, a$template_value)

		} else {

			ss <- '{{- if .%s }}{{ "\\n\\t\\t" }}%s=%s{{ if or %s }},{{ end }}{{ end }}'
			s <-
				sprintf(ss,
						a$field,
						a$name,
						a$template_value,
						paste(a$followers, collapse=" "
						)
				)
		}

		tpl <- paste0(tpl, s)
		tpl <- paste0(tpl, '\n')
	}

	tpl <- paste0(tpl, '\t)')
	tpl <- paste0(tpl, '\n')
	tpl <- paste0(tpl, '{{ end }}')

	write(x=tpl, file=file.path("tpl", pkg, paste0(name, ".r.tpl")))

	############################################################################
	### go rmd template

	tpl <- ""
	tpl <- paste0(tpl, sprintf('{{ block "%s::%s" . }}', pkg, name))
	tpl <- paste0(tpl, '\n')
	tpl <- paste0(tpl, '{{ .OUTPUT }} <-')
	tpl <- paste0(tpl, '\n')
	tpl <- paste0(tpl, sprintf('{{ "\\t" }}%s::%s(', pkg, name))
	tpl <- paste0(tpl, '\n')

	for ( i in 1:length(arguments) ) {

		a <- arguments[[i]]

		if ( i == length(arguments) ) {

			ss <- '{{- if .%s }}{{ "\\n\\t\\t" }}%s=%s{{ end }}'
			s <- sprintf(ss, a$field, a$name, a$template_value)

		} else {

			ss <- '{{- if .%s }}{{ "\\n\\t\\t" }}%s=%s{{ if or %s }},{{ end }}{{ end }}'
			s <-
				sprintf(ss,
						a$field,
						a$name,
						a$template_value,
						paste(a$followers, collapse=" "
						)
				)
		}

		tpl <- paste0(tpl, s)
		tpl <- paste0(tpl, '\n')
	}

	tpl <- paste0(tpl, '\t)')
	tpl <- paste0(tpl, '\n')
	tpl <- paste0(tpl, '{{ end }}')

	write(x=tpl, file=file.path("tpl", pkg, paste0(name, ".r.tpl")))

	############################################################################
	### json template

	json <- ""
	json <- paste0(json, '{')
	json <- paste0(json, '\n')
	json <- paste0(json, sprintf('\t"%s::%s": {', pkg, name))
	json <- paste0(json, '\n')

	for ( i in 1:length(arguments) ) {

		a <- arguments[[i]]

		if ( i == length(arguments) ) {

			s <- sprintf('\t\t"%s": "%s"', a$name, a$value)

		} else {

			s <- sprintf('\t\t"%s": "%s",', a$name, a$value)

		}

		json <- paste0(json, s)
		json <- paste0(json, '\n')
	}

	json <- paste0(json, '\t}')
	json <- paste0(json, '\n')
	json <- paste0(json, '}')

	write(x=json, file=file.path("param", pkg, paste0(name, ".json")))
}

write(x=all_struct, file="Seurat.go")

