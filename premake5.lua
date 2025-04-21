project "imgui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
    staticruntime "On"
    location "build"

    targetdir (".Out/Bin/" .. output_dir .. "%{prj.name}")
    objdir    (".Out/Obj/" .. output_dir .. "%{prj.name}")

	files
	{
		"include/imgui/imconfig.h",
		"include/imgui/imgui.h",
		"include/imgui/imgui.cpp",
		"include/imgui/imgui_draw.cpp",
		"include/imgui/imgui_internal.h",
		"include/imgui/imgui_tables.cpp",
		"include/imgui/imgui_widgets.cpp",
		"include/imgui/imstb_rectpack.h",
		"include/imgui/imstb_textedit.h",
		"include/imgui/imstb_truetype.h",
		"include/imgui/imgui_demo.cpp",

		"include/imgui/backends/imgui_impl_glfw.h",
		"include/imgui/backends/imgui_impl_glfw.cpp",

		"include/imgui/backends/imgui_impl_OpenGL3.h",
		"include/imgui/backends/imgui_impl_OpenGL3.cpp",
	}

	externalincludedirs
	{
		"%{wks.location}/Vendor/glfw/include"
	}

	filter "system:windows"
		systemversion "latest"

	filter "system:linux"
		pic "On"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"

    filter "configurations:Shipping"
		runtime "Release"
		optimize "On"
        symbols "Off"
