fluidPage(theme = 'zoo.css',
          fluidRow(align = "center",
                   column(2, align="center",

                          fluidRow(
                            actionButton("mean_norm", "Mean-Centering"),
                            fluidRow(div(style="height:5px")),
                            actionButton("scaling_norm", "Autoscaling"),
                            fluidRow(div(style="height:5px")),
                            actionButton("pareto_norm", "Pareto"),
                            fluidRow(div(style="height:5px")),
                            actionButton("sqr_norm", "Square root"),
                            fluidRow(div(style="height:5px")),
                            actionButton("i_sqr_norm", "Inverse square root"),
                            fluidRow(div(style="height:5px")),
                            actionButton("log_norm", "Log"),
                            fluidRow(div(style="height:5px")),
                            actionButton("s_stocsy_i_norm", "Start STOCSY-I"),
                                        bsTooltip("s_stocsy_i_norm", "Start STOCSY-I from normalized data",
                                                  "right", options = list(container = "body")),
                            fluidRow(div(style="height:5px"))
                          ),

                        fluidRow(

                          fluidRow( textInput("pv_n", "p-value", "0.05")),
                          fluidRow(verbatimTextOutput("norm_cond")),
                          downloadButton("downloadareas2",icon("sakod"),
                                         class = "btn btn-default shiny-download-link",
                                         tags$img(src = "download_buckets.png",
                                                  height = "35px", width = "40px")),
                                          bsTooltip("downloadareas2", "Download selected areas normalized",
                                                    "right", options = list(container = "body")),


                          downloadButton("downloadpoints2", icon("sakod"),
                                         class = "btn btn-default shiny-download-link",
                                         tags$img(src = "download_points.png",
                                                  height = "35px", width = "40px")),
                                         bsTooltip("downloadpoints2", "Download selected points normalized",
                                                   "right", options = list(container = "body"))

                   )),

                   column(1,align="center"),

                   column(9, align="center",

                          fluidRow(
                            fluidRow(p(strong("Non-normal regions will be in red."))),
                            plotOutput("plot_norm", height = "450px",click = "sel_click", dblclick = "plot_dblclick",
                                       brush = brushOpts(id = "plot_brush_norm",delay = 5000, fill = "#ccc", direction = "xy", resetOnNew = TRUE)
                            )
                          )
                   )
))
