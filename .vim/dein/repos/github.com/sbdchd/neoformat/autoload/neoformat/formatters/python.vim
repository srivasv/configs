function! neoformat#formatters#python#enabled() abort
    return ['yapf', 'autopep8', 'isort']
endfunction

function! neoformat#formatters#python#yapf() abort
    return {
                \ 'exe': 'yapf',
                \ 'stdin': 1
                \ }
endfunction

function! neoformat#formatters#python#autopep8() abort
    return {
                \ 'exe': 'autopep8',
                \ 'args': ['-', '--global-config $HOME/.config/pep8', '--aggressive', '--indent-size 2'],
                \ 'stdin': 1}
endfunction


function! neoformat#formatters#python#isort() abort
    return {
                \ 'exe': 'isort',
                \ 'args': ['-', '--quiet'],
                \ 'stdin': 1}
endfunction
