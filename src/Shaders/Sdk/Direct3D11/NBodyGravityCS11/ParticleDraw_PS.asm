//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//
///
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// g_samLinear                       sampler      NA          NA    0        1
// g_txDiffuse                       texture  float4          2d    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xy          0     NONE   float   xy  
// COLOR                    0   xyzw        1     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_4_0
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v0.xy
dcl_input_ps linear v1.xyzw
dcl_output o0.xyzw
dcl_temps 1
sample r0.xyzw, v0.xyxx, t0.xyzw, s0
mul o0.xyzw, r0.xyzw, v1.xyzw
ret 
// Approximately 3 instruction slots used
