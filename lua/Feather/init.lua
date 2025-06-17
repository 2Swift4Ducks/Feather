-- Detect If Terminal Supports Truecolor
local function isTrueColor()
    return vim.env.COLORTERM == "truecolor" or vim.o.termguicolors
end



-- Create Feather Colorscheme Set
local M = {}



-- Assign Color Codes To Set
function M.setup()

    -- Vim Environment Setup
    vim.g.colors_name = "Feather"

    -- Color Codes
    if isTrueColor() then
        -- True Color Highlights
        vim.api.nvim_set_hl(0, "Normal", { fg = "#FFFFFF", bg = "#000000" })
        vim.api.nvim_set_hl(0, "Comment", { fg = "#6C7986" })
        vim.api.nvim_set_hl(0, "String", { fg = "#FC6A5D" })
        vim.api.nvim_set_hl(0, "Keyword", { fg = "#FC5FA3" })
        vim.api.nvim_set_hl(0, "PreProc", { fg = "#FD8F3F" })

    else
        -- 256x-Color Hightlights
        vim.api.nvim_set_hl(0, "Normal", { fg = 15, bg = 0 })

    end

end



-- Return Feather Colorscheme
return M