module WorkshopsHelper
  def continent_select_options
    I18n.t('workshop.continents').map do |continent|
      continent
    end
  end

  def timezone_codes
    [
     "ACST",
     "ACWST",
     "AEST",
     "AKDT",
     "ANAT",
     "ART",
     "AoE",
     "BST",
     "CDT",
     "CEST",
     "CHAST",
     "CST",
     "CVT",
     "EDT",
     "GMT",
     "GST",
     "HADT",
     "HAST",
     "IRDT",
     "IST",
     "JST",
     "LHST",
     "LINT",
     "MART",
     "MMT",
     "MSK",
     "NDT",
     "NPT",
     "NUT",
     "PDT",
     "PYT",
     "SBT",
     "TOT",
     "UZT",
     "WGST",
     "WIB"
    ]
  end
end
