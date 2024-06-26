require('catppuccin').setup({
  term_colors = true,
  styles = {
    functions = { 'italic' },
    keywords = { 'bold' },
    types = { 'bold' },
  },
  default_integrations = false,
  integrations = {
    treesitter = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { 'italic' },
        hints = { 'italic' },
        warnings = { 'italic' },
        information = { 'italic' },
      },
      underlines = {
        errors = { 'undercurl' },
        hints = { 'undercurl' },
        warnings = { 'undercurl' },
        information = { 'undercurl' },
      },
      inlay_hints = { background = false },
    },

    beacon = true,
    cmp = true,
    dropbar = { enabled = true, color_mode = true },
    gitsigns = true,
    headlines = true,
    hop = true,
    markdown = true,
    mini = { enabled = true },
    semantic_tokens = true,
    telescope = { enabled = true, style = 'nvchad' },
  },
  highlight_overrides = {
    all = function(cp)
      return {
        CmpGhostText = { link = 'Comment' },
        VisualWhitespace = { bg = cp.surface1, fg = cp.surface2 },
        FzfLuaBorder = { link = 'WinSeparator' },
        GitSignsChange = { fg = cp.peach },
        GitSignsCurrentLineBlame = { link = 'Comment' },
        Beacon = { bg = cp.text },
      }
    end,
  },
})
