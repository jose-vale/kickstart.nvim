local harpoon = require 'harpoon'

-- REQUIRED
harpoon:setup {
  settings = {
    save_on_toggle = true,
    sync_on_ui_close = true,
  },
}
-- REQUIRED

vim.keymap.set('n', '<leader>a', function()
  harpoon:list():add()
end, { desc = 'Add to harpoon jump list' })
vim.keymap.set('n', '<leader>e', function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = 'Show harpoon jump list' })

vim.keymap.set('n', '<leader>1', function()
  harpoon:list():select(1)
end, { desc = 'Jump to first harpoon entry' })
vim.keymap.set('n', '<leader>2', function()
  harpoon:list():select(2)
end, { desc = 'Jump to second harpoon entry' })
vim.keymap.set('n', '<leader>3', function()
  harpoon:list():select(3)
end, { desc = 'Jump to third harpoon entry' })
vim.keymap.set('n', '<leader>4', function()
  harpoon:list():select(4)
end, { desc = 'Jump to fourth harpoon entry' })

return {}
