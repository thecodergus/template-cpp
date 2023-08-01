# Projeto de exemplo para uso do GenICam com C++ e Python
project('Aplicação', 'cpp', default_options : ['cpp_std=c++20'])

# Inicia as flags de compilação como um vetor vazio
cpp_args = []

# Adiciona flags de compilação para o GCC e Clang
cc = meson.get_compiler('cpp')
if cc.get_id() == 'gcc' or cc.get_id() == 'clang'
  cpp_args += '-Wno-deprecated'
endif


# Importa as dependências e pastas de cabeçalho
inc = include_directories('include', '/usr/local/include')
# aravis_dep = dependency('aravis-0.8', version : '>=0.8.0')
# opencv_dep = dependency('opencv4')

# Importa os arquivos de uso comum
arr_files = files(
#   'src/camera.cpp',
#   'src/utils.cpp',
#   'src/pixel_format.cpp'
)

app_src = files('src/main.cpp')

# Aplicação Central
executable('main', 
    sources : common_src + app_src, 
    include_directories : inc, 
    dependencies: [

    ],
    install: true, 
    cpp_args : cpp_args
  )
