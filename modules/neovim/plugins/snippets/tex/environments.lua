local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
	s(
		{ trig = "eq", dscr = "A LaTeX equation environment" },
		fmta( -- The snippet code actually looks like the equation environment it produces.
			[[
			\begin{equation}
				\label{equ:<>}
				\begin{aligned}
					<>
				\end{aligned}
			\end{equation}
			]],
			-- The insert node is placed in the <> angle brackets
			{ i(1, "not_label"), i(2) }
		)
	),
	s(
		{ trig = "env", snippetType = "autosnippet" },
		fmta(
			[[
			\begin{<>}
				<>
			\end{<>}
			]],
			{
				i(1),
				i(2),
				rep(1), -- this node repeats insert node i(1)
			}
		)
	),
}
