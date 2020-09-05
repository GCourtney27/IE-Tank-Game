-- Helpful premake documentation
-- Tokens https://github.com/premake/premake-core/wiki/Tokens

workspace("IE-Tank-Game")
architecture "x64"

configurations
{
	"Debug",
	"Release",
}

csharpAssemblyProjectName = "Assembly-CSharp"
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project (csharpAssemblyProjectName)
	location(csharpAssemblyProjectName)
	kind("SharedLib")
	language("C#")
	targetdir ("Bin/" .. outputdir .. "/%{prj.name}")
	objdir ("Bin-Int/" .. outputdir .. "/%{prj.name}")

	files
	{
		-- Source code
		"%{prj.name}/Source/**.cs",
		"%{prj.name}/Source/**.xaml",
		"%{prj.name}/Source/**.xaml.cs",
		"%{prj.name}/Source/**.config",
		-- Internal
		"%{prj.name}/Internal/**.cs",
		"%{prj.name}/Internal/**.xaml",
		"%{prj.name}/Internal/**.xaml.cs",
		"%{prj.name}/Internal/**.config"
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
