require'nvim-web-devicons'.setup {
    -- your personnal icons can go here (to override)
    --  -- you can specify color or cterm_color instead of specifying both of them
    --   -- DevIcon will be appended to `name`
    override = {
        zsh = {
            icon = "",
            color = "#428850",
            cterm_color = "65",
            name = "Zsh"
        }
    };
    -- globally enable different highlight colors per icon (default to true)
    --  -- if set to false all icons will have the default icon's color
    color_icons = true;
    default = true;
    strict = true;
    override_by_filename = {
        [".gitignore"] = {
            icon = "",
            color = "#f1502f",
            name = "Gitignore"
        }
    };
    -- same as `override` but specifically for overrides by extension
    --  -- takes effect when `strict` is true
    override_by_extension = {
        ["log"] = {
            icon = "",
            color = "#81e043",
            name = "Log"
        }
    };
}
