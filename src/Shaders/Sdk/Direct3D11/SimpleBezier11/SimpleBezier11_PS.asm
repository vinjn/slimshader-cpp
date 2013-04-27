//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//
///
// Buffer Definitions: 
//
// cbuffer cbPerFrame
// {
//
//   float4x4 g_mViewProjection;        // Offset:    0 Size:    64 [unused]
//   float3 g_vCameraPosWorld;          // Offset:   64 Size:    12
//   float g_fTessellationFactor;       // Offset:   76 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// cbPerFrame                        cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// WORLDPOS                 0   xyz         1     NONE   float   xyz 
// NORMAL                   0   xyz         2     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
ps_4_0
dcl_constantbuffer cb0[5], immediateIndexed
dcl_input_ps linear v1.xyz
dcl_input_ps linear v2.xyz
dcl_output o0.xyzw
dcl_temps 2
add r0.xyz, v1.xyzx, -cb0[4].xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx
dp3 r0.w, v2.xyzx, v2.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, v2.xyzx
dp3 r0.x, r1.xyzx, r0.xyzx
mul o0.xyzw, |r0.xxxx|, l(1.000000, 0.000000, 0.000000, 1.000000)
ret 
// Approximately 10 instruction slots used
