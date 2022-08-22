return {
	settings = {
		typescript = {
			suggest = {
				includeCompletionsWithSnippetText = false,
				objectLiteralMethodSnippets = {
					enabled = false,
				},
				classMemberSnippets = {
					enabled = false,
				},
			},
			preferences = {
				allowIncompleteCompletions = true,
				allowRenameOfImportPath = true,
				allowTextChangesInNewFiles = true,
				displayPartsForJSDoc = true,
				generateReturnInDocTemplate = true,
				includeAutomaticOptionalChainCompletions = true,
				includeCompletionsForImportStatements = true,
				includeCompletionsForModuleExports = true,
				includeCompletionsWithClassMemberSnippets = false,
				includeCompletionsWithObjectLiteralMethodSnippets = false,
				includeCompletionsWithInsertText = true,
				includeCompletionsWithSnippetText = false,
				jsxAttributeCompletionStyle = "auto",
				providePrefixAndSuffixTextForRename = true,
			},
			inlayHints = {
				includeInlayEnumMemberValueHints = true,
				includeInlayFunctionLikeReturnTypeHints = true,
				includeInlayFunctionParameterTypeHints = true,
				includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
				includeInlayParameterNameHintsWhenArgumentMatchesName = true,
				includeInlayPropertyDeclarationTypeHints = true,
				includeInlayVariableTypeHints = true,
			},
		},
	},
}
