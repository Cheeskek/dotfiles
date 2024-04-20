require("core")
require("mappings")

require("utils").init_lazy()
require("lazy").setup("plugins", {
    change_detection = {
        enabled = false,
        notify = false,
    }
})

require("debugger")

require('theme')

require("lsp")
require("autocomp")
require('langmapper').automapping({ global = true, buffer = true })
