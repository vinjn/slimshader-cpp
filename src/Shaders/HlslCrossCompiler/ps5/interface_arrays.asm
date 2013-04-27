//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//
///
// Buffer Definitions: 
//
// cbuffer $Globals
// {
//
//   int alphaIndex;                    // Offset:    0 Size:     4
//
// }
//
// interfaces $ThisPointer
// {
//
//   interface iChangeColour gAbstractColourChanger[2];// Offset:    0 Size:     2
//   interface iChangeColour gAbstractColourChangerB;// Offset:    2 Size:     1
//   interface iAlpha gAlphaChooser[3]; // Offset:    3 Size:     3
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// $Globals                          cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// COLOR                    0   xyz         0     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
//
// Available Class Types:
//
// Name                             ID CB Stride Texture Sampler
// ------------------------------ ---- --------- ------- -------
// cUnchangedColour                  0         0       0       0
// cHalfColour                       1         0       0       0
// cDoubleColour                     2         0       0       0
// TwoThirdsAlpha                    3         0       0       0
// OneAlpha                          4         0       0       0
//
// Interface slots, 6 total:
//
//             Slots
// +----------+---------+---------------------------------------
// | Type ID  |   0-1   |0    1    2    
// | Table ID |         |0    1    2    
// +----------+---------+---------------------------------------
// | Type ID  |   2     |0    1    2    
// | Table ID |         |3    4    5    
// +----------+---------+---------------------------------------
// | Type ID  |   3-5   |3    4    
// | Table ID |         |6    7    
// +----------+---------+---------------------------------------
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[1], immediateIndexed
dcl_function_body fb0
dcl_function_body fb1
dcl_function_body fb2
dcl_function_body fb3
dcl_function_body fb4
dcl_function_body fb5
dcl_function_body fb6
dcl_function_body fb7
dcl_function_table ft0 = {fb0}
dcl_function_table ft1 = {fb1}
dcl_function_table ft2 = {fb2}
dcl_function_table ft3 = {fb3}
dcl_function_table ft4 = {fb4}
dcl_function_table ft5 = {fb5}
dcl_function_table ft6 = {fb6}
dcl_function_table ft7 = {fb7}
dcl_interface fp0[2][1] = {ft0, ft1, ft2}
dcl_interface fp2[1][1] = {ft3, ft4, ft5}
dcl_interface_dynamicindexed fp3[3][1] = {ft6, ft7}
dcl_input_ps linear v0.xyz
dcl_output o0.xyzw
dcl_temps 1
fcall fp0[1][0]
fcall fp2[0][0]
mov o0.xyz, r0.xyzx
mov r0.x, cb0[0].x
fcall fp3[r0.x + 0][0]
mov o0.w, r0.x
ret 
label fb0
mov r0.xyz, v0.xyzx
ret 
label fb1
mul r0.xyz, v0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
ret 
label fb2
add r0.xyz, v0.xyzx, v0.xyzx
ret 
label fb3
ret 
label fb4
mul r0.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
ret 
label fb5
add r0.xyz, r0.xyzx, r0.xyzx
ret 
label fb6
mov r0.x, l(0.660000)
ret 
label fb7
mov r0.x, l(1.000000)
ret 
// Approximately 22 instruction slots used
