//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//
///
// Buffer Definitions: 
//
// Resource bind info for GridIndicesRW
// {
//
//   uint2 $Element;                    // Offset:    0 Size:     8
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// GridIndicesRW                         UAV  struct         r/w    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Input
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Output
cs_5_0
dcl_globalFlags refactoringAllowed
dcl_uav_structured u0, 8
dcl_input vThreadID.x
dcl_thread_group 256, 1, 1
store_structured u0.xy, vThreadID.x, l(0), l(0,0,0,0)
ret 
// Approximately 2 instruction slots used
