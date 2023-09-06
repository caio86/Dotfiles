local wk = require("which-key")

wk.register({
-- Register Git prefix
    g = {
        name = "+git",
        f = { "Find Git Files" },
        s = { "Git Status" }
    },
-- Register Files prefix
    f = {
        name = "+Find",
        f = { "Find Files" },
        g = { "Grep Find Files" }
    },
    c = {
        name = "+Code",
        l = { "Lazy" },
        m = { "Mason" }
    },
    e = {
        name = "+Editor",
        x = "Explorer"
    },
}, { prefix = "<leader>" })

