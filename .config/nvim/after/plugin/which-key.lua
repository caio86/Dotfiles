local wk = require("which-key")

-- Register Git prefix
wk.register({
    g = {
        name = "+git",
        f = { "Find Git Files" },
        s = { "Git Status" }
    },
}, { prefix = "<leader>" })

-- Register Files prefix
wk.register({
    f = {
        name = "+Find",
        f = { "Find Files" },
        g = { "Grep Find Files" }
    }
}, { prefix = "<leader>" })

wk.register({
    c = {
        name = "+Code",
        l = { "Lazy" },
        m = { "Mason" }
    }
}, { prefix = "<leader>" })
