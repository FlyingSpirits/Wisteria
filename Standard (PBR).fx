////General////
float4 Diffuse_Color  = float4(1,1,1,1);
float4 Ambient_Color  = float4(0,0,0,1);
float4 Specular_Color = float4(1,1,1,0);

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
#define VertexColor_UV i.UV3

float VertexColor_RGB_Intensity = 1;
float VertexColor_A_Intensity = 1;

////Shading////
#define Shading 3
//0: None
//1: Lambert
//2: HalfLambert
//3: PMX Toon

#define UseIBLs 0
#define UseDiffuseIBL 1
#define UseSpecularIBL 1

////Single PBR Maps////
#define UseSingleMap 0

#define Specular_Texture "Maps/"
#define Roughness_Texture "Maps/"
#define Metallic_Texture "Maps/"
#define AmbientOcclusion_Texture "Maps/"

////Merged PBR Map 1////
#define UseMergedMap1 0
#define PBR1_Texture "Maps/"

#define PBRMap1_SpecularMap x
#define PBRMap1_RoughnessMap x
#define PBRMap1_MetallicMap x
#define PBRMap1_AmbientOcclusion x

////Merged PBR Map 2////
#define UseMergedMap2 0
#define PBR2_Texture "Maps/"

#define PBRMap2_SpecularMap x
#define PBRMap2_RoughnessMap x
#define PBRMap2_MetallicMap x
#define PBRMap2_AmbientOcclusion x

////Settings////
#define UseSpecularMap 0
#define UseRoughnessMap 0
#define UseMetallicMap 0
#define UseAmbientOcclusion 0

#define Specular_Use_PBRMap1 0
#define Specular_Use_PBRMap2 0
#define Roughness_Use_PBRMap1 0
#define Roughness_Use_PBRMap2 0
#define Metallic_Use_PBRMap1 0
#define Metallic_Use_PBRMap2 0
#define AmbientOcclusion_Use_PBRMap1 0
#define AmbientOcclusion_Use_PBRMap2 0

#define Metallic_Use_Color 1

////Parameters////
float PBR_Specular = 1;
float PBR_Roughness = 1;
float PBR_Metallic = 0;
float PBR_AmbientOcclusion = 0;
float Specular_Affected_By_Shadows = 0;

////NormalMap////
#define UseNormalMap 0
#define NormalMap_Texture "Maps/"
#define NormalMap_UV i.UV1

#define NormalMap_R_Flip 0
#define NormalMap_G_Flip 0

float Normal_Scale = 1;
float Normal_Intensity = 1;

////Detail NormalMap////
#define UseDetailNormalMap 0
#define DetailNormalMap_Texture "Maps/"
#define DetailNormalMap_UV i.UV1

#define DetailNormalMap_R_Flip 0
#define DetailNormalMap_G_Flip 0

float DetailNormal_Scale = 1;
float DetailNormal_Intensity = 1;

////NormalMap Settings////
#define NormalMap_Type 0
//0: NormalMap
//1: Detail NormalMap
//2: Both

////Detail SpecularMap////
#define UseDetailSpecularMap 0
#define DetailSpecularMap_Texture "Maps/"
#define DetailSpecularMap_UV i.UV1

float DetailSpecular_Scale = 1;
float DetailSpecular_Intensity = 1;

////Detail Diffuse////
#define UseDetailDiffuse 0
#define DetailDiffuse_Texture "Maps/"
#define DetailDiffuse_UV i.UV1

float DetailDiffuse_Scale = 1;
float DetailDiffuse_Intensity = 1;

////Env Map////
#define UseEnvMap 0
#define EnvMap_Texture "Maps/"
#define EnvMap_Use_SpecularMap 0
#define EnvMap_Use_DetailSpecularMap 0

float4 EnvColor = float4(1,1,1,0);
float EnvMap_Intensity = 1;
float EnvMap_Use_Shading = 0;
float EnvMap_Affected_By_Shadows = 0;

////Rim Lighting////
#define UseRim 0
#define Rim_Use_SpecularMap 0
#define Rim_Use_DetailSpecularMap 0

float4 RimColor = float4(1,1,1,0);
float Rim_Gradient = 3;
float Rim_Intensity = 1;
float Rim_Use_Shading = 0;
float Rim_Affected_By_Shadows = 0;

////PMX Spa////
#define UseSpa 0
#define Spa_Use_SpecularMap 0
#define Spa_Use_DetailSpecularMap 0

float4 SpaColor = float4(1,1,1,0);
float Spa_Scale = 1;
float Spa_Intensity = 1;
float Spa_Affected_By_Shadows = 0;

////Shadows////
#define UseShadowColorMap 0
#define UseSelfShadowMap 0

#define ShadowColorMap_Texture "Maps/"
#define SelfShadowMap_Texture "Maps/"

#define ShadowColor_Type 0
//0: Shader
//1: ColorMap

float4 ShadowColor = float4(1,1,1,0);
float Shadow_Brightness = 1;

///////////////////////////////////////////////////////////////////////////
#include "Wisteria/Shaders/Standard (PBR).fxsub"