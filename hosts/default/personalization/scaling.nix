{ pkgs, ... }: let
  # this is copied from /home/{user}/.config/monitors.xml,
  # any desirable changes should be reflected here
  #? i could just copy the file, but i want to avoid referencing
  #? a specific user's config from a system-wide one
  #* this is for the purpose of having fractional scaling in gdm itself
  monitors-xml = pkgs.writeText "monitors.xml" ''
    <monitors version="2">
      <configuration>
        <logicalmonitor>
          <x>0</x>
          <y>0</y>
          <scale>1.25</scale>
          <primary>yes</primary>
          <monitor>
            <monitorspec>
              <connector>eDP-1</connector>
              <vendor>AUO</vendor>
              <product>0x403d</product>
              <serial>0x00000000</serial>
            </monitorspec>
            <mode>
              <width>1920</width>
              <height>1080</height>
              <rate>60.049</rate>
            </mode>
          </monitor>
        </logicalmonitor>
      </configuration>
    </monitors>
  '';
in {
  systemd.tmpfiles.rules = [
    "L+ /run/gdm/.config/monitors.xml - - - - ${monitors-xml}"
  ];
}
