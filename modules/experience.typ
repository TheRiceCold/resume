#import "../src/template.typ": *
#show link: underline

#cvSection("Experience")

#cvEntry(
  title: [Contracting],
  society: [Proudcloud],
  logo: "../src/logos/nixos.svg",
  date: [2022, 2023],
  location: [Remote],
  description: list(
    [Took part in a team of participants to package NGI (Next Generation Internet)
    applications with #link("https://nixos.org")[Nix] for the
    #link("https://summer.nixos.org")[Summer of Nix] program, as well as developing
    dream2nix and improving the overall Nix/NixOS documentation],
    [Improved documentation of several areas of the #link("https://nixos.wiki")[NixOS Wiki]],
    [Created publicly-available flakes accessible on the
    #link("https://github.com/ngi-nix")[NGI-Nix organization]],
  )
)
