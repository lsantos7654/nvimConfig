require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'nightfly', -- or choose from available themes
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
  },
  sections = {
    lualine_c = {
      {'filename', file_status = true, path = 1 } -- 0 = just filename, 1 = relative path, 2 = absolute path
    },
    -- Configure other sections as needed
  },
  -- You can also configure inactive_sections, tabline, extensions
}

