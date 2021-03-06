local pid = vim.fn.getpid()
local omnisharp_bin = "/home/iver/omnisharp/"

local config = {
  lsp = {
    servers = {
      omnisharp = {
        cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) },
        ---@diagnostic disable-next-line: unused-local
        on_attach = function(client)
          require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
        end
      }
    }
  },

  add_plugins = {
    'airblade/vim-gitgutter',
    {
      'lukas-reineke/indent-blankline.nvim',
      run = { require("indent_blankline").setup {} }
    },
    'mg979/vim-visual-multi'
  }
}

return config
