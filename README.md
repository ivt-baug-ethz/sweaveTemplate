# sweaveTemplate


## Set up

- For me, the easiest way to make sweave work was to install `tinytex`. However, this might not be necessary if LaTeX is already installed on your computer (e.g. if you are working on an ivt-windows machine). Make sure to set the global options -> sweave
- LaTeX packages can easily be installed from within R using the tinytex 'framework'. I needed to install `cm-super` (because I got an error along the lines fonts not expandable...). Run `tinytex::tlmgr_install('cm-super')`
- I would recommend using `knitr` (instead of `sweave`) to render your pdf. Make sure to set the global options -> sweave



## How to organize

- First of all, the basic repo structure follows the convention of an R package.
- I.e. organize code accordingly: Put functions in the `R` repo, put scripts under `inst/scripts` , use `usethis::use_data`to add data, use `usethis::use_package` to add dependencies, etc.
- The LaTeX part lives currently in `inst/sweave` feel free to rename (but leave in inst!)...



## How to use

- Regular LaTeX 'rules' apply. However, the documents (which you edit) end `.Rnw`
- Include Sections in `Template.Rnw` via special syntax (see comments)
- Each child file e.g. `Section1.Rnw` has to begin with the special comment and (in case of using knitr) with the `knitr::opts_knit$set(self.contained=FALSE)`
- And most importantly you can directly include **R chunk** via the GUI (as in RMarkdown) which inserts something along the line
- Use chunk options (small discrepancies between sweave and knitr...)

```
<<>>=
print("hello sweave")
@
```


## Further

- You can even create snipets for graphs and tables...
- Co-working with others can be done via regular github workflow!
