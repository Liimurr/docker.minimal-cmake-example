# https://learn.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-community?view=vs-2022&preserve-view=true
$VSComponents = @(
  # cl requirements
  'Microsoft.VisualStudio.Component.Windows10SDK.20348'
  'Microsoft.VisualStudio.Component.VC.Tools.x86.x64',
  # cl-clang requirements
  'Microsoft.VisualStudio.Component.VC.Llvm.ClangToolset'
  'Microsoft.VisualStudio.ComponentGroup.NativeDesktop.Llvm.Clang'
)