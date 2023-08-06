-- install without yarn or npm
require('MarkdownPreview').setup({
    function()
        vim.g.mkdp_filetypes = {
            "markdown",
            "mermaid",
            "uml"
        }
    end
})
