return {
    {
        "L3MON4D3/LuaSnip",
        event = "InsertEnter",
        dependencies = {
            "rafamadriz/friendly-snippets",
        },
        config = function()
            local ls = require("luasnip")

            ls.config.set_config({
                history = true,
                updateevents = "TextChanged,TextChangedI",
            })

            -- Keymaps
            vim.keymap.set({ "i", "s" }, "<C-k>", function()
                if ls.expand_or_jumpable() then
                    ls.expand_or_jump()
                end
            end, { silent = true })

            vim.keymap.set({ "i", "s" }, "<C-j>", function()
                if ls.jumpable(-1) then
                    ls.jump(-1)
                end
            end, { silent = true })

            -- Snippets
            local s = ls.snippet
            local t = ls.text_node
            local i = ls.insert_node
            local rep = require("luasnip.extras").rep
            local f = ls.function_node

            ls.add_snippets("javascript", {
                s("gid", {
                    t('let '), i(1),
                    t(' = document.getElementById("'), i(2),
                    t('")'),
                }),
                s("gcl", {
                    t('let '), i(1),
                    t(' = document.getElementsByClassName("'), i(2),
                    t('")'),
                }),
                s("cl", {
                    t('console.log('),
                    i(1),
                    t(')'),
                }),
            })
            ls.add_snippets("typescript", {
                s("gid", {
                    t('let '), i(1),
                    t(' = document.getElementById("'), i(2),
                    t('")'),
                }),
                s("gcl", {
                    t('let '), i(1),
                    t(' = document.getElementsByClassName("'), i(2),
                    t('")'),
                }),
                s("cl", {
                    t('console.log('),
                    i(1),
                    t(')'),
                }),
            })
            ls.add_snippets("html", {
                s("sso", {
                    t('<script src="'), i(1),
                    t('"></script> ') }),
            })
            ls.add_snippets("dart", {
                -- BLOC snippet
                s("cbloc", {
                    t("import 'package:bloc/bloc.dart';"),
                    t({ "", "import 'package:equatable/equatable.dart';", "" }),
                    t("part '"), f(function(args) return args[1][1]:lower() end, { 1 }), t("_event.dart';"),
                    t({ "", "part '" }), f(function(args) return args[1][1]:lower() end, { 1 }), t({ "_state.dart';", "" }),
                    t({ "", "class " }), i(1, "ClassName"),
                    t("Bloc extends Bloc<"), rep(1), t("Event, "), rep(1), t({ "State> {", "" }),
                    t("  "), rep(1), t("Bloc() : super("), rep(1), t({ "Initial()) {", "" }),
                    t("    on<"), rep(1), t({ "Event>((event, emit) {", "" }),
                    t("      // TODO: implement event handler"),
                    t({ "", "    });", "  }", "}" }),
                }),

                -- EVENT snippet
                s("cevent", {
                    t("part of '"), f(function(args) return args[1][1]:lower() end, { 1 }), t({ "_bloc.dart';", "" }),
                    t("sealed class "), i(1, "ClassName"), t({ "Event extends Equatable {", "" }),
                    t("  const "), rep(1), t({ "Event();", "", "  @override" }),
                    t({ "", "  List<Object> get props => [];", "}", "" }),
                }),

                -- STATE snippet
                s("cstate", {
                    t("part of '"), f(function(args) return args[1][1]:lower() end, { 1 }), t({ "_bloc.dart';", "" }),
                    t("sealed class "), i(1, "ClassName"), t({ "State extends Equatable {", "" }),
                    t("  const "), rep(1), t({ "State();", "", "  @override" }),
                    t({ "", "  List<Object> get props => [];", "}", "" }),
                    t("final class "), rep(1), t("Initial extends "), rep(1), t({ "State {}", "" }),
                    t("final class "), rep(1), t("Error extends "), rep(1), t({ "State {}", "" }),
                }),
                --
                -- PROPS snippet
                s("cprops ", {
                    t({ "@override", "" }),
                    t("List<Object> get props => ["), i(1, "props"), t("];")
                }),

                s("stls", {
                    t({ "import 'package:flutter/material.dart';", "" }),
                    t({ "", "" }),
                    t("class "), i(1, "ClassName"), t({ " extends StatelessWidget {", "" }),
                    t("  const "), rep(1), t({ "({super.key});", "" }),
                    t({ "", "" }),
                    t({ "  @override", "" }),
                    t({ "  Widget build(BuildContext context) {", "" }),
                    t({ "    return Scaffold(", "" }),
                    t({ "      body: const Text('Hello'),", "" }),
                    t({ "    );", "" }),
                    t({ "  }", "" }),
                    t({ "}" }),
                })
            })
            ls.add_snippets("go", {
                s("ifen", {
                    t({ "if err != nil {", "\t" }),
                    i(1, ""),
                    t({ "", "}" }),
                })

            })
        end,
    },
}
