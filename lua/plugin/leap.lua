return {
    'https://codeberg.org/andyg/leap.nvim',
    event = "VeryLazy",
    config = function()
        local leap = require('leap')
        local leap_user = require('leap.user')
        -- leap.add_default_mappings()
        leap.opts.safe_labels = {}
        leap_user.set_repeat_keys('<c-y>', '<backspace>')
    end
}
