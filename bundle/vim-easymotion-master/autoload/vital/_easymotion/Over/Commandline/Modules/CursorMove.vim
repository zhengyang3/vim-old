" ___vital___
" NOTE: lines between '" ___vital___' is generated by :Vitalize.
" Do not mofidify the code nor insert new lines before '" ___vital___'
if v:version > 703 || v:version == 703 && has('patch1170')
  function! vital#_easymotion#Over#Commandline#Modules#CursorMove#import() abort
    return map({'make': ''},  'function("s:" . v:key)')
  endfunction
else
  function! s:_SID() abort
    return matchstr(expand('<sfile>'), '<SNR>\zs\d\+\ze__SID$')
  endfunction
  execute join(['function! vital#_easymotion#Over#Commandline#Modules#CursorMove#import() abort', printf("return map({'make': ''}, \"function('<SNR>%s_' . v:key)\")", s:_SID()), 'endfunction'], "\n")
  delfunction s:_SID
endif
" ___vital___
scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim


let s:module = {
\	"name" : "CursorMove"
\}
function! s:module.on_char_pre(cmdline)
	if a:cmdline.is_input("\<Right>")
		call a:cmdline.line.next()
		call a:cmdline.setchar('')
	elseif a:cmdline.is_input("\<Left>")
		call a:cmdline.line.prev()
		call a:cmdline.setchar('')
	elseif a:cmdline.is_input("\<C-b>")
\		|| a:cmdline.is_input("\<Home>")
		call a:cmdline.setline(0)
		call a:cmdline.setchar('')
	elseif a:cmdline.is_input("\<C-e>")
\		|| a:cmdline.is_input("\<End>")
		call a:cmdline.setline(a:cmdline.line.length())
		call a:cmdline.setchar('')
	elseif a:cmdline.is_input("\<C-Left>")
\		|| a:cmdline.is_input("\<S-Left>")
		call a:cmdline.setline(strridx(a:cmdline.backward()[:-2], ' ') + 1)
		call a:cmdline.setchar('')
	elseif a:cmdline.is_input("\<C-Right>")
\		|| a:cmdline.is_input("\<S-Right>")
		let p = stridx(a:cmdline.forward()[1:], ' ')
		call a:cmdline.setline(p != -1 ? a:cmdline.line.pos() + p + 2 : a:cmdline.line.length())
		call a:cmdline.setchar('')
	endif
endfunction


function! s:make()
	return deepcopy(s:module)
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
