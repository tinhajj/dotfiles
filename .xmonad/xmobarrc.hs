Config {
       font = "xft:SF Pro Display:size=10:antialias=true"
       , additionalFonts = [ "xft:FontAwesome:size=11" ]
       , allDesktops = True
       , bgColor = "#000000"
       , fgColor = "#ffffff"
       , commands = [ Run Cpu [ "--template", "<total>%"
                              , "--Low","3"
                              , "--High","50"
                              , "--low","#ffffff"
                              , "--normal","#ffffff"
                              , "--high","#fb4934"] 50
                    , Run Memory ["-t","<used>/<free>"] 50
                    , Run Date "%a %_d %b %Y d.%j w.%W %I:%M" "date" 300
                    , Run DynNetwork ["-t","<fc=#4db5bd><fn=1>m</fn></fc> <rx>, <fc=#c678dd><fn=1>m</fn></fc> <tx>"
                                     ,"-H","200"
                                     ,"-L","10"
                                     ,"-h","#ffffff"
                                     ,"-l","#ffffff"
                                     ,"-n","#ffffff"] 50

                    , Run CoreTemp ["-t", "<core0>°"
                                   , "-L", "30"
                                   , "-H", "75"
                                   , "-l", "lightblue"
                                   , "-n", "#ffffff"
                                   , "-h", "#aa4450"] 50

                    -- battery monitor
                    , Run BatteryP       [ "BAT1" ]
                                         [ "--template" , "<acstatus>"
                                         , "--Low"      , "10"        -- units: %
                                         , "--High"     , "80"        -- units: %
                                         , "--low"      , "#fb4934" -- #ff5555
                                         , "--normal"   , "#ffffff"
                                         , "--high"     , "#98be65"

                                         , "--" -- battery specific options
                                                   -- discharging status
                                                   , "-o"   , "<left>% (<timeleft>)"
                                                   -- AC "on" status
                                                   , "-O"   , "<left>% (<fc=#98be65>Charging</fc>)" -- 50fa7b
                                                   -- charged status
                                                   , "-i"   , "<fc=#98be65>Charged</fc>"
                                         ] 50
                    , Run StdinReader
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = " %StdinReader% }{ %cpu% %coretemp% %memory% %battery% %date% "   -- #69DFFA
       }
