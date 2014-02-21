module ContactsHelper

  ARRL_SECTIONS = [
    "CT", "EMA", "ME", "NH", "RI", "VT", "WMA",                                  # 1
    "ENY", "NLI", "NNJ", "NNY", "SNJ", "WNY",                                    # 2
    "DE", "EPA", "MDC", "WPA",                                                   # 3
    "AL", "GA", "KY", "NC", "NFL", "SC", "SFL", "WCF", "TN", "VA", "PR", "VI",   # 4
    "AR", "LA", "MS", "NM", "NTX", "OK", "STX", "WTX",                           # 5
    "EB", "LAX", "ORG", "SB", "SCV", "SDG", "SF", "SJV", "SV", "PAC",            # 6
    "AZ", "EWA", "ID", "MT", "NV", "OR", "UT", "WWA", "WY", "AK",                # 7
    "MI", "OH", "WV",                                                            # 8
    "IL", "IN", "WI",                                                            # 9
    "CO", "IA", "KS", "MN", "MO", "NE", "ND", "SD",                              # 0
    "MAR", "NL", "QC", "ONN", "ONS", "ONE", "GTA", "MB", "SK", "AB", "BC", "NT", # Canada
    "DX"                                                                         # International
  ]

  BAND = ["160m", "80m", "40m", "20m", "15m", "10m", "50m", "2m", "1.25m", "70cm", "33cm", "23cm"]

  MODE = ["CW", "Digital", "Phone"]
end
