return {
    "debugloop/telescope-undo.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
    { "nvim-telescope/telescope-live-grep-args.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim",    build = "make" },
    {
        "aaronhallaert/advanced-git-search.nvim",
        dependencies = {
          "nvim-telescope/telescope.nvim",
          "tpope/vim-fugitive",
          "tpope/vim-rhubarb",
        },
    },
    {
        "exosyphon/telescope-color-picker.nvim",
        config = function()
          vim.keymap.set("n", "<leader>uC", "<cmd>Telescope colors<CR>", { desc = "Telescope Color Picker" })
        end,
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
          routes = {
            {
              filter = { event = "notify", find = "No information available" },
              opts = { skip = true },
            },
          },
          presets = {
            lsp_doc_border = true,
          },
        },
        dependencies = {
          "MunifTanjim/nui.nvim",
          "rcarriga/nvim-notify",
        },
    },
    { "nvim-neotest/nvim-nio" }
}