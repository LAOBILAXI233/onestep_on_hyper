

package com.leaf.hyperdragshare.codex

import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.spring
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxScope
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.drawscope.ContentDrawScope
import androidx.compose.ui.node.DrawModifierNode
import androidx.compose.ui.node.ModifierNodeElement
import androidx.compose.ui.node.invalidateDraw
import androidx.compose.ui.platform.LocalConfiguration
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import top.yukonga.miuix.kmp.blur.BlendColorEntry
import top.yukonga.miuix.kmp.blur.BlurBlendMode
import top.yukonga.miuix.kmp.blur.RuntimeShader
import top.yukonga.miuix.kmp.blur.asBrush
import top.yukonga.miuix.kmp.blur.isRuntimeShaderSupported
import top.yukonga.miuix.kmp.theme.MiuixTheme
import kotlin.math.cos
import kotlin.math.floor
import kotlin.math.sin

@Composable
internal fun DragShareOs3Background(
    dark: Boolean,
    modifier: Modifier = Modifier,
    backgroundModifier: Modifier = Modifier,
    dynamic: Boolean = true,
    alpha: () -> Float = { 1f },
    content: @Composable BoxScope.() -> Unit,
) {
    if (!isRuntimeShaderSupported()) {
        Box(modifier = modifier) {
            Spacer(
                modifier = Modifier
                    .fillMaxSize()
                    .background(MiuixTheme.colorScheme.surface),
            )
            content()
        }
        return
    }

    Box(modifier = modifier) {
        val configuration = LocalConfiguration.current
        val deviceType = if (configuration.smallestScreenWidthDp >= 600) {
            DragShareBackgroundDeviceType.Pad
        } else {
            DragShareBackgroundDeviceType.Phone
        }
        val surface = MiuixTheme.colorScheme.surface
        val painter = remember { DragShareOs3Painter() }
        val preset = remember(deviceType, dark) {
            DragShareOs3Config.get(deviceType, dark)
        }
        val colorStage = remember { Animatable(0f) }

        LaunchedEffect(dynamic, preset) {
            if (!dynamic) return@LaunchedEffect
            var targetStage = floor(colorStage.value) + 1f
            while (isActive) {
                delay((preset.colorInterpolationPeriod * 500).toLong())
                colorStage.animateTo(
                    targetValue = targetStage,
                    animationSpec = spring(dampingRatio = 0.9f, stiffness = 35f),
                )
                targetStage += 1f
            }
        }

        Spacer(
            modifier = Modifier
                .fillMaxSize()
                .then(backgroundModifier)
                .dragShareOs3Draw(
                    painter = painter,
                    preset = preset,
                    deviceType = deviceType,
                    dark = dark,
                    surface = surface,
                    playing = dynamic,
                    colorStage = { colorStage.value },
                    alpha = alpha,
                ),
        )
        content()
    }
}

internal object DragShareGlassBlendTokens {
    val PuredRegularLight = listOf(
        BlendColorEntry(Color(0x340034F9), BlurBlendMode.Overlay),
        BlendColorEntry(Color(0xB3FFFFFF), BlurBlendMode.HardLight),
    )

    val OverlayThinDark = listOf(
        BlendColorEntry(Color(0x4DA9A9A9), BlurBlendMode.Luminosity),
        BlendColorEntry(Color(0x1A9C9C9C), BlurBlendMode.PlusDarker),
    )
}

private enum class DragShareBackgroundDeviceType {
    Phone,
    Pad,
}

private object DragShareOs3Config {
    class Config(
        val points: FloatArray,
        val colors1: FloatArray,
        val colors2: FloatArray,
        val colors3: FloatArray,
        val colorInterpolationPeriod: Float,
        val lightOffset: Float,
        val saturationOffset: Float,
        val pointOffset: Float,
    )

    private val phoneLight = Config(
        points = floatArrayOf(0.8f, 0.2f, 1.0f, 0.8f, 0.9f, 1.0f, 0.2f, 0.9f, 1.0f, 0.2f, 0.2f, 1.0f),
        colors1 = floatArrayOf(1.0f, 0.9f, 0.94f, 1.0f, 1.0f, 0.84f, 0.89f, 1.0f, 0.97f, 0.73f, 0.82f, 1.0f, 0.64f, 0.65f, 0.98f, 1.0f),
        colors2 = floatArrayOf(0.58f, 0.74f, 1.0f, 1.0f, 1.0f, 0.9f, 0.93f, 1.0f, 0.74f, 0.76f, 1.0f, 1.0f, 0.97f, 0.77f, 0.84f, 1.0f),
        colors3 = floatArrayOf(0.98f, 0.86f, 0.9f, 1.0f, 0.6f, 0.73f, 0.98f, 1.0f, 0.92f, 0.93f, 1.0f, 1.0f, 0.56f, 0.69f, 1.0f, 1.0f),
        colorInterpolationPeriod = 5f,
        lightOffset = 0.1f,
        saturationOffset = 0.2f,
        pointOffset = 0.2f,
    )

    private val phoneDark = Config(
        points = floatArrayOf(0.8f, 0.2f, 1.0f, 0.8f, 0.9f, 1.0f, 0.2f, 0.9f, 1.0f, 0.2f, 0.2f, 1.0f),
        colors1 = floatArrayOf(0.2f, 0.06f, 0.88f, 0.4f, 0.3f, 0.14f, 0.55f, 0.5f, 0.0f, 0.64f, 0.96f, 0.5f, 0.11f, 0.16f, 0.83f, 0.4f),
        colors2 = floatArrayOf(0.07f, 0.15f, 0.79f, 0.5f, 0.62f, 0.21f, 0.67f, 0.5f, 0.06f, 0.25f, 0.84f, 0.5f, 0.0f, 0.2f, 0.78f, 0.5f),
        colors3 = floatArrayOf(0.58f, 0.3f, 0.74f, 0.4f, 0.27f, 0.18f, 0.6f, 0.5f, 0.66f, 0.26f, 0.62f, 0.5f, 0.12f, 0.16f, 0.7f, 0.6f),
        colorInterpolationPeriod = 8f,
        lightOffset = 0f,
        saturationOffset = 0.17f,
        pointOffset = 0.4f,
    )

    private val padLight = Config(
        points = floatArrayOf(0.8f, 0.2f, 1.0f, 0.8f, 0.9f, 1.0f, 0.2f, 0.9f, 1.0f, 0.2f, 0.2f, 1.0f),
        colors1 = floatArrayOf(0.99f, 0.77f, 0.86f, 1.0f, 0.74f, 0.76f, 1.0f, 1.0f, 0.72f, 0.74f, 1.0f, 1.0f, 0.98f, 0.76f, 0.8f, 1.0f),
        colors2 = floatArrayOf(0.66f, 0.75f, 1.0f, 1.0f, 1.0f, 0.86f, 0.91f, 1.0f, 0.74f, 0.76f, 1.0f, 1.0f, 0.97f, 0.77f, 0.84f, 1.0f),
        colors3 = floatArrayOf(0.97f, 0.79f, 0.85f, 1.0f, 0.65f, 0.68f, 0.98f, 1.0f, 0.66f, 0.77f, 1.0f, 1.0f, 0.72f, 0.73f, 0.98f, 1.0f),
        colorInterpolationPeriod = 7f,
        lightOffset = 0.1f,
        saturationOffset = 0.2f,
        pointOffset = 0.2f,
    )

    private val padDark = Config(
        points = floatArrayOf(0.8f, 0.2f, 1.0f, 0.8f, 0.9f, 1.0f, 0.2f, 0.9f, 1.0f, 0.2f, 0.2f, 1.0f),
        colors1 = floatArrayOf(0.66f, 0.26f, 0.62f, 0.4f, 0.06f, 0.25f, 0.84f, 0.5f, 0.0f, 0.64f, 0.96f, 0.5f, 0.14f, 0.18f, 0.55f, 0.5f),
        colors2 = floatArrayOf(0.07f, 0.15f, 0.79f, 0.5f, 0.11f, 0.16f, 0.83f, 0.5f, 0.06f, 0.25f, 0.84f, 0.5f, 0.66f, 0.26f, 0.62f, 0.5f),
        colors3 = floatArrayOf(0.58f, 0.3f, 0.74f, 0.5f, 0.11f, 0.16f, 0.83f, 0.5f, 0.66f, 0.26f, 0.62f, 0.5f, 0.27f, 0.18f, 0.6f, 0.6f),
        colorInterpolationPeriod = 7f,
        lightOffset = 0f,
        saturationOffset = 0f,
        pointOffset = 0.2f,
    )

    fun get(deviceType: DragShareBackgroundDeviceType, dark: Boolean): Config = when (deviceType) {
        DragShareBackgroundDeviceType.Phone -> if (dark) phoneDark else phoneLight
        DragShareBackgroundDeviceType.Pad -> if (dark) padDark else padLight
    }
}

private class DragShareOs3Painter {
    private val runtimeShader by lazy {
        RuntimeShader(DRAG_SHARE_OS3_SHADER).also(::configureStaticUniforms)
    }

    val brush: Brush get() = runtimeShader.asBrush()

    private val resolution = FloatArray(2)
    private val bounds = FloatArray(4)
    private val colors = FloatArray(16)
    private val animatedPoints = FloatArray(8)

    private var animationTime = Float.NaN
    private var cachedPreset: DragShareOs3Config.Config? = null
    private var cachedColorStage = Float.NaN
    private var cachedPointTime = Float.NaN
    private var cachedPointPreset: DragShareOs3Config.Config? = null
    private var cachedDeviceType: DragShareBackgroundDeviceType? = null
    private var cachedDark: Boolean? = null
    private var cachedWidth = Float.NaN
    private var cachedHeight = Float.NaN
    private var cachedDrawHeight = Float.NaN

    private fun configureStaticUniforms(shader: RuntimeShader) {
        shader.setFloatUniform("uTranslateY", 0f)
        shader.setFloatUniform("uNoiseScale", 1.5f)
        shader.setFloatUniform("uPointRadiusMulti", 1f)
        shader.setFloatUniform("uAlphaMulti", 1f)
    }

    fun update(
        width: Float,
        height: Float,
        drawHeight: Float,
        deviceType: DragShareBackgroundDeviceType,
        dark: Boolean,
        preset: DragShareOs3Config.Config,
        stage: Float,
        time: Float,
    ) {
        if (resolution[0] != width || resolution[1] != height) {
            resolution[0] = width
            resolution[1] = height
            runtimeShader.setFloatUniform("uResolution", resolution)
        }
        if (cachedWidth != width || cachedHeight != height || cachedDrawHeight != drawHeight) {
            updateBounds(drawHeight, height, width)
            runtimeShader.setFloatUniform("uBound", bounds)
            cachedWidth = width
            cachedHeight = height
            cachedDrawHeight = drawHeight
        }
        if (cachedDeviceType != deviceType || cachedDark != dark) {
            runtimeShader.setFloatUniform("uPoints", preset.points)
            runtimeShader.setFloatUniform("uLightOffset", preset.lightOffset)
            runtimeShader.setFloatUniform("uSaturateOffset", preset.saturationOffset)
            cachedDeviceType = deviceType
            cachedDark = dark
        }
        if (cachedPreset !== preset || cachedColorStage != stage) {
            val base = stage.toInt()
            val fraction = stage - base
            val from = colorsForCycle(preset, base)
            val to = colorsForCycle(preset, base + 1)
            for (index in colors.indices) {
                colors[index] = from[index] + (to[index] - from[index]) * fraction
            }
            runtimeShader.setFloatUniform("uColors", colors)
            cachedPreset = preset
            cachedColorStage = stage
        }
        if (cachedPointPreset !== preset || cachedPointTime != time) {
            for (index in 0 until 4) {
                val x = preset.points[index * 3]
                val y = preset.points[index * 3 + 1]
                val animatedX = x + sin(time + y) * preset.pointOffset
                animatedPoints[index * 2] = animatedX
                animatedPoints[index * 2 + 1] = y + cos(time + animatedX) * preset.pointOffset
            }
            runtimeShader.setFloatUniform("uPointsAnim", animatedPoints)
            cachedPointPreset = preset
            cachedPointTime = time
        }
        if (animationTime != time) {
            animationTime = time
            runtimeShader.setFloatUniform("uAnimTime", time)
        }
    }

    private fun colorsForCycle(preset: DragShareOs3Config.Config, index: Int): FloatArray = when (index.mod(4)) {
        1 -> preset.colors1
        3 -> preset.colors3
        else -> preset.colors2
    }

    private fun updateBounds(drawHeight: Float, height: Float, width: Float) {
        val heightRatio = drawHeight / height
        if (width <= height) {
            bounds[0] = 0f
            bounds[1] = 1f - heightRatio
            bounds[2] = 1f
            bounds[3] = heightRatio
        } else {
            val aspectRatio = width / height
            bounds[0] = 0f
            bounds[1] = 1f - heightRatio / 2f - aspectRatio / 2f
            bounds[2] = 1f
            bounds[3] = aspectRatio
        }
    }
}

private fun Modifier.dragShareOs3Draw(
    painter: DragShareOs3Painter,
    preset: DragShareOs3Config.Config,
    deviceType: DragShareBackgroundDeviceType,
    dark: Boolean,
    surface: Color,
    playing: Boolean,
    colorStage: () -> Float,
    alpha: () -> Float,
): Modifier = this then DragShareOs3Element(
    painter = painter,
    preset = preset,
    deviceType = deviceType,
    dark = dark,
    surface = surface,
    playing = playing,
    colorStage = colorStage,
    alpha = alpha,
)

private data class DragShareOs3Element(
    val painter: DragShareOs3Painter,
    val preset: DragShareOs3Config.Config,
    val deviceType: DragShareBackgroundDeviceType,
    val dark: Boolean,
    val surface: Color,
    val playing: Boolean,
    val colorStage: () -> Float,
    val alpha: () -> Float,
) : ModifierNodeElement<DragShareOs3Node>() {
    override fun create(): DragShareOs3Node = DragShareOs3Node(
        painter = painter,
        preset = preset,
        deviceType = deviceType,
        dark = dark,
        surface = surface,
        playing = playing,
        colorStage = colorStage,
        alpha = alpha,
    )

    override fun update(node: DragShareOs3Node) {
        node.update(
            painter = painter,
            preset = preset,
            deviceType = deviceType,
            dark = dark,
            surface = surface,
            playing = playing,
            colorStage = colorStage,
            alpha = alpha,
        )
    }
}

private class DragShareOs3Node(
    private var painter: DragShareOs3Painter,
    private var preset: DragShareOs3Config.Config,
    private var deviceType: DragShareBackgroundDeviceType,
    private var dark: Boolean,
    private var surface: Color,
    private var playing: Boolean,
    private var colorStage: () -> Float,
    private var alpha: () -> Float,
) : Modifier.Node(), DrawModifierNode {
    private var animationJob: Job? = null
    private var animationTime = 0f
    private var startOffset = 0f

    override fun onAttach() {
        if (playing) startAnimation()
    }

    override fun onDetach() {
        animationJob?.cancel()
        animationJob = null
    }

    fun update(
        painter: DragShareOs3Painter,
        preset: DragShareOs3Config.Config,
        deviceType: DragShareBackgroundDeviceType,
        dark: Boolean,
        surface: Color,
        playing: Boolean,
        colorStage: () -> Float,
        alpha: () -> Float,
    ) {
        this.painter = painter
        this.preset = preset
        this.deviceType = deviceType
        this.dark = dark
        this.surface = surface
        this.colorStage = colorStage
        this.alpha = alpha
        if (this.playing != playing) {
            this.playing = playing
            if (playing) startAnimation() else {
                animationJob?.cancel()
                animationJob = null
            }
        }
        invalidateDraw()
    }

    private fun startAnimation() {
        animationJob?.cancel()
        startOffset = animationTime
        animationJob = coroutineScope.launch {
            val minDeltaNanos = 1_000_000_000L / 60L
            val origin = withFrameNanos { it }
            var lastEmit = origin
            while (isActive) {
                val now = withFrameNanos { it }
                if (now - lastEmit < minDeltaNanos) continue
                lastEmit = now
                animationTime = startOffset + (now - origin) / 1_000_000_000f
                invalidateDraw()
            }
        }
    }

    override fun ContentDrawScope.draw() {
        drawRect(surface)
        val effectAlpha = alpha()
        if (effectAlpha > 0f) {
            painter.update(
                width = size.width,
                height = size.height,
                drawHeight = size.height * 0.8f,
                deviceType = deviceType,
                dark = dark,
                preset = preset,
                stage = colorStage(),
                time = animationTime,
            )
            drawRect(painter.brush, alpha = effectAlpha)
        }
        drawContent()
    }
}

private const val DRAG_SHARE_OS3_SHADER = """
uniform vec2 uResolution;
uniform float uAnimTime;
uniform vec4 uBound;
uniform float uTranslateY;
uniform vec3 uPoints[4];
uniform vec2 uPointsAnim[4];
uniform vec4 uColors[4];
uniform float uAlphaMulti;
uniform float uNoiseScale;
uniform float uPointRadiusMulti;
uniform float uSaturateOffset;
uniform float uLightOffset;

vec3 rgb2hsv(vec3 c) {
    vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
    vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));
    vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));
    float d = q.x - min(q.w, q.y);
    float e = 1.0e-10;
    return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
}

vec3 hsv2rgb(vec3 c) {
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

float hash(vec2 p) {
    vec3 p3 = fract(vec3(p.xyx) * 0.13);
    p3 += dot(p3, p3.yzx + 3.333);
    return fract((p3.x + p3.y) * p3.z);
}

float perlin(vec2 x) {
    vec2 i = floor(x);
    vec2 f = fract(x);
    float a = hash(i);
    float b = hash(i + vec2(1.0, 0.0));
    float c = hash(i + vec2(0.0, 1.0));
    float d = hash(i + vec2(1.0, 1.0));
    vec2 u = f * f * (3.0 - 2.0 * f);
    return mix(a, b, u.x) + (c - a) * u.y * (1.0 - u.x) + (d - b) * u.x * u.y;
}

float gradientNoise(vec2 uv) {
    return fract(52.9829189 * fract(dot(uv, vec2(0.06711056, 0.00583715))));
}

vec4 main(vec2 fragCoord) {
    vec2 vUv = fragCoord / uResolution;
    vUv.y = 1.0 - vUv.y;
    vec2 uv = vUv;
    uv -= vec2(0.0, uTranslateY);
    uv -= uBound.xy;
    uv /= uBound.zw;

    vec4 color = vec4(0.0);
    float noiseValue = perlin(vUv * uNoiseScale + vec2(-uAnimTime, -uAnimTime));
    for (int i = 0; i < 4; i++) {
        vec4 pointColor = uColors[i];
        pointColor.rgb *= pointColor.a;
        vec2 point = uPointsAnim[i];
        float radius = uPoints[i].z * uPointRadiusMulti;
        float distanceToPoint = distance(uv, point);
        float percentage = smoothstep(radius, 0.0, distanceToPoint);
        color.rgb = mix(color.rgb, pointColor.rgb, percentage);
        color.a = mix(color.a, pointColor.a, percentage);
    }

    float oppositeNoise = smoothstep(0.0, 1.0, noiseValue);
    color.rgb /= color.a;
    vec3 hsv = rgb2hsv(color.rgb);
    hsv.y = mix(hsv.y, 0.0, oppositeNoise * uSaturateOffset);
    color.rgb = hsv2rgb(hsv);
    color.rgb += oppositeNoise * uLightOffset;
    color.a = clamp(color.a, 0.0, 1.0) * uAlphaMulti;
    color += (10.0 / 255.0) * gradientNoise(fragCoord.xy) - (5.0 / 255.0);
    return vec4(color.rgb * color.a, color.a);
}
"""
