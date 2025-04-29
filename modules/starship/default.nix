{...}: {
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      command_timeout = 500;
      continuation_prompt = "[∙](bright-black) ";
      format = ''
        [┌─>](bold green) [](bold white) [$directory](bold cyan)$git_branch$nodejs$python$nix_shell
        [│](bold green)
        [└─>](bold green) [ ](bold blue) [adxthya](bold fg:#A0DDFF) [@](bold red) [hope ](bold green)
      '';
      right_format = "";
      scan_timeout = 30;

      nix_shell = {
        impure_msg = "[impure shell](bold red)";
        pure_msg = "[pure shell](bold green)";
        unknown_msg = "[unknown shell](bold yellow)";
        format = "in [󱄅 $state](bold blue) ";
      };
    };
  };
}
