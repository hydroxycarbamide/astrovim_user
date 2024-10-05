if not vim.g.neovide then
  return {} -- do nothing if not in a Neovide session
end

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = { -- configure vim.opt options
        -- configure font
        guifont = "FiraCode Nerd Font Mono:h11",
        -- line spacing
        linespace = 0,
      },
      g = { -- configure vim.g variables
        -- configure scaling
        neovide_scale_factor = 1.0,

        -- configure padding
        neovide_padding_top = 20,
        neovide_padding_bottom = 20,
        neovide_padding_right = 20,
        neovide_padding_left = 20,

        -- scroll
        neovide_scroll_animation_length = 0.1,

        -- vfx
        neovide_cursor_vfx_mode = "pixiedust",
      },
    },
  },
}
