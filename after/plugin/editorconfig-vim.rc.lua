local status, editorconfig = pcall(require, "editorconfig-vim")
if (not status) then return end

editorconfig.setup()
