////General////
float4 Diffuse_Color  = float4(1,1,1,1);
float4 Ambient_Color  = float4(0,0,0,1);
float4 Specular_Color = float4(1,1,1,1);
float4 Emission_Color = float4(0,0,0,0);

////Settings////
#define Alpha 1
#define AlphaClip 0
#define ZWrite 1

#define Culling_Type 0
//0: FrontFace
//1: BackFace
//2: DoubleSided

#define SrcBlend 4
#define DstBlend 5
//0: ZERO
//1: ONE
//2: SRCCOLOR
//3: INVSRCCOLOR
//4: SRCALPHA
//5: INVSRCALPHA
//6: DESTALPHA
//7: INVDESTALPHA
//8: DESTCOLOR
//9: INVDESTCOLOR
//10: SRCALPHASAT

////ToneMapping////
float Exposure = 1;
float Gamma = 1;
float Saturation = 1;

#define ToneMap 0
//0: None
//1: Linear
//2: Reinhard
//3: Filmic
//4: YCC
//5: ACES
//6: Gran Turismo
float ToneMap_Intensity = 1;

////VertexColors////
#define UseVertexColor 0
float VertexColor_RGB_Intensity = 1;
float VertexColor_A_Intensity = 1;

////Settings////
#define Is_Hair 0
#define Use_NormalMap 0
#define Use_PBRMap 0
#define Use_ENVMap 0

////Maps////
#define Emit_Texture "Maps/"
#define Matt_Texture "Maps/"
#define Nort_Texture "Maps/"
#define EnvMap_Texture "Maps/"

////Parameters////
float Specular = 1;
float Roughness = 1;
float Metallic = 0;

float ShadowIntensity = 0;
float ShadowBrightness = 1;

///////////////////////////////////////////////////////////////////////////
#include "Wisteria/Shaders/ExtraShaders/CHARA (PBR).fxsub"