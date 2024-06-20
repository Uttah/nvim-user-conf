return {
  colorscheme = "tokyonight",
  polish = function()
    -- Get access to the lsp module and its settings
    local lsp_utils = require('astronvim.utils.lsp')

    -- Redifine formatting settings
    lsp_utils.formatting = {
      format_on_save = {
        enabled = true, -- true or false
        ignore_filetypes = {
          "yaml",
          "dockerfile",
        },
      },
      disabled = lsp_utils.formatting.disabled or {},
    }
  end,
}
