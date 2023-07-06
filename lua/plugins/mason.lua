return {
    "williamboman/mason.nvim",
    dependencies = {
        { "williamboman/mason-lspconfig.nvim" }
    },
    cmd = { "Mason", "LspInstall", "MasonInstall", "MasonInstallAll", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
    opts = function()
        return {}
    end,
    config = function(_, opts)
        require("mason").setup(opts)
        require("mason-lspconfig").setup()
    end,
}
