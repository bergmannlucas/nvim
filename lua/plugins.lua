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
    { "nvim-neotest/nvim-nio" }
}