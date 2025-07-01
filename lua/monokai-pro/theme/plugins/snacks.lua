local M = {}

--- @param c Colorscheme The color palette
--- @param config Config
--- @param hp Helper
function M.get(c, config, hp)
  local isBackgroundClear = vim.tbl_contains(config.background_clear, "snacks")
  local transparent_bg = c.editor.background
  local transparent_bg_border = c.base.dimmed2
  local common_fg = hp.lighten(c.sideBar.foreground, 30)
  local notifier_bg = hp.lighten(c.base.dimmed5, 10)
  local dashboard_bg = c.base.dimmed5

  return {
    -- Base UI
    SnacksNormal = isBackgroundClear and {
      bg = transparent_bg,
      fg = common_fg,
    } or {
      bg = c.editorHoverWidget.background,
      fg = common_fg,
    },
    SnacksNormalNC = { link = "SnacksNormal" },
    SnacksWinBar = {
      fg = c.base.yellow,
      bg = isBackgroundClear and transparent_bg or c.base.dimmed5,
      bold = true,
    },
    SnacksWinBarNC = { link = "SnacksWinBar" },
    SnacksBackdrop = {
      fg = c.base.dark2,
      bg = isBackgroundClear and transparent_bg or c.base.dimmed5,
    },

    -- Notifier: Info
    SnacksNotifierInfo = {
      fg = c.base.accent4,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },
    SnacksNotifierIconInfo = {
      fg = c.base.accent4,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },
    SnacksNotifierTitleInfo = {
      fg = c.base.accent4,
      bg = isBackgroundClear and transparent_bg or c.base.yellow,
      bold = true,
      italic = true,
    },
    SnacksNotifierFooterInfo = { link = "DiagnosticInfo" },
    SnacksNotifierBorderInfo = {
      fg = c.base.accent4,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },

    -- Notifier: Warn
    SnacksNotifierWarn = {
      fg = c.base.accent2,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },
    SnacksNotifierIconWarn = {
      fg = c.base.accent2,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },
    SnacksNotifierTitleWarn = {
      fg = c.base.accent2,
      bg = isBackgroundClear and transparent_bg or c.base.yellow,
      bold = true,
      italic = true,
    },
    SnacksNotifierFooterWarn = { link = "DiagnosticWarn" },
    SnacksNotifierBorderWarn = {
      fg = c.base.accent2,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },

    -- Notifier: Debug
    SnacksNotifierDebug = {
      fg = c.base.accent2,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },
    SnacksNotifierIconDebug = {
      fg = c.base.accent2,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },
    SnacksNotifierTitleDebug = {
      fg = c.base.accent2,
      bg = isBackgroundClear and transparent_bg or c.base.yellow,
      bold = true,
      italic = true,
    },
    SnacksNotifierFooterDebug = { link = "DiagnosticHint" },
    SnacksNotifierBorderDebug = {
      fg = c.base.accent2,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },

    -- Notifier: Error
    SnacksNotifierError = {
      fg = c.base.accent1,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },
    SnacksNotifierIconError = {
      fg = c.base.accent1,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },
    SnacksNotifierTitleError = {
      fg = c.base.accent1,
      bg = isBackgroundClear and transparent_bg or c.base.yellow,
      bold = true,
      italic = true,
    },
    SnacksNotifierFooterError = { link = "DiagnosticError" },
    SnacksNotifierBorderError = {
      fg = c.base.accent1,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },

    -- Notifier: Trace
    SnacksNotifierTrace = {
      fg = common_fg,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },
    SnacksNotifierIconTrace = {
      fg = common_fg,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },
    SnacksNotifierTitleTrace = {
      fg = common_fg,
      bg = isBackgroundClear and transparent_bg or c.base.yellow,
      bold = true,
      italic = true,
    },
    SnacksNotifierFooterTrace = { link = "DiagnosticHint" },
    SnacksNotifierBorderTrace = {
      fg = common_fg,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },

    -- Dashboard
    SnacksDashboardNormal = {
      fg = common_fg,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
    },
    SnacksDashboardDesc = {
      fg = c.base.accent4,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
    },
    SnacksDashboardFile = {
      fg = c.base.accent5,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
    },
    SnacksDashboardDir = { link = "NonText" },
    SnacksDashboardFooter = {
      fg = c.base.accent3,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
      italic = true,
    },
    SnacksDashboardHeader = {
      fg = c.base.accent4,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
      bold = true,
    },
    SnacksDashboardIcon = {
      fg = c.base.accent1,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
      bold = true,
    },
    SnacksDashboardKey = {
      fg = c.base.accent2,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
    },
    SnacksDashboardTerminal = { link = "SnacksDashboardNormal" },
    SnacksDashboardSpecial = { link = "Special" },
    SnacksDashboardTitle = {
      fg = c.base.yellow,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
      bold = true,
    },

    -- Indentation
    SnacksIndent = {
      fg = c.base.dimmed4,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
    },
    SnacksIndentScope = {
      fg = c.base.dimmed2,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
    },

    -- Picker
    SnacksPicker = {
      fg = common_fg,
      bg = isBackgroundClear and transparent_bg or c.editorHoverWidget.background,
    },
    SnacksPickerBorder = {
      fg = isBackgroundClear and c.tab.unfocusedActiveBorder or c.editorHoverWidget.background,
      bg = isBackgroundClear and transparent_bg or c.editorHoverWidget.background,
    },
    SnacksPickerInputBorder = {
      fg = isBackgroundClear and transparent_bg_border or notifier_bg,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },
    SnacksPickerSelected = isBackgroundClear and {
      fg = c.base.accent1,
      bg = hp.blend(c.editorSuggestWidget.selectedBackground, 0.3, transparent_bg),
      bold = true,
    } or {
      fg = common_fg,
      bg = hp.blend(c.base.accent1, 0.2, dashboard_bg),
      bold = true,
    },
    SnacksPickerMatch = {
      fg = c.base.accent4,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
      bold = true,
    },
  }
end

return M
