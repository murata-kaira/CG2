#include"object3d.hlsli"


struct Material{
float32_t4 color;
};

ConstantBuffer<Material> gMaterial : register(b1);
struct PixelShaderOutput{
float32_t4 color : SV_TARGET;
};



PixelShaderOutput main(VertexShaderOutput input)
{
PixelShaderOutput output;
output.color = gMaterial.color;
return output;
}



