let dart_format_on_save = 1
map <leader>c :DartAnalyzer<cr>

let g:lsc_enable_autocomplete = v:false

let g:lsc_auto_map = {
    \ 'GoToDefinition': 'gd',
    \ 'FindReferences': 'gr',
    \ 'NextReference': '<c-k>',
    \ 'PreviousReference': '<c-j>',
    \ 'FindImplementations': 'gI',
    \ 'FindCodeActions': 'ga',
    \ 'DocumentSymbol': 'go',
    \ 'WorkspaceSymbol': 'gS',
    \ 'ShowHover': 'K',
    \ 'Completion': 'omnifunc',
    \}
