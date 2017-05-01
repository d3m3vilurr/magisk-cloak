MODID=magiskcloak
AUTOMOUNT=true
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true

print_modname() {
  ui_print "*******************************"
  ui_print "          MagiskCloak          "
  ui_print "*******************************"
}

REPLACE="
"

set_permissions() {
  set_perm_recursive  $MODPATH  0  0  0755  0644
}
