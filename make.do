// the 'make.do' file is automatically created by 'github' package.
// execute the code below to generate the package installation files.
// DO NOT FORGET to update the version of the package, if changed!
// for more information visit http://github.com/haghish/github

make datadoc, replace toc pkg  version(1.4)                                  ///
     license("MIT")                                                          ///
     author("E. F. Haghish")                                                 ///
     affiliation("University of Goettingen")                                 ///
     email("haghish@med.uni-goettingen.de")                                  ///
     url("")                                                                 ///
     title("automatic data documentation help file generator")               ///
     description("datadoc generate a documentation template for the data "   ///
		             "that is currently loaded in Stata")                        ///
     install("datadoc.ado;datadoc.sthlp")                                    ///
     ancillary("")                                                         

// generating the documentation
markdoc "datadoc.ado", export(sthlp) replace

// generating the package vignette
markdoc "datadoc.ado", export(md) replace
markdoc "vignette.do", export(tex) toc replace master                        ///
     title("DATADOC package vignette")                                       ///
		 author("E. F. Haghish")                                                 ///
     affiliation("University of Goettingen")                                 ///
     address("haghish@med.uni-goettingen.de")                                

// clean the directory after typsetting the LaTeX file
capture rm datadoc.md
capture rm vignette.aux
capture rm vignette.tex
capture rm vignette.toc
capture rm vignette.synctex.gz
capture rm vignette.out
capture rm vignette.log
