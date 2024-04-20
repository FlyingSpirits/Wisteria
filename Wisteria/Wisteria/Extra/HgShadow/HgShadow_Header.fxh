////////////////////////////////////////////////////////////////////////////////////////////////
//
// HgShadow_Header.fxh : Basic parameter definition header file required for creating HgShadow shadow maps.
// Use the parameters here by #include them in other effect files.
// Created by: Wire P
//
// * Updating this file will not automatically update it with MME.
// * After updating the file, it is necessary to update the effect file referenced by "MMEffect" -> "Update All".
// *In MMM, please change the file before loading HgShadow.fx. If the changes are not reflected, delete everything in the Cache folder in MMM and try again.
//
////////////////////////////////////////////////////////////////////////////////////////////////
#define CFSUSM 0
#define CLSPSM 1

#ifdef HGSHADOW_MAPDRAW

#if (ShadowMapType == CLSPSM)
    #include "HgShadow_CLSPSM.fxh"
    #define HgShadow_GetShadowMapLightProjPosition HgShadow_CLSPSM_GetLightProjPosition
    #define HgShadow_GetShadowMapTexCoord HgShadow_CLSPSM_GetTexCoord
#else
    #include "HgShadow_CFSUSM.fxh"
    #define HgShadow_GetShadowMapLightProjPosition HgShadow_CFSUSM_GetLightProjPosition
    #define HgShadow_GetShadowMapTexCoord HgShadow_CFSUSM_GetTexCoord
#endif

#endif

#ifdef HGSHADOW_TEST

#if (ShadowMapType == CLSPSM)
    #include ". /HgShadow_CLSPSM.fxh"
    #define HgShadow_GetShadowMapLightProjPosition HgShadow_CLSPSM_GetLightProjPosition
    #define HgShadow_GetShadowMapTexCoord HgShadow_CLSPSM_GetTexCoord
#else
    #include ". /HgShadow_CFSUSM.fxh"
    #define HgShadow_GetShadowMapLightProjPosition HgShadow_CFSUSM_GetLightProjPosition
    #define HgShadow_GetShadowMapTexCoord HgShadow_CFSUSM_GetTexCoord
#endif

#endif


