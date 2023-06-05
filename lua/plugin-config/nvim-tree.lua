
require'nvim-web-devicons'.setup {
 
 -- globally enable different highlight colors per icon (default to true)
 -- if set to false all icons will have the default icon's color
 color_icons = true;
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
 -- globally enable "strict" selection of icons - icon will be looked up in
 -- different tables, first by filename, and if not found by extension; this
 -- prevents cases when file doesn't have any extension but still gets some icon
 -- because its name happened to match some extension (default to false)
 strict = true;
 -- same as `override` but specifically for overrides by filename
 -- takes effect when `strict` is true
 override_by_extension = {
  ["sh"] = {
    icon = " ",
    color = "#81e043",
    name = "shell"
  }
 };
}
require'nvim-tree'.setup {
    sync_root_with_cwd = true,
    view= {
        width = 20
    },
    update_focused_file = {
        enable = true,
        update_root = true,
    },
    modified = {
        enable = true,
    },
    renderer = {
        highlight_modified = "icon",
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
                modified = true,
          },
        }
    },

    reload_on_bufenter = true
}
