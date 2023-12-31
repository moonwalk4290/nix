{
  config,
  pkgs,
  ...
}:
 {
  fonts = {
    enableDefaultFonts = false;

    fontconfig = {
      enable = true;

      defaultFonts = {
        monospace = [
          "Iosevka Term"
          "Iosevka Term Nerd Font Complete Mono"
          "Iosevka Nerd Font"
          "Noto Color Emoji"
        ];
        sansSerif = ["Lexend" "Noto Color Emoji"];
        serif = ["Noto Serif" "Noto Color Emoji"];
        emoji = ["Noto Color Emoji"];
      };
    };

    fontDir = {
      enable = true;
      decompressFonts = true;
    };

    fonts = with pkgs; [
      material-icons
      material-design-icons
      roboto
      work-sans
      comic-neue
      source-sans
      twemoji-color-font
      comfortaa
      inter
      lato
      lexend
      dejavu_fonts
      iosevka-bin
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      jetbrains-mono
      emacs-all-the-icons-fonts

      (nerdfonts.override {fonts = ["Iosevka" "JetBrainsMono"];})
    ];
  };
}