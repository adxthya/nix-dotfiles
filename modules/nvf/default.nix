{...}: {
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
          noice.enable = true;
          colorizer.enable = true;
          illuminate.enable = true;
        };

        lsp = {
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
          enableLSP = true;
          enableTreesitter = true;
          enableExtraDiagnostics = true;
          nix.enable = true;
          html.enable = true;
          ts.enable = true;
          css.enable = true;
          python.enable = true;
          python.lsp.server = "pyright";
          python.format.type = "black-and-isort";
          tailwind.enable = true;
        };
      };
    };
  };
}
