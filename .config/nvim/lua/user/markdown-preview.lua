vim.cmd([[function OpenMarkdownPreview (url)
    execute "silent ! brave --new-window " . a:url
  endfunction
  let g:mkdp_browserfunc = 'OpenMarkdownPreview']])
