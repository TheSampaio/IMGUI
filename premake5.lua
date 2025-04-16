project "IMGUI"
    kind "StaticLib"
    runtime "Static"
    language "C++"
    cppdialect "C++17"

    location "build"

    targetdir ("out/build/bin/%{cfg.buildcfg}/%{prj.name}")
    objdir    ("out/build/obj/%{cfg.buildcfg}/%{prj.name}")

    defines { "IMGUI_IMPL_OPENGL_LOADER_GLAD" }

    includedirs {
        "include"
    }

    files {
        "source/imgui.cpp",
        
        "source/imgui_draw.cpp",
        "source/imgui_tables.cpp",
        "source/imgui_widgets.cpp",
        "source/imgui_demo.cpp",
        "source/imgui_impl_glfw.cpp",
        "source/imgui_impl_opengl3.cpp",
        "source/imgui_impl_glfw.h",
        "source/imgui_impl_opengl3.h"

        "source/imgui_impl_glfw.h",
        "source/imgui_impl_opengl3.h",
    }

    filter "system:windows"
        systemversion "latest"
        staticruntime "On"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
