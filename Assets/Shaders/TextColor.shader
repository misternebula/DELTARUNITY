Shader "Unlit/TextColor"
{
    Properties
    {
        [PerRendererData] _MainTex("Sprite Texture", 2D) = "white" {}
        _VertOneColor ("Top Left Color", Color) = (1, 1, 1, 1)
        _VertTwoColor("Top Right Color", Color) = (1, 1, 1, 1)
        _VertThreeColor("Bottom Right Color", Color) = (1, 1, 1, 1)
        _VertFourColor("Bottom Left Color", Color) = (1, 1, 1, 1)
    }
    SubShader
    {
        Tags
        {
            "Queue" = "Transparent"
            "IgnoreProjector" = "True"
            "RenderType" = "Transparent"
            "PreviewType" = "Plane"
            "CanUseSpriteAtlas" = "True"
        }

        Cull Off
        Lighting Off
        ZWrite Off
        Blend One OneMinusSrcAlpha

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;
                float4 vertex : SV_POSITION;
            };

            sampler2D _MainTex;
            float4 _VertOneColor;
            float4 _VertTwoColor;
            float4 _VertThreeColor;
            float4 _VertFourColor;

            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = v.uv;
                return o;
            }

            fixed4 frag(v2f i) : SV_Target
            {
                float4 topColor = lerp(_VertOneColor, _VertTwoColor, i.uv.x);
                float4 bottomColor = lerp(_VertFourColor, _VertThreeColor, i.uv.x);

                float4 finalColor = lerp(bottomColor, topColor, i.uv.y);

                float4 c = tex2D(_MainTex, i.uv);

                c.rgb *= finalColor;
                c.rgb *= c.a;

                return c;
            }
            ENDCG
        }
    }
}
