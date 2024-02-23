project "OpenALSoft"
    kind "StaticLib"
    language "C++"
    staticruntime "off"

    targetdir("bin/" .. outputdir .. "/%{prj.name}")
    objdir("bin-int/" .. outputdir .. "/%{prj.name}")

    file {
        "al/**.h",
        "al/**.cpp",
        "alc/**.h",
        "alc/**.cpp",
        "common/**.h",
        "common/**.cpp",
        "core/**.h",
        "core/**.cpp",
        "include/**.h",
        "router/**.h",
        "router/**.cpp",
        "utils/**.h",
        "utils/**.cpp",
    }

    includedirs {
        "include"
    }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"