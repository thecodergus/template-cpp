# Projeto de exemplo para uso do GenICam com C++ e Python
project('Aplicação', 'cpp', default_options : ['cpp_std=c++20'])

# Inicia as flags de compilação como um vetor vazio
cpp_args = []

# Adiciona flags de compilação para o GCC e Clang
cc = meson.get_compiler('cpp')
if cc.get_id() == 'gcc' or cc.get_id() == 'clang'
  cpp_args += '-Wno-deprecated'
endif


app_src = files(
  'src/main.cpp'
)

# Aplicação Central
executable('main', 
    sources : [
      app_src
    ], 
    include_directories : inc, 
    dependencies: [

    ],
    install: true, 
    cpp_args : cpp_args
  )
