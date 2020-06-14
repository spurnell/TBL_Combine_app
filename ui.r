ui <- dashboardPage(
  dashboardHeader(title = "TBL Combine"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Leaderboard", tabName = "leaderboard", icon = icon("tree")),
      menuItem("Data Visualization", tabName = "dataviz", icon = icon("car")),
      menuItem("Choose Data", tabName = "database", icon = icon("car"))
    )
  ),
  dashboardBody(
    tabItems(
      tabItem("database",
              fluidPage(
                box(
                  selectInput("database", "Databases:",
                              c("Combine1",
                                "Combine2",
                                "Combine3"))
                )
              )),
      tabItem("leaderboard",
              fluidPage(
                DT::dataTableOutput("Leader_Main") 
              )),
      tabItem("dataviz",
              fluidPage(
                box(plotOutput("coorplot")),
                box(
                  selectInput("Variables", "Variables:",
                              c("FORTY",
                                "BROAD",
                                "BENCH",
                                "P. AGILITY"))
                )
              )
      )
    )
  )
)
