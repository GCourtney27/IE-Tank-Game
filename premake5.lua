-- Helpful premake documentation
-- Tokens https://github.com/premake/premake-core/wiki/Tokens

workspace ("TankGame")
	architecture "x64"

	configurations
	{
		"Debug",
		"Release",
		"Dist"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

CustomDefines = {}
CustomDefines["IE_BUILD_DIR"] = "../Bin/" .. outputdir

project ("Assembly-CSharp")
	location("Assembly-CSharp")
	kind("SharedLib")
	language("C#")
	targetdir ("Bin/" .. outputdir .. "/%{prj.name}")
	objdir ("Bin-Int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"%{prj.name}/Source/**.cs",
		"%{prj.name}/Source/**.xaml",
		"%{prj.name}/Source/**.xaml.cs",
		"%{prj.name}/Source/**.config"
	}

	links
	{
		"Microsoft.CSharp",
		"PresentationCore",
		"PresentationFramework",
		"System",
		"System.Core",
		"System.Data",
		"System.Data.DataSetExtensions",
		"System.Net.Http",
		"System.Xaml",
		"System.Xml",
		"System.Xml.Linq",
		"WindowsBase",
	}

	postbuildcommands
	{
		--("{COPY} %{wks.location}Bin/"..outputdir.."/%{prj.name}/%{prj.name}.dll %{wks.location}Bin/"..outputdir.."/Engine")
	}