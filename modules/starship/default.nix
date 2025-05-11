{...}: {
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      command_timeout = 500;
      continuation_prompt = "[∙](bright-black) ";
      format = ''
        [$directory](bold cyan)$git_branch$nodejs$python$nix_shell$cmd_duration
        [  ](bold blue)
      '';
      right_format = "";
      scan_timeout = 30;

      nix_shell = {
        impure_msg = "[impure shell](bold red)";
        pure_msg = "[pure shell](bold green)";
        unknown_msg = "[unknown shell](bold yellow)";
        format = "in [󱄅 $state](bold blue) ";
      };

      directory = {
        home_symbol = " home/adxthya";
      };
    };
  };
}
