//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//
///
// Buffer Definitions: 
//
// cbuffer cbSimulationConstants
// {
//
//   uint g_iNumParticles;              // Offset:    0 Size:     4
//   float g_fTimeStep;                 // Offset:    4 Size:     4 [unused]
//   float g_fSmoothlen;                // Offset:    8 Size:     4
//   float g_fPressureStiffness;        // Offset:   12 Size:     4
//   float g_fRestDensity;              // Offset:   16 Size:     4
//   float g_fDensityCoef;              // Offset:   20 Size:     4 [unused]
//   float g_fGradPressureCoef;         // Offset:   24 Size:     4
//   float g_fLapViscosityCoef;         // Offset:   28 Size:     4
//   float g_fWallStiffness;            // Offset:   32 Size:     4 [unused]
//   float4 g_vGravity;                 // Offset:   48 Size:    16 [unused]
//   float4 g_vGridDim;                 // Offset:   64 Size:    16 [unused]
//   float3 g_vPlanes[4];               // Offset:   80 Size:    60 [unused]
//
// }
//
// Resource bind info for ParticlesRO
// {
//
//   struct Particle
//   {
//       
//       float2 position;               // Offset:    0
//       float2 velocity;               // Offset:    8
//
//   } $Element;                        // Offset:    0 Size:    16
//
// }
//
// Resource bind info for ParticlesDensityRO
// {
//
//   struct ParticleDensity
//   {
//       
//       float density;                 // Offset:    0
//
//   } $Element;                        // Offset:    0 Size:     4
//
// }
//
// Resource bind info for ParticlesForcesRW
// {
//
//   struct ParticleForces
//   {
//       
//       float2 acceleration;           // Offset:    0
//
//   } $Element;                        // Offset:    0 Size:     8
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// ParticlesRO                       texture  struct         r/o    0        1
// ParticlesDensityRO                texture  struct         r/o    1        1
// ParticlesForcesRW                     UAV  struct         r/w    0        1
// cbSimulationConstants             cbuffer      NA          NA    0        1
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
dcl_constantbuffer cb0[2], immediateIndexed
dcl_resource_structured t0, 16 
dcl_resource_structured t1, 4 
dcl_uav_structured u0, 8
dcl_input vThreadIDInGroupFlattened
dcl_input vThreadID.x
dcl_temps 6
dcl_tgsm_structured g0, 20, 256
dcl_thread_group 256, 1, 1
ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r0.xyzw, vThreadID.x, l(0), t0.xyzw
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r1.x, vThreadID.x, l(0), t1.xxxx
div r1.y, r1.x, cb0[1].x
mul r1.z, r1.y, r1.y
mad r1.y, r1.y, r1.z, l(-1.000000)
max r1.y, r1.y, l(0.000000)
mul r1.y, r1.y, cb0[0].w
mul r1.z, cb0[0].z, cb0[0].z
mov r2.xy, l(0,0,0,0)
mov r1.w, l(0)
loop 
  uge r2.z, r1.w, cb0[0].x
  breakc_nz r2.z
  iadd r2.z, r1.w, vThreadIDInGroupFlattened.x
  ld_structured_indexable(structured_buffer, stride=16)(mixed,mixed,mixed,mixed) r3.xyzw, r2.z, l(0), t0.xyzw
  store_structured g0.xyzw, vThreadIDInGroupFlattened.x, l(0), r3.xyzw
  ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r2.z, r2.z, l(0), t1.xxxx
  store_structured g0.x, vThreadIDInGroupFlattened.x, l(16), r2.z
  sync_g_t
  mov r3.xy, r2.xyxx
  mov r3.z, l(0)
  loop 
    uge r2.z, r3.z, l(256)
    breakc_nz r2.z
    iadd r2.z, r1.w, r3.z
    ld_structured r4.xy, r3.z, l(0), g0.xyxx
    add r4.xy, -r0.xyxx, r4.xyxx
    dp2 r2.w, r4.xyxx, r4.xyxx
    lt r3.w, r2.w, r1.z
    ine r2.z, r2.z, vThreadID.x
    and r2.z, r2.z, r3.w
    if_nz r2.z
      ld_structured r5.xyz, r3.z, l(8), g0.xyzx
      div r2.z, r5.z, cb0[1].x
      mul r3.w, r2.z, r2.z
      mad r2.z, r2.z, r3.w, l(-1.000000)
      max r2.z, r2.z, l(0.000000)
      sqrt r2.w, r2.w
      mad r2.z, cb0[0].w, r2.z, r1.y
      mul r2.z, r2.z, cb0[1].z
      mul r2.z, r2.z, l(0.500000)
      div r2.z, r2.z, r5.z
      add r3.w, -r2.w, cb0[0].z
      mul r4.z, r3.w, r3.w
      mul r2.z, r2.z, r4.z
      div r2.z, r2.z, r2.w
      mad r2.zw, r2.zzzz, r4.xxxy, r3.xxxy
      add r4.xy, -r0.zwzz, r5.xyxx
      div r4.z, cb0[1].w, r5.z
      mul r3.w, r3.w, r4.z
      mad r3.xy, r3.wwww, r4.xyxx, r2.zwzz
    endif 
    iadd r3.z, r3.z, l(1)
  endloop 
  mov r2.xy, r3.xyxx
  sync_g_t
  iadd r1.w, r1.w, l(256)
endloop 
div r0.xy, r2.xyxx, r1.xxxx
store_structured u0.xy, vThreadID.x, l(0), r0.xyxx
ret 
// Approximately 61 instruction slots used
