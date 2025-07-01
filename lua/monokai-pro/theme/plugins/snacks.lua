local M = {}

--- @param c Colorscheme The color palette
--- @param config Config
--- @param hp Helper
function M.get(c, config, hp)
  local isBackgroundClear = vim.tbl_contains(config.background_clear, "snacks")
  local transparent_bg = c.editor.background
  local transparent_bg_border = c.base.dimmed2
  local common_fg = hp.lighten(c.sideBar.foreground, 30)
  local notifier_bg = hp.blend(c.base.dimmed5, 0.2, c.editor.background)
  local dashboard_bg = hp.blend(c.base.dimmed5, 0.15, c.editor.background)
  local picker_bg = hp.blend(c.base.dimmed5, 0.25, c.editor.background)

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
      bg = isBackgroundClear and transparent_bg or hp.blend(c.base.yellow, 0.1, c.editor.background),
      bold = true,
    },
    SnacksWinBarNC = {
      fg = c.base.dimmed3,
      bg = isBackgroundClear and transparent_bg or hp.blend(c.base.dimmed5, 0.1, c.editor.background),
    },
    SnacksBackdrop = {
      fg = c.base.dark2,
      bg = isBackgroundClear and transparent_bg or c.base.dimmed5,
    },

    -- Notifier: Info
    SnacksNotifierInfo = {
      fg = c.base.cyan,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },
    SnacksNotifierIconInfo = {
      fg = c.base.cyan,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
      bold = true,
    },
    SnacksNotifierTitleInfo = {
      fg = c.base.cyan,
      bg = isBackgroundClear and transparent_bg or c.base.yellow,
      bold = true,
      italic = true,
    },
    SnacksNotifierFooterInfo = { link = "DiagnosticInfo" },
    SnacksNotifierBorderInfo = {
      fg = c.base.cyan,
      bg = isBackgroundClear and transparent_bg or transparent_bg_border,
    },

    -- Notifier: Warn
    SnacksNotifierWarn = {
      fg = c.base.yellow,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },
    SnacksNotifierIconWarn = {
      fg = c.base.yellow,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
      bold = true,
    },
    SnacksNotifierTitleWarn = {
      fg = c.base.yellow,
      bg = isBackgroundClear and transparent_bg or c.base.yellow,
      bold = true,
      italic = true,
    },
    SnacksNotifierFooterWarn = { link = "DiagnosticWarn" },
    SnacksNotifierBorderWarn = {
      fg = c.base.yellow,
      bg = isBackgroundClear and transparent_bg or transparent_bg_border,
    },

    -- Notifier: Debug
    SnacksNotifierDebug = {
      fg = c.base.blue,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },
    SnacksNotifierIconDebug = {
      fg = c.base.blue,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
      bold = true,
    },
    SnacksNotifierTitleDebug = {
      fg = c.base.blue,
      bg = isBackgroundClear and transparent_bg or c.base.yellow,
      bold = true,
      italic = true,
    },
    SnacksNotifierFooterDebug = { link = "DiagnosticHint" },
    SnacksNotifierBorderDebug = {
      fg = c.base.blue,
      bg = isBackgroundClear and transparent_bg or transparent_bg_border,
    },

    -- Notifier: Error
    SnacksNotifierError = {
      fg = c.base.red,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },
    SnacksNotifierIconError = {
      fg = c.base.red,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
      bold = true,
    },
    SnacksNotifierTitleError = {
      fg = c.base.red,
      bg = isBackgroundClear and transparent_bg or c.base.yellow,
      bold = true,
      italic = true,
    },
    SnacksNotifierFooterError = { link = "DiagnosticError" },
    SnacksNotifierBorderError = {
      fg = c.base.red,
      bg = isBackgroundClear and transparent_bg or transparent_bg_border,
    },

    -- Notifier: Trace
    SnacksNotifierTrace = {
      fg = c.base.dimmed1,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
    },
    SnacksNotifierIconTrace = {
      fg = c.base.dimmed1,
      bg = isBackgroundClear and transparent_bg or notifier_bg,
      bold = true,
    },
    SnacksNotifierTitleTrace = {
      fg = c.base.dimmed1,
      bg = isBackgroundClear and transparent_bg or c.base.yellow,
      bold = true,
      italic = true,
    },
    SnacksNotifierFooterTrace = { link = "DiagnosticHint" },
    SnacksNotifierBorderTrace = {
      fg42 = c.base.dimmed1,
      bg = isBackgroundClear and transparent_bg or transparent_bg_border,
    },

    -- Dashboard
    SnacksDashboardNormal = {
      fg = common_fg,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
    },
    SnacksDashboardDesc = {
      fg = c.base.cyan,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
    },
    SnacksDashboardFile = {
      fg = c.base.green,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
    },
    SnacksDashboardDir = {
      fg = c.base.dimmed4,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
    },
    SnacksDashboardFooter = {
      fg = c.base.magenta,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
      italic = true,
    },
    SnacksDashboardHeader = {
      fg = c.base.cyan,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
      bold = true,
    },
    SnacksDashboardIcon = {
      fg = c.base.red,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
      bold = true,
    },
    SnacksDashboardKey = {
      fg = c.base.blue,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
      bold = true,
    },
    SnacksDashboardTerminal = { link = "SnacksDashboardNormal" },
    SnacksDashboardSpecial = {
      fg = c.base.magenta,
      bg = isBackgroundClear and transparent_bg or dashboard_bg,
    },
    SnacksDashboardTitle = {
      fg = c.base.yellow,
      bg = isBackgroundClear and transparent_bg or c.base.dark2,
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
      bg = isBackgroundClear and transparent_bg or picker_bg,
    },
    SnacksPickerBorder = {
      fg = isBackgroundClear and c.tab.unfocusedActiveBorder or c.base.dimmed3,
      bg = isBackgroundClear and transparent_bg or picker_bg,
    },
    SnacksPickerInputBorder = {
      fg = isBackgroundClear and transparent_bg_border or notifier_bg,
      bg = isBackgroundClear and transparent_bg or picker_bg,
    },
    SnacksPickerSelected = isBackgroundClear and {
      fg = c.base.cyan,
      bg = hp.blend(c.editorSuggestWidget.selectedBackground, 0.3, transparent_bg),
      bold = true,
    } or {
      fg = common_fg,
      bg = hp.blend(c.base.cyan, 0.2, picker_bg),
      bold = true,
    },
    SnacksPickerMatch = {
      fg = c.base.blue,
      bg = isBackgroundClear and transparent_bg or picker_bg,
      bold = true,
    },
  }
end

return M
