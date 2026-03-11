cat > ~/.config/nvim/lua/plugins/telescope.lua <<'EOF'
return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
}
EOF
cat > ~/.config/nvim/lua/plugins/nvim-treesitter.lua <<'EOF'
return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate'
}
EOF
cat > ~/.config/nvim/lua/plugins/jupytext.lua <<'EOF'
return {
  'goerz/jupytext.nvim',
  version = '0.2.0',
  opts = {
    jupytext = 'jupytext',
    format = "auto",
    update = true,
    sync_patterns = { '*.md', '*.py', '*.jl', '*.R', '*.Rmd', '*.qmd' },
    autosync = true,
    handle_url_schemes = true,
  },
}
EOF
cat > ~/.config/nvim/lua/plugins/codecompanion.lua <<'EOF'
return {
  "olimorris/codecompanion.nvim",
  version = "^19.0.0",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "ravitemer/mcphub.nvim",
  },
  config = function()
    local ollama_fn = function()
      return require("codecompanion.adapters").use("ollama", { schema = { model = { default = "qwen2.5-coder:3b-instruct-q4_K_M" } } })
    end
    require("codecompanion").setup {
      strategies = {
        chat = {
          adapter = "ollama_fn",
        },
        inline = {
          adapter = "ollama_fn",
          keymaps = {
            accept_change = {
              modes = { n = "ga", i = "<Tab>" },
              description = "Accept the suggested change",
            },
            reject_change = {
              modes = { n = "gr" },
              opts = { nowait = true },
              description = "Reject the suggested change",
            },
          },
        },
        cmd = {
          adapter = "ollama_fn",
        },
      },
    },
    vim.keymap.set("n", "<leader>kk", "<cmd>CodeCompanionChat<CR>", { desc = "Open Code Companion Chat" })
    vim.keymap.set("n", "<leader>ki", "<cmd>CodeCompanion<CR>", { desc = "Open Code Companion Inline" })
  end,
}
EOF
cat > ~/.config/nvim/lua/plugins/mcphub.lua <<'EOF'
return {
  "ravitemer/mcphub.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  build = "npm install -g mcp-hub@latest",  -- Installs `mcp-hub` node binary globally
  config = function()
    require("mcphub").setup()
  end
}
EOF
cat > ~/.config/nvim/lua/plugins/render-markdown.lua <<'EOF'
return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },            -- if you use the mini.nvim suite
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {},
  ft = { "markdown", "codecompanion" },
}
EOF
cat > ~/.config/nvim/lua/plugins/img-clip.lua <<'EOF'
return {
  "HakonHarnes/img-clip.nvim",
  event = "VeryLazy",
  opts = {
    filetypes = {
      codecompanion = {
        prompt_for_file_name = false,
        template = "[Image]($FILE_PATH)",
        use_absolute_path = true,
      },
    },
  },
  keys = {
    { "<leader>i", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
  },
}
EOF
cat > ~/.config/nvim/lua/plugins/nvim-lspconfig.lua <<'EOF'
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      "bash-language-server",
      "clangd",
      "cmake-language-server",
      "dockerfile-language-service",
      "gopls",
      "jdtls",
      "pyright",
      "superhtml",
    },
  },
  config = function(_, opts)
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    for _, server in ipairs(opts.servers) do
      vim.lsp.config(server, { capabilities = capabilities })
      vim.lsp.enable(server)
    end
  end
}
EOF
cat > ~/.config/nvim/lua/plugins/nvim-cmp.lua <<'EOF'
return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    -- "hrsh7th/cmp-vsnip", -- For vsnip users
    -- "hrsh7th/vim-vsnip", -- For vsnip users
    "L3MON4D3/LuaSnip", -- For luasnip users
    "saadparwaiz1/cmp_luasnip", -- For luasnip users
    -- "echasnovski/mini.snippets", -- For mini.snippets users
    -- "abeldekat/cmp-mini-snippets", -- For mini.snippets users
    -- "SirVer/ultisnips", -- For mini.ultisnips users
    -- "quangnguyen30192/cmp-nvim-ultisnips", -- For mini.ultisnips users
    -- "dcampos/nvim-snippy", -- For snippy users
    -- "dcampos/cmp-snippy", -- For snippy users
  },
  config = function()
    local cmp = require("cmp")

    cmp.setup({
       snippet = {
         -- REQUIRED - you must specify a snippet engine
         expand = function(args)
           -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
           require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
           -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
           -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
           -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)

           -- For `mini.snippets` users:
           -- local insert = MiniSnippets.config.expand.insert or MiniSnippets.default_insert
           -- insert({ body = args.body }) -- Insert at cursor
           -- cmp.resubscribe({ "TextChangedI", "TextChangedP" })
           -- require("cmp.config").set_onetime({ sources = {} })
         end,
       },
       window = {
         -- completion = cmp.config.window.bordered(),
         -- documentation = cmp.config.window.bordered(),
       },
       experimental = {
         ghost_text = true
       },
       mapping = cmp.mapping.preset.insert({
         ['<C-b>'] = cmp.mapping.scroll_docs(-4),
         ['<C-f>'] = cmp.mapping.scroll_docs(4),
         ['<C-Space>'] = cmp.mapping.complete(),
         ['<C-e>'] = cmp.mapping.abort(),
         ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
       }),
       sources = cmp.config.sources({
         { name = 'codecompanion' },
         { name = 'nvim_lsp' },
         -- { name = 'vsnip' }, -- For vsnip users.
         { name = 'luasnip' }, -- For luasnip users.
         -- { name = 'ultisnips' }, -- For ultisnips users.
         -- { name = 'snippy' }, -- For snippy users.
       }, {
         { name = 'buffer' },
       }),
       completion = {
         autocomplete = { require("cmp").TriggerEvent.TextChanged },
       },
     })

     -- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
     -- Set configuration for specific filetype.
     --[[ cmp.setup.filetype('gitcommit', {
       sources = cmp.config.sources({
         { name = 'git' },
       }, {
         { name = 'buffer' },
       })
    })
    require("cmp_git").setup() ]]--

     -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
     cmp.setup.cmdline({ '/', '?' }, {
       mapping = cmp.mapping.preset.cmdline(),
       sources = {
         { name = 'buffer' }
       }
     })
   end
}
EOF
