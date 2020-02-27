# presentation rendering helpers

render_multiple_presentations <- function(rmd_fn = "sample-presentation.Rmd") {
  
  fn_wo_ext <- tools::file_path_sans_ext(basename(rmd_fn))
  
  rmarkdown::render("sample-presentation.Rmd", output_format = "ioslides_presentation",
                    output_file = paste0(fn_wo_ext, "-ioslides"))
  
  rmarkdown::render("sample-presentation.Rmd", output_format = "slidy_presentation",
                    output_file = paste0(fn_wo_ext, "-slidy"))
  
  rmarkdown::render("sample-presentation.Rmd", output_format = "beamer_presentation",
                    output_file = paste0(fn_wo_ext, "-beamer"))
  
  rmarkdown::render("sample-presentation.Rmd", output_format = "powerpoint_presentation",
                    output_file = paste0(fn_wo_ext, "-powerpoint"))
  
  rmarkdown::render("sample-presentation.Rmd", output_format = "revealjs::revealjs_presentation",
                    output_file = paste0(fn_wo_ext, "-revealjs"))
}

