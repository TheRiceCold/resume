#import "../src/template.typ": *
#show link: underline

#cvSection("Experience")

#cvEntry(
  society: [Proudcloud],
  logo: "../src/logos/proudcloud.png",
  title: [Full-Stack Software Engineer],
  date: [2022, 2023],
  location: [Remote],
  description: list(
    [Project: #link("https://www.ragebite.com/work/playbeyond")[PlayBeyond] - Esports platform to host leagues powered by logitech],
    [Helped facilitate CI/CD workflows using Jenkins.],
    [Managed two web clients (players and admin) using javascript, vuejs, and jquery.],
    [Debugging with nodejs and mongodb backend, as well as 
    building test scripts for the API, including SSO, JWT authentication, etc.],
    [Project: #link("https://www.medifi.com/")[Medifi] - Telemedicine platform, for patients to remotely connect with their doctors],
    [Deployment and release of web client, API, and mobile application.],
    [Maintained and update documentations, docker containers, and project packages.],
    [Improving, upgrading, and adding features to the Medifi cross-platform mobile app utilizing react native, graphl, and redux.],
  )
)
