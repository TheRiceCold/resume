#import "src/template.typ": *
#show: layout

#cvHeader(hasPhoto: false, align: left)
  #autoImport("education")
  #autoImport("experience")
  #autoImport("projects")
  #autoImport("certificates")
  #autoImport("skills")
#cvFooter()
