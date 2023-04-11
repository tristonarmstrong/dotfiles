{ lib, ... }:
{
  programs.starship = {
    enable = true;
    settings = {
      format = lib.strings.concatStrings [
        "$nix_shell"
        "$os"
        "$directory"
        "$git_branch"
        "$git_status"
        "[](fg:bright-cyan bg:cyan)"
        "$python"
        "$nodejs"
        "$lua"
        "$rust"
        "$java"
        "$c"
        "[](fg:cyan bg:green)"
        "$time"
        "[](fg:green bg:none)"
        "$status"
        "$cmd_duration\n"
        "$character"
      ];
      status = {
        symbol = "✗";
        not_found_symbol = "󰍉 Not Found";
        not_executable_symbol = " Can't Execute E";
        sigint_symbol = "󰂭 ";
        signal_symbol = "󱑽 ";
        success_symbol = "";
        format = "[ $symbol](fg:red)";
        map_symbol = true;
        disabled = false;
      };
      cmd_duration = {
        min_time = 0;
        format = "[ $duration](bold yellow)";
      };
      character = {
        success_symbol = "[╰](bold green)";
        error_symbol = "[╰](bold red)";
      };
      nix_shell = {
        disabled = false;
        format = "[  ](fg:bright-blue bg:bright-white)[](fg:bright-white bg:blue)";
      };
      os = {
        style = "fg:bright-white bg:blue";
        disabled = false;
        format = "[ $symbol]($style)[](fg:blue bg:bright-blue)";
      };
      os.symbols = {
        Arch = " ";
        Debian = " ";
        EndeavourOS = " ";
        Fedora = " ";
        NixOS = " ";
        openSUSE = " ";
        SUSE = " ";
      };
      directory = {
        format = "[ $path](bg:bright-blue fg:black)[](bg:bright-cyan fg:bright-blue)";
        truncation_length = 3;
        truncation_symbol = "…/";
      };
      directory.substitutions = {
        "Documents" = " ";
        "Downloads" = " ";
        "Music" = " ";
        "Pictures" = " ";
      };
      git_branch = {
        symbol = "";
        format = "[ $symbol $branch ](fg:black bg:bright-cyan)";
      };
      git_status = {
        format = "[($all_status$ahead_behind )](fg:black bg:bright-cyan)";
      };
      python = {
        symbol = "";
        format = "[ $symbol ($version) ](fg:black bg:cyan)";
      };
      nodejs = {
        symbol = " ";
        format = "[ $symbol ($version) ](fg:black bg:cyan)";
      };
      lua = {
        symbol = "󰢱";
        format = "[ $symbol ($version) ](fg:black bg:cyan)";
      };
      rust = {
        symbol = "";
        format = "[ $symbol ($version) ](fg:black bg:cyan)";
      };
      java = {
        symbol = "";
        format = "[ $symbol ($version) ](fg:black bg:cyan)";
      };
      c = {
        symbol = "";
        format = "[ $symbol ($version) ](fg:black bg:cyan)";
      };
      time = {
        disabled = false;
        time_format = "%R";
        format = "[  $time ](fg:black bg:green)";
      };
    };
  };
}
