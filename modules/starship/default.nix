{pkgs,...}:{
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      command_timeout = 500;
      continuation_prompt = "[∙](bright-black) ";
      format = ''
        [░▒▓](#a3aed2)[  ](bg:#a3aed2 fg:#090c0c)[](bg:#769ff0 fg:#a3aed2)$directory[](fg:#769ff0 bg:#394260)$git_branch$git_status[](fg:#394260 bg:#212736) $python$nodejs$rust$golang$php[](fg:#212736 bg:#1d2230)$nix_shell[ ](fg:#1d2230)

        [ ](bold blue) [adxthya](bold fg:#A0DDFF) [@](bold red) [hope ](bold green)
      '';
      right_format = "";
      scan_timeout = 30;
      directory = {
        style = "fg:#F2FFE6 bold bg:#769ff0";
        format = "[ $path ]($style)";
        truncation_length = 3;
        truncation_symbol = "…/";
      };

      git_branch = {
        symbol = "";
        style = "bg:#394260";
        format = "[[ $symbol $branch ](fg:#769ff0 bg:#394260)]($style)";
      };

      git_status = {
      style = "bg:#394260";
      format = "[[($all_status$ahead_behind )](fg:#769ff0 bg:#394260)]($style)";
      };

      nodejs = {
        symbol = "";
        style = "bg:#212736";
        format = "[[ $symbol ($version) ](fg:#769ff0 bg:#212736)]($style)";
      };

      nix_shell = {
        format = "[[$symbol$state( ($name))](fg:#769ff0 bg:#212736)]($style)";
        disabled = false;
        impure_msg = "[impure](fg:#769ff0 bg:#212736)";
        pure_msg = "[pure](fg:#769ff0 bg:#212736)";
        style = "bg:#394260";
        symbol = "  ";
      };
    };
  };
}
