input_fortunes <- unique(c(readLines("https://raw.githubusercontent.com/ruanyf/fortunes/master/data/fortunes"),
                           unique(readLines("~/codebase/fortune_teller/fortunes.txt")),
                           readLines("https://raw.githubusercontent.com/bmc/fortunes/master/fortunes"),
                           as.data.frame(fortunes::read.fortunes())$quote,
                           readLines("https://raw.githubusercontent.com/shlomif/fortune-mod/master/fortune-mod/datfiles/fortunes"),
                           readLines("https://raw.githubusercontent.com/shlomif/fortune-mod/master/fortune-mod/datfiles/cookie"),
                           readLines("https://raw.githubusercontent.com/shlomif/fortune-mod/master/fortune-mod/datfiles/drugs"),
                           readLines("https://raw.githubusercontent.com/shlomif/fortune-mod/master/fortune-mod/datfiles/miscellaneous"),
                           readLines("https://raw.githubusercontent.com/shlomif/fortune-mod/master/fortune-mod/datfiles/paradoxum"),
                           readLines("https://raw.githubusercontent.com/shlomif/fortune-mod/master/fortune-mod/datfiles/wisdom")))
input_fortunes <- input_fortunes[!grepl("%", input_fortunes)]

input_fortunes <- input_fortunes[!(grepl("^(\\s|'')", input_fortunes))]

input_fortunes <- input_fortunes[nchar(input_fortunes) < 281]

write.csv(input_fortunes, "~/codebase/fortune_teller/fortunes.csv")

writeLines(input_fortunes, "input_dataset.txt")