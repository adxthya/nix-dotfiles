{unstable, ...}: {
  programs.nvf = {
    enable = true;
    # your settings need to go into the settings attribute set
    # most settings are documented in the appendix
    settings = {
      vim = {
        options = {
          tabstop = 2;
          shiftwidth = 2;
        };

        comments = {
          comment-nvim.enable = true;
        };

        terminal = {
          toggleterm = {
            enable = true;
            lazygit.enable = true;
          };
        };

        viAlias = false;
        vimAlias = true;
        theme = {
          enable = true;
          name = "tokyonight";
          style = "night";
        };

        statusline.lualine = {
          enable = true;
          theme = "tokyonight";
        };

        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;
        treesitter.context.enable = true;

        filetree.nvimTree = {
          enable = true;
          openOnSetup = false;
        };

        visuals = {
          nvim-web-devicons.enable = true;
          indent-blankline.enable = true;
        };

        ui = {
          borders.enable = true;
          colorizer.enable = true;
        };

        lsp = {
          enable = true;
          formatOnSave = true;
          lspSignature.enable = true;
        };

        binds = {
          whichKey.enable = true;
          cheatsheet.enable = true;
        };

        snippets.luasnip.enable = true;

        git.enable = true;
        autopairs.nvim-autopairs.enable = true;
        diagnostics.nvim-lint.enable = true;
        formatter.conform-nvim.enable = true;
        languages = {
          enableFormat = true;
          enableTreesitter = true;
          enableExtraDiagnostics = true;
          nix.enable = true;
          html.enable = true;
          ts.enable = true;
          ts.format.type = "prettierd";
          css.enable = true;
          css.format.type = "prettierd";
          python = {
            enable = true;
            lsp.server = "pyright";
            format.type = "black-and-isort";
          };
          tailwind.enable = true;
          rust.enable = true;
          java.enable = true;
          svelte.enable = true;
          svelte.format.type = "biome";
        };
      };
    };
  };
}
