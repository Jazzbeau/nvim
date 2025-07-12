return {
    'akinsho/bufferline.nvim',
    dependencies = {
        'moll/vim-bbye',
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require('bufferline').setup {
            options = {
                mode = 'buffers',
                themable = true,
                numbers = 'none',
                close_command = 'bdelete! %d',
                path_components = 1,
                max_name_length = 30,
                max_prefix_length = 30,
                tab_size = 21,
                diagnostics = false,
                diagnostics_update_in_insert = false,
                persist_buffer_sort = true,
                enforce_regular_tabs = true,
                always_show_bufferline = true,
                show_tab_indicators = true,
                show_buffer_icons = true,
                show_buffer_close_icons = true,
                color_icons = true,
                minimum_padding = 1,
                maximum_padding = 5,
                maximum_length = 15,
                separator_style = { '', '' },
                buffer_close_icon = '',
                close_icon = '',
                icon_pinned = '󰐃',
                modified_icon = '󰪯',
                left_trunc_marker = '',
                right_trunc_marker = '',
                indicator = {
                    style = 'none',
                },
            },
            highlights = {
                buffer_selected = {
                    bold = true,
                    italic = false
                }
            }
        }
    end,
    }
