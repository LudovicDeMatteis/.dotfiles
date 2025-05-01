-- [
-- snip_env + autosnippets
-- ]
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local autosnippet = ls.extend_decorator.apply(s, { snippetType = "autosnippet" })

local tex = {}

-- math / not math zones

function tex.in_math()
	return vim.api.nvim_eval("vimtex#syntax#in_mathzone()") == 1
end
-- comment detection
function tex.in_comment()
	return vim.fn["vimtex#syntax#in_comment"]() == 1
end
-- document class
function tex.in_beamer()
	return vim.b.vimtex["documentclass"] == "beamer"
end
-- general env function
local function env(name)
	local is_inside = vim.fn["vimtex#env#is_inside"](name)
	return (is_inside[1] > 0 and is_inside[2] > 0)
end
function tex.in_preamble()
	return not env("document")
end
function tex.in_text()
	return env("document") and not tex.in_math()
end
function tex.in_tikz()
	return env("tikzpicture")
end
function tex.in_bullets()
	return env("itemize") or env("enumerate")
end
function tex.in_align()
	return env("align") or env("align*") or env("aligned")
end

local line_begin = require("luasnip.extras.conditions.expand").line_begin

return {
	-- Math modes
	autosnippet(
		{ trig = "mm", name = "$..$", dscr = "inline math" },
		fmta(
			[[
    $<>$<>
    ]],
			{ i(1), i(0) }
		)
	),

	autosnippet(
		{ trig = "dm", name = "\\[...\\]", dscr = "display math" },
		fmta(
			[[ 
    $$ 
    <>
    $$
    <>]],
			{ i(1), i(0) }
		),
		{ condition = line_begin, show_condition = line_begin }
	),

	autosnippet(
		{ trig = "ali", name = "align(|*|ed)", dscr = "align math" },
		fmta(
			[[ 
			\begin{align<>}
				<>
			\end{align<>}
			]],
			{ i(1, "*"), i(2), rep(1) }
		),
		{ condition = line_begin, show_condition = line_begin }
	),

	autosnippet(
		{ trig = "==", name = "&= align", dscr = "&= align" },
		fmta(
			[[
			&<> <> \\
			]],
			{ i(1, "="), i(2) }
		),
		{ condition = tex.in_align, show_condition = tex.in_align }
	),

	autosnippet(
		{ trig = "equ", dscr = "equation math" },
		fmta(
			[[
			\begin{equation}
				\label{equ:<>}
				<>
			\end{equation}
			]],
			{ i(1, "no_label"), i(2) }
		),
		{ condition = line_begin, show_condition = line_begin }
	),

	autosnippet(
		{ trig = "eqn", dscr = "equation math no number" },
		fmta(
			[[
			\begin{equation*}
				<>
			\end{equation*}
			]],
			{ i(1) }
		),
		{ condition = line_begin, show_condition = line_begin }
	),

	-- Matrices and Cases
	s(
		{
			trig = "pmat",
			name = "pmatrix",
			dscr = "matrices",
		},
		fmta(
			[[
			\begin{pmatrix}
				<>
			\end{pmatrix}
			]],
			{
				i(1),
			}
		),
		{ condition = tex.in_math, show_condition = tex.in_math }
	),
	s(
		{
			trig = "bmat",
			name = "bmatrix",
			dscr = "matrices",
		},
		fmta(
			[[
			\begin{bmatrix}
				<>
			\end{bmatrix}
			]],
			{
				i(1),
			}
		),
		{ condition = tex.in_math, show_condition = tex.in_math }
	),

	autosnippet(
		{ trig = "cases", name = "cases", dscr = "cases" },
		fmta(
			[[
			\begin{cases}
				<>
			\end{cases}
			]],
			{ i(1) }
		),
		{ condition = tex.in_math, show_condition = tex.in_math }
	),
}
