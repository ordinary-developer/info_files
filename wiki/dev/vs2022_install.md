# Visual Studio 2022 installation

## C++ only (without an ability to create C++ projects in Visual Studio)
To install C++ in **Visual Studio 2022**:
  
- download the online installer  
- in the "Separate components" page deselect all items
- on the "Working workloads" select the `Developing classic C++ Apps`
- in the "Separate components" page select (deselect other components)
  - `InelliCode`
  - `Base C++ components`  
  - `MSBuild`  
  - `MSVC v143 - VS 2002 C++ x64/x86 Build Tools (last version)`  
  - `MSVC v143 - libraries C++ for VS 2022 for x64/x86 with Spectre risk elimination (last version)`  
  - `Modules C++ for build tools v 143 (x64 or x86 - experiment version)`  
  - `Update for a distributable compoent C++ 2022`
  - `SDK package for Windows 10 (10.0.20348.0)`
  - `Package dispatcher vcpkg`
  - `Text template transforming`
- in the "Language packages" select "English"  
- in the "Install place" select:
  - IDE Path: `C:\Users\ivan\AppData\Local\Microsoft Visual Studio\2022\Community`  
  - Cash: `C:\Program Files\Microsoft\VisualStudio\Packages`  
  - Common components: `C:\Users\ivan\AppData\Local\Microsoft Visual Studio\Shared`


## C++ full (with ability to create C++ projects in Visual Studio)

- download the online installer  
- in the "Separate components" page deselect all items
- on the "Working workloads" select the `Developing classic C++ Apps` don't deselect all items
- on the "Working workloads" select the `Developing classic C++ Apps` select
  - `Modules C++ for build tools v 143 (x64 or x86 - experiment version)`  

