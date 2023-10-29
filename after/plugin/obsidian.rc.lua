local status, obsidian = pcall(require, "obsidian")
if (not status) then return end

obsidian.setup {
  dir = '/Users/vmeca/OneDrive/Documentos/cerebro_digital/'
}
