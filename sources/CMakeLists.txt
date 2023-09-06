set(project_name main_core)
add_library(${project_name}
    main.cpp
    main.h
)

set_target_properties(${project_name} PROPERTIES
  MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")