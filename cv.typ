#import "src/template.typ": *
#show: layout

#cvHeader(hasPhoto: false, align: center)
  #autoImport("experience")
  #autoImport("projects")
  #autoImport("education")
  #autoImport("certificates")
  #autoImport("skills")
#cvFooter()
