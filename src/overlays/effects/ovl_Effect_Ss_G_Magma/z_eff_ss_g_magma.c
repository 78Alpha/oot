/*
 * File: z_eff_ss_g_magma.c
 * Overlay: ovl_Effect_Ss_G_Magma
 * Description: Magma Bubbles
 */

#include "z_eff_ss_g_magma.h"

u32 EffectSsGMagma_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx);
void EffectSsGMagma_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this);
void EffectSsGMagma_Update(GlobalContext* globalCtx, u32 index, EffectSs* this);

EffectSsInit Effect_Ss_G_Magma_InitVars = {
    EFFECT_SS_G_MAGMA,
    EffectSsGMagma_Init,
};

extern Gfx D_04024410[];

u32 EffectSsGMagma_Init(GlobalContext* globalCtx, u32 index, EffectSs* this, void* initParamsx) {
    EffectSsGMagmaInitParams* initParams = (EffectSsGMagmaInitParams*)initParamsx;
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };

    this->velocity = this->accel = zeroVec;
    this->pos = initParams->pos;
    this->draw = EffectSsGMagma_Draw;
    this->update = EffectSsGMagma_Update;
    this->gfx = SEGMENTED_TO_VIRTUAL(D_04024410);
    this->life = 16;
    this->rgScale = (s16)(Math_Rand_ZeroOne() * 100.0f) + 200;
    this->rgTexIdx = 0;
    this->rgTexIdxStep = 50;
    this->rgPrimColorR = 255;
    this->rgPrimColorG = 255;
    this->rgPrimColorB = 0;
    this->rgPrimColorA = 255;
    this->rgEnvColorR = 255;
    this->rgEnvColorG = 0;
    this->rgEnvColorB = 0;
    this->rgEnvColorA = 0;

    return 1;
}

static void* sTextures[] = { 0x04023810, 0x04023990, 0x04023B10, 0x04023C90,
                             0x04023E10, 0x04023F90, 0x04024110, 0x04024290 };

void EffectSsGMagma_Draw(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    s16 texIdx = this->rgTexIdx / 100;

    if (texIdx > 7) {
        texIdx = 7;
    }

    EffectSs_DrawGEffect(globalCtx, this, sTextures[texIdx]);
}

void EffectSsGMagma_Update(GlobalContext* globalCtx, u32 index, EffectSs* this) {
    this->rgTexIdx += this->rgTexIdxStep;
}
