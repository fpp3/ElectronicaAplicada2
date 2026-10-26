# GUION TÉCNICO Y COORDINACIÓN DE EXPOSICIÓN ORAL
## Electrónica Aplicada II — Cátedra 4R2 · Grupo 5 (UTN - FRC)
**Tema:** Respuesta en Frecuencia y Estabilidad con Realimentación  
**Integrantes:** Franco Palombo, Ignacio Gil, Angelo Prieto, Gastón Grasso  
**Duración Total Estimada:** 15 minutos (máximo 5 minutos por integrante, objetivo 3:30 a 4:00 minutos cada uno)

---

## Estructura General y Cronograma de Tiempos

| Bloque | Integrante | Temática Asignada | Filminas | Tiempo Objetivo |
| :--- | :--- | :--- | :---: | :---: |
| **Bloque 1** | **Franco Palombo** | Apertura, Parámetros, Criterio de Estabilidad, Diagrama de Bode y Fundamento Teórico | Filminas 1 a 7 | **03:30 min** |
| **Bloque 2** | **Ignacio Gil** | **Filtro Pasa Alto RLC:** Diseño de Ingeniería, Factor K, Q=0.25 vs Q=0.75 | Filminas 8 a 16 | **04:00 min** |
| **Bloque 3** | **Angelo Prieto** | **Compensación de Sistemas:** Planta 3er Orden, Inestabilidad, Retardo y Atraso-Adelanto | Filminas 17 a 44 | **04:30 min** |
| **Bloque 4** | **Gastón Grasso** | Comparativa Global, Selectividad, Viabilidad Constructiva y Conclusiones | Filminas 45 a 54 | **04:45 min** |
| **Total** | **Grupo 5** | **Exposición Formal Completa + Apertura a Preguntas** | **54 Filminas** | **~16:45 min** |

---

# BLOQUE 1: INTRODUCCIÓN Y MARCO TEÓRICO
### Responsable: Franco Palombo
**Tiempo asignado:** 00:00 a 03:30 (3 minutos 30 segundos)

---

### Filmina 1: Portada y Presentación del Equipo
* **Elementos en pantalla:** Membrete institucional UTN FRC con logo oficial, título formal del proyecto e integrantes en una línea formal unificada.
* **Acción física:** Mirar a los docentes a los ojos, postura erguida, tono seguro, pausado y profesional.
* **Texto a exponer (lectura en voz alta):**
> "Buenos días ingenieros y compañeros. Somos el Grupo 5 de la comisión 4R2 de Electrónica Aplicada II, integrado por Ignacio Gil, Angelo Prieto, Gastón Grasso y quien les habla, Franco Palombo.
>
> Hoy venimos a realizar la defensa técnica de nuestro trabajo titulado 'Respuesta en Frecuencia y Estabilidad con Realimentación'.
>
> El proyecto profundiza en dos núcleos esenciales de la ingeniería electrónica: por un lado, el modelado dinámico y frecuencial de un sistema lineal pasivo de segundo orden; y por el otro, la estabilidad relativa y las técnicas de compensación en frecuencia sobre una planta realimentada de tercer orden con alta ganancia.
>
> Hemos distribuido la exposición en cuatro bloques coordinados: yo brindaré el marco general, los parámetros de diseño asignados, el criterio de estabilidad de Bode con la interpretación gráfica de sus márgenes y el fundamento de segundo orden; Ignacio Gil desarrollará el cálculo analítico y los regímenes de amortiguamiento del filtro RLC; Angelo Prieto presentará la planta de tercer orden y sus redes de compensación; y finalmente Gastón Grasso analizará el contraste global, el impacto en ancho de banda y estabilidad, los casos de uso comunes en la industria, la matriz de decisión y las conclusiones integrales del proyecto."

---

### Filmina 2: Parámetros de Diseño Asignados
* **Elementos en pantalla:** Tabla formal con los parámetros y especificaciones de diseño asignados por la cátedra para el filtro pasa alto RLC y la planta realimentada de tercer orden con sus compensadores.
* **Acción física:** Señalar los valores en pantalla para dar testimonio del marco de partida riguroso.
* **Texto a exponer (lectura en voz alta):**
> "En pantalla observamos los parámetros asignados a nuestro grupo:
> * Para el filtro RLC de segundo orden: frecuencia de corte fc = 400 Hz a -3.01 dB, factores de calidad Q1 = 0.25 (fuertemente sobreamortiguado) y Q2 = 0.75 (subamortiguado selectivo), y una resistencia R adoptada en 100 ohms como compromiso de diseño para no cargar al generador de 50 ohms y mantener inductancias de valor manejable.
> * Para la planta de tercer orden: ganancia estática K = 900 (59.08 dB), polos reales en 12 kHz, 70 kHz y 140 kHz, y un Margen de Fase de diseño requerido de 45 grados.
> * Para la compensación: retardo puro con frecuencia característica fd = 1.2 kHz y capacitor de referencia de 100 nanofaradios; y red de atraso-adelanto con polo en 220 kHz, cero en 1.1 MHz y capacitor de referencia de 100 picofaradios.
>
> Todas las deducciones parten estrictamente de las expresiones analíticas exactas."

---

### Filmina 3: Fundamentos: Criterio de Estabilidad de Bode y Márgenes
* **Elementos en pantalla:** Condición de Estabilidad a la izquierda (realimentación unitaria, condición de oscilación en $|G|=1$ y $\angle G = -180^\circ$); Definición de Márgenes a la derecha ($MF$, $MG$ y Criterio Robusto de Diseño).
* **Acción física:** Explicar el concepto físico de realimentación positiva al alcanzar los -180 grados.
* **Texto a exponer (lectura en voz alta):**
> "Antes de ingresar al diseño de los circuitos, es fundamental revisar el criterio de estabilidad que gobierna todo el análisis.
>
> En un sistema realimentado unitario con función a lazo cerrado T(s) = G(s) / [1 + G(s)], el denominador se anula si la función de lazo abierto alcanza la condición crítica G(jω) = -1. Esto significa simultáneamente dos condiciones:
> * Ganancia de lazo unitaria, es decir, cero decibeles.
> * Y un desfasaje acumulado de exactamente menos 180 grados.
>
> Al alcanzar menos 180 grados, el signo negativo de la realimentación se invierte, transformándola en realimentación positiva. Si a esa frecuencia la ganancia de lazo es mayor o igual a cero decibeles, el sistema oscila y se vuelve inestable.
>
> Para cuantificar analíticamente cuán lejos se encuentra el lazo de esa condición crítica, definimos dos márgenes: el Margen de Fase (MF), que mide los grados que restan para alcanzar menos 180 grados cuando la ganancia cruza por cero decibeles; y el Margen de Ganancia (MG), que mide la atenuación requerida en la frecuencia donde la fase corta los menos 180 grados. Para garantizar un comportamiento dinámico sin sobreoscilaciones perjudiciales y tolerar dispersión de componentes, el criterio de diseño robusto exige MF >= 45 grados y MG >= 6 dB."

---

### Filmina 4: Visualización de Márgenes de Fase y Ganancia en Diagrama de Bode
* **Elementos en pantalla:** Diagrama de Bode conceptual interactivo en dos planos (magnitud y fase) con las frecuencias de cruce $\omega_{0\text{dB}}$ y $\omega_{180}$, la cota de $0\text{ dB}$, el límite crítico de $-180^\circ$ y las flechas de Margen de Fase ($MF > 0$) y Margen de Ganancia ($MG > 0$). A la derecha, tarjeta con la lectura matemática e interpretación física.
* **Acción física:** Señalar primero en el gráfico superior el cruce por 0 dB y bajar la mirada al gráfico de fase para mostrar el MF; luego señalar en el gráfico inferior el cruce por -180° y subir al gráfico de magnitud para mostrar el MG.
* **Texto a exponer (lectura en voz alta):**
> "Para comprender cómo se manifiestan estos márgenes en la práctica de la ingeniería, en pantalla observamos su lectura gráfica sobre el diagrama de Bode a lazo abierto:
>
> En primer lugar, en el trazado de magnitud identificamos la frecuencia de cruce omega cero dB, donde la curva atraviesa el nivel de cero decibeles. Proyectando esa frecuencia verticalmente hacia el diagrama de fase, medimos la distancia angular hasta el límite crítico de menos 180 grados. Esa distancia vertical es el Margen de Fase (MF). Físicamente, representa el retardo de fase máximo que el lazo puede admitir a ganancia unitaria antes de que la realimentación se vuelva positiva y oscile.
>
> En segundo lugar, en el trazado de fase buscamos la frecuencia omega 180, donde la curva cruza la cota crítica de menos 180 grados. Proyectando verticalmente hacia el trazado de magnitud, medimos la distancia desde la curva hasta el nivel de cero decibeles. Esa atenuación es el Margen de Ganancia (MG), que cuantifica la amplificación adicional que el lazo podría tolerar antes de alcanzar ganancia unitaria en la frecuencia de inversión de fase.
>
> En este ejemplo ambos márgenes son positivos, demostrando un sistema estable. Más adelante veremos cómo la planta de tercer orden viola severamente este criterio y cómo la corregimos mediante compensación."

---

### Filmina 5: Topología del Filtro Pasa Alto RLC
* **Elementos en pantalla:** Esquema circuital del filtro pasa alto pasivo de segundo orden RLC con generador y resistencia interna Rg, junto con la justificación topológica y el comportamiento asintótico.
* **Acción física:** Señalar la resistencia Rg en serie y el inductor en derivación a masa.
* **Texto a exponer (lectura en voz alta):**
> "Entrando en el diseño del filtro pasa alto, adoptamos la topología pasiva de segundo orden RLC serie-derivación.
>
> Un detalle de ingeniería central es la resistencia interna del generador Rg = 50 ohms: queda conectada en serie directa con la resistencia R de 100 ohms elegida, conformando una resistencia total de malla Rt = 150 ohms. Esta resistencia protege al generador frente a condiciones de cortocircuito incluso cuando las reactancias del capacitor o del inductor se hacen cero.
>
> En cuanto a su funcionamiento asintótico: a muy baja frecuencia el inductor se comporta como un cortocircuito a masa y el capacitor bloquea la continua, con lo cual la transferencia tiende a cero. A muy alta frecuencia ocurre exactamente lo opuesto: el capacitor se cortocircuita y el inductor se abre, transfiriendo la totalidad de la señal a la salida."

---

### Filmina 6: Deducción de la Función de Transferencia H(s)
* **Elementos en pantalla:** Tarjeta analítica paso a paso: divisor de tensión en el dominio de Laplace, ordenamiento algebraico y expresión canónica normalizada.
* **Acción física:** Mostrar cómo se llega a la forma estándar de segundo orden.
* **Texto a exponer (lectura en voz alta):**
> "Aplicando un divisor de tensión en el dominio transformado de Laplace, planteamos:
>
> Vo(s) sobre Vi(s) es igual a s·L dividido la impedancia total de la malla: Rt más 1 sobre s·C más s·L.
>
> Multiplicando numerador y denominador por s sobre L y reordenando en potencias decrecientes de s, obtenemos la forma canónica:
>
> H(s) = s² / [ s² + (Rt/L)·s + 1/(L·C) ]
>
> Comparándola con la expresión estándar de un pasa alto de segundo orden: s² / [ s² + 2·ξ·ω₀·s + ω₀² ], identificamos de forma unívoca la pulsación natural ω₀ = 1 / √(L·C) y el término lineal amortiguador 2·ξ·ω₀ = ω₀ / Q = Rt / L."

---

### Filmina 7: Relación entre Factor Q y Amortiguamiento
* **Elementos en pantalla:** Tabla de equivalencias teóricas entre factor de calidad Q, coeficiente de amortiguamiento ξ, tipo de régimen dinámico y ubicación de polos.
* **Acción física:** Resaltar la relación inversa ξ = 1 / (2·Q).
* **Texto a exponer (lectura en voz alta):**
> "La relación entre el factor de calidad Q y el amortiguamiento relativo ξ es estrictamente inversa: ξ = 1 / (2·Q).
>
> Para nuestro primer caso con Q1 = 0.25, obtenemos un coeficiente ξ = 2.0 (mayor a 1), lo que define un régimen fuertemente sobreamortiguado, con dos polos reales y distintos sobre el eje negativo.
>
> Para el segundo caso con Q2 = 0.75, tenemos ξ = 0.667 (menor a 1), lo que da origen a un régimen subamortiguado, donde los polos forman un par complejo conjugado.
>
> A continuación, mi compañero Ignacio Gil demostrará cómo calculamos el factor de escala K y cómo dimensionamos los componentes comerciales para materializar ambos regímenes."
* **Pase de palabra a:** Ignacio Gil.

---

# BLOQUE 2: FILTRO RLC — DISEÑO, POLOS Y RESPUESTA TEMPORAL
### Responsable: Ignacio Gil
**Tiempo asignado:** 03:30 a 07:30 (4 minutos 00 segundos)

---

### Filmina 8: Relación entre Pulsación Natural ω₀ y Frecuencia de Corte ωc
* **Elementos en pantalla:** Dos tarjetas: Origen del desvío en frecuencia a la izquierda; Definición del factor corrector K a la derecha.
* **Acción física:** Mirar a los profesores y enfatizar que este es un punto conceptual central del diseño.
* **Texto a exponer (lectura en voz alta):**
> "Muchas gracias Franco. Un aspecto central del procedimiento fue analizar la relación entre la pulsación natural omega cero y la frecuencia de corte omega c:
>
> ¿Por qué la pulsación natural omega cero no coincide con la frecuencia de corte omega c?
>
> La pulsación natural coincide con la de corte únicamente cuando Q es igual a uno sobre raíz de dos, es decir, en una respuesta de Butterworth. Si evaluamos la función de transferencia pasa alto en omega igual a omega cero, el módulo resulta exactamente igual a Q.
>
> Para Q1 = 0.25, en omega cero la ganancia vale 0.25, es decir, -12.04 dB. Como el corte exige -3.01 dB, debemos desplazarnos hacia frecuencias más altas, por lo que omega c es mayor a omega cero, resultando K menor a uno (K1 = 0.2666).
>
> En cambio, para Q2 = 0.75, la ganancia en omega cero vale 0.75 (-2.50 dB), superando los -3.01 dB, por lo que el corte ocurre antes, resultando K mayor a uno (K2 = 1.0570).
>
> Para corregir este desvío e imponer con exactitud los -3.01 dB en 400 Hz, introdujimos la constante de corrección K, tal que omega cero es igual a K por omega c."

---

### Filmina 9: Deducción Analítica del Factor de Corrección K
* **Elementos en pantalla:** Condición de -3 dB en variable normalizada x = omega / omega 0, ecuación bicuadrática, expresión analítica de K y valores calculados para el Grupo 5.
* **Acción física:** Apuntar a la fórmula analítica y a los valores exactos calculados.
* **Texto a exponer (lectura en voz alta):**
> "Para deducir la expresión analítica de K, imponemos la condición de corte de -3 dB sobre el módulo al cuadrado, igualándolo a un medio con la variable normalizada x = omega / omega cero.
>
> Esto conduce a la ecuación bicuadrática: x⁴ + (2 - 1/Q²) x² - 1 = 0.
>
> Definiendo el parámetro a = 1 - 1 / (2·Q²), la única raíz real positiva es xc² = -a + √(a² + 1). Como K = omega cero / omega c = 1 / xc, racionalizando obtenemos la expresión analítica final de K:
>
> K = √[ (1 - 1/(2·Q²)) + √( (1 - 1/(2·Q²))² + 1 ) ]
>
> Reemplazando nuestros datos para fc = 400 Hz:
> * Para Q1 = 0.25: el parámetro a vale -7, resultando K1 = 0.2666. Esto sitúa la pulsación natural en omega cero, uno = 670.0 rad/s, equivalente a una frecuencia natural f0,1 = 106.6 Hz.
> * Para Q2 = 0.75: el parámetro a vale 0.1111, resultando K2 = 1.0570, lo que ubica la pulsación natural en omega cero, dos = 2656.5 rad/s, equivalente a f0,2 = 422.8 Hz.
>
> Con estos valores exactos aseguramos que ambos filtros corten exactamente a -3.01 dB en 400 Hz."

---

### Filmina 10: Dimensionamiento de Componentes (R = 100 ohms)
* **Elementos en pantalla:** Dos columnas: caso Q=0.25 y caso Q=0.75 con fórmulas de dimensionamiento L = (R·Q)/omega0 y C = 1/(omega0·R·Q), inductancias, capacidades y factores de amortiguamiento calculados.
* **Acción física:** Explicar el criterio de elección de la resistencia R = 100 ohms y el dimensionamiento resultante.
* **Texto a exponer (lectura en voz alta):**
> "Con las pulsaciones naturales omega cero calculadas, dimensionamos los componentes a partir de las relaciones analíticas: L = (R · Q) / omega cero, y C = 1 / (omega cero · R · Q).
>
> Adoptamos la resistencia R = 100 ohms como parámetro libre de diseño. Esta elección es un compromiso fundamental: es el doble de la resistencia interna del generador (Rg = 50 ohms), por lo que la fuente no altera sustancialmente el factor de calidad, y al mismo tiempo mantiene las inductancias en valores de decenas de milihenrios, perfectamente viables.
>
> Aplicando las ecuaciones:
> * En el Caso 1 (Q1 = 0.25): con omega cero = 670.0 rad/s, obtenemos una inductancia L1 = 37.31 milihenrios y una capacidad C1 = 59.70 microfaradios. El factor de amortiguamiento resulta xi1 = 1 / (2·Q1) = 2.000, confirmando un régimen fuertemente sobreamortiguado.
> * En el Caso 2 (Q2 = 0.75): con omega cero = 2656.5 rad/s, calculamos una inductancia L2 = 28.23 milihenrios y una capacidad C2 = 5.02 microfaradios. El factor de amortiguamiento resulta xi2 = 1 / (2·Q2) = 0.667, verificando un régimen subamortiguado."

---

### Filmina 11: Régimen Sobreamortiguado (Q = 0.25): Polos en Plano s
* **Elementos en pantalla:** Tarjeta con la función H1(s), raíces reales en s1 = -179.5 rad/s y s2 = -2500.7 rad/s, y diagrama de polos en plano complejo.
* **Acción física:** Apuntar a la cercanía del polo dominante s1 respecto al origen.
* **Texto a exponer (lectura en voz alta):**
> "Analizando las raíces del sistema para Q1 = 0.25:
>
> Al ser ξ = 2.0 (mayor a 1), el polinomio característico posee raíces reales negativas en s1 = -179.53 rad/s y s2 = -2500.72 rad/s, junto a un cero doble en el origen debido a la naturaleza pasa alto.
>
> Observen que la raíz s1 se encuentra 14 veces más próxima al eje imaginario que s2. Esto significa que s1 actúa como el polo dominante del filtro, imponiendo una constante de tiempo lenta de τ₁ = 1 / |s1| = 5.57 milisegundos. El polo rápido s2 se extingue en apenas 0.4 milisegundos, por lo que la cola transitoria queda gobernada enteramente por s1."

---

### Filmina 12: Régimen Sobreamortiguado (Q = 0.25): Respuesta al Escalón
* **Elementos en pantalla:** Expresión analítica temporal vo(t), parámetros clave (tiempo de caída = 0.70 ms, subpico = -4.8%, ts = 7.53 ms) y gráfico de respuesta al escalón unitario.
* **Acción física:** Mostrar en el gráfico la caída suave y el pequeño paso por valores negativos antes de alcanzar el reposo.
* **Texto a exponer (lectura en voz alta):**
> "Aplicando la antitransformada de Laplace para un escalón unitario de entrada, obtenemos la respuesta temporal analítica:
>
> vo(t) = [ 1.07734 · e^(-2500.72·t) - 0.07734 · e^(-179.53·t) ] · u(t)
>
> En t = 0+, el capacitor se comporta como cortocircuito y el inductor como circuito abierto, por lo que la salida reproduce íntegramente el salto inicial alcanzando 1 Volt.
>
> Luego, la tensión desciende con un tiempo de caída entre el 90% y el 10% de 0.70 milisegundos.
>
> El término rápido se extingue en fracciones de milisegundo, mientras que el término lento provoca un pequeño paso por valores negativos, registrando un subpico máximo de apenas el -4.8% en 2.27 milisegundos.
>
> El tiempo de establecimiento al 2% requiere ts = 7.53 milisegundos, gobernado casi exclusivamente por la constante de tiempo del polo dominante tau1 = 5.57 milisegundos. Es una respuesta suave, no oscilatoria y predecible."

---

### Filmina 13: Régimen Subamortiguado (Q = 0.75): Polos Complejos Conjugados
* **Elementos en pantalla:** Función H2(s), par complejo conjugado s1,2 = -1771.17 ± j 1979.75 rad/s, y mapa de polos en plano s.
* **Acción física:** Señalar la parte real σ y la pulsación amortiguada ωd.
* **Texto a exponer (lectura en voz alta):**
> "Pasemos ahora al caso Q2 = 0.75:
>
> Al ser ξ = 0.667 (menor a 1), el discriminante es negativo y las raíces se convierten en un par complejo conjugado:
>
> s1,2 = -1771.17 ± j 1979.75 rad/s
>
> La parte real σ = 1771.17 rad/s define la tasa de atenuación exponencial, fijando una constante de envolvente τ₂ = 1 / σ = 0.56 milisegundos, ¡diez veces más rápida que en el caso sobreamortiguado!
>
> La parte imaginaria ωd = 1979.75 rad/s corresponde a la pulsación natural amortiguada, con una frecuencia propia de oscilación de 315.1 Hz."

---

### Filmina 14: Régimen Subamortiguado (Q = 0.75): Respuesta Temporal y Subpico
* **Elementos en pantalla:** Ecuación temporal oscilatoria amortiguada vo(t), parámetros clave (tiempo de caída = 0.33 ms, cruce por cero = 0.425 ms, subpico = -22.2% en 0.85 ms, ts = 1.82 ms) y gráfico con envolvente exponencial.
* **Acción física:** Señalar el cruce por cero y la rápida extinción del transitorio en menos de 2 milisegundos.
* **Texto a exponer (lectura en voz alta):**
> "En el caso subamortiguado con Q2 = 0.75, la respuesta temporal al escalón unitario resulta:
>
> vo(t) = e^(-1771.17·t) · [ cos(1979.75·t) - 0.8946 · sin(1979.75·t) ] · u(t)
>
> Nuevamente la salida inicia en 1 Volt, pero ahora la dinámica es notablemente más veloz: el tiempo de caída se reduce a más de la mitad, alcanzando tan solo 0.33 milisegundos.
>
> La salida cruza por cero a los 0.425 milisegundos y alcanza un subpico pronunciado del -22.2% en 0.85 milisegundos.
>
> La respuesta oscila con una pulsación amortiguada omega d = 1979.75 rad/s (período de 3.17 milisegundos). Sin embargo, la fuerte atenuación de la envolvente exponencial (sigma = 1771.17) hace que la oscilación se extinga rápidamente, ingresando de forma definitiva en la banda del 2% en apenas ts = 1.82 milisegundos.
>
> Esto representa una recuperación del reposo 4.1 veces más rápida que en el diseño sobreamortiguado."

---

### Filmina 15: Comparativa Temporal Directa: Q = 0.25 vs Q = 0.75
* **Elementos en pantalla:** Gráfico superpuesto de ambas respuestas temporales y tabla comparativa directa de parámetros temporales y de componentes calculados.
* **Acción física:** Recorrer las filas contrastando el compromiso entre velocidad y subpico.
* **Texto a exponer (lectura en voz alta):**
> "En esta filmina observamos la superposición directa de ambas respuestas temporales junto con el cuadro comparativo de desempeño:
>
> Si bien ambos filtros comparten rigurosamente la misma frecuencia de corte de 400 Hz a -3.01 dB, su comportamiento en el tiempo es diametralmente opuesto:
> * El filtro sobreamortiguado (curva azul) decae de forma monótona, con un subpico despreciable de solo el -4.8%, pero tarda 7.53 milisegundos en establecerse y requiere componentes mayores: 37.31 milihenrios y 59.70 microfaradios.
> * El filtro subamortiguado (curva roja) sufre un subpico cuatro veces y media mayor (-22.2%), pero su tiempo de caída es de 0.33 milisegundos y se establece cuatro veces más rápido (1.82 milisegundos), empleando un capacitor mucho menor de 5.02 microfaradios.
>
> Este compromiso ilustra con total claridad el dilema fundamental entre rapidez y excursión transitoria."

---

### Filmina 16: Comparativa Frecuencial Directa: Q = 0.25 vs Q = 0.75
* **Elementos en pantalla:** Gráfico superpuesto de los diagramas de Bode de magnitud y tabla resumen de parámetros frecuenciales.
* **Acción física:** Señalar que ambas curvas cruzan con precisión matemática en los -3.01 dB en 400 Hz.
* **Texto a exponer (lectura en voz alta):**
> "Finalmente, el contraste en el dominio de la frecuencia:
>
> Observen que ambas curvas coinciden con exactitud matemática en el punto de corte asignado: -3.01 dB a 400 Hz. Esto comprueba el éxito del factor corrector K.
>
> Sin embargo, la forma de la transición es muy diferente: la curva azul (Q = 0.25) posee una rodilla muy suave y atenuada prematuramente en la banda de paso; en cambio, la curva roja (Q = 0.75) ofrece una transición selectiva y abrupta, preservando un nivel de señal mucho mayor en la banda útil.
>
> Concluyendo el análisis del filtro pasa alto: Q = 0.25 es mandatorio cuando se exige respuesta estrictamente aperiódica; mientras que Q = 0.75 ofrece mayor velocidad y selectividad.
>
> Ahora le cedo la palabra a Angelo Prieto para desarrollar el análisis de estabilidad y compensación de la planta."
* **Pase de palabra a:** Angelo Prieto.

---

# BLOQUE 3: PLANTA DE 3ER ORDEN Y COMPENSACIÓN EN FRECUENCIA
### Responsable: Angelo Prieto
**Tiempo asignado:** 07:30 a 11:15 (3 minutos 45 segundos)

---

### Filmina 17: Planta de Tercer Orden y Parámetros
* **Elementos en pantalla:** Función de transferencia de la planta G(s), ganancia K=900 (59.08 dB), polos en 12 kHz, 70 kHz y 140 kHz.
* **Acción física:** Presentar la planta con autoridad técnica.
* **Texto a exponer (lectura en voz alta):**
> "Muchas gracias Ignacio. Pasamos ahora al análisis y compensación de estabilidad sobre una planta lineal de tercer orden.
>
> La función de transferencia a lazo abierto asignada al Grupo 5 es:
>
> G(s) = K / [ (1 + s / 2π·12k) · (1 + s / 2π·70k) · (1 + s / 2π·140k) ]
>
> Se trata de un sistema con tres polos reales en frecuencias asimétricas (12 kHz, 70 kHz y 140 kHz) y una ganancia en continua sumamente elevada: K = 900, equivalente a 59.08 dB.
>
> Esta enorme ganancia estática es el origen directo del problema de estabilidad que debemos resolver."

---

### Filmina 18: Respuesta en Frecuencia a Lazo Abierto (Bode)
* **Elementos en pantalla:** Diagrama de Bode de la planta sin compensar y desglose de las asíntotas y pendientes acumuladas.
* **Acción física:** Rastrear con la mano la caída de magnitud y la fase hacia -270 grados.
* **Texto a exponer (lectura en voz alta):**
> "Analizando el diagrama de Bode a lazo abierto observamos tres zonas dinámicas:
> * Por debajo de 12 kHz, la ganancia se mantiene plana en +59.08 dB con fase cercana a 0 grados.
> * Entre 12 kHz y 70 kHz, actúa el primer polo y la magnitud cae a -20 dB/década, con la fase alcanzando -90 grados.
> * A partir de 70 kHz, se activa el segundo polo aumentando la pendiente a -40 dB/década e impulsando la fase hacia -180 grados. Y por encima de 140 kHz, los tres polos juntos degradan la pendiente a -60 dB/década y la fase cae hacia -270 grados.
>
> El ancho de banda a -3 dB de la planta original se sitúa en BW = 11.59 kHz."

---

### Filmina 19: Diagnóstico de Inestabilidad a Lazo Cerrado
* **Elementos en pantalla:** Dos tarjetas: Cálculo analítico del cruce de fase en f180 = 110.99 kHz con |G| = 32.14 dB a la izquierda; Diagnóstico de inestabilidad y margen negativo MG = -32.14 dB a la derecha.
* **Acción física:** Enfatizar la gravedad de los +32 dB de ganancia en el cruce de fase.
* **Texto a exponer (lectura en voz alta):**
> "Si evaluamos la condición de estabilidad de Bode, descubrimos la patología de la planta:
>
> El cruce de fase por -180 grados ocurre a f180 = 110.99 kHz. Pero a esa frecuencia, la ganancia de lazo todavía se encuentra en +32.14 dB.
>
> Esto arroja un Margen de Ganancia directo de -32.14 dB: la señal realimentada en fase positiva se amplifica por más de 40 veces en cada ciclo.
>
> Por ende, si cerráramos el lazo directamente con realimentación unitaria sin compensar, la planta auto-oscilaría con violencia hacia la saturación. La compensación en frecuencia no es una mejora opcional: es una necesidad imperiosa para que el circuito funcione."

---

### Filmina 20: Criterio de Calibración para Margen de Fase MF = 45°
* **Elementos en pantalla:** Formulación del criterio de diseño para MF = 45 grados, identificación de la frecuencia objetivo f45 = 52.9 kHz y atenuación requerida de 43.44 dB.
* **Acción física:** Explicar con precisión cómo se ubica la frecuencia objetivo de fase -135 grados.
* **Texto a exponer (lectura en voz alta):**
> "Para estabilizar el lazo, la cátedra nos impone garantizar un Margen de Fase de 45 grados.
>
> Un MF = 45 grados exige que cuando la ganancia de lazo compensada corte los 0 dB, la fase neta sea exactamente de -135 grados.
>
> En la planta sin compensar, la fase alcanza -135 grados a la frecuencia f45 = 52.90 kHz, donde la planta tiene una ganancia disponible de +43.44 dB.
>
> Por lo tanto, la misión de la red compensadora es introducir la atenuación y el desfase necesarios para obligar a la magnitud a cruzar por 0 dB preservando este margen. Para resolver este desafío proyectamos dos topologías: Retardo puro y Atraso-Adelanto."

---

### Filmina 21: Síntesis del Compensador de Retardo (Lag)
* **Elementos en pantalla:** Esquema circuital del filtro pasa bajo RC serie-derivación, fórmulas de cálculo, capacitor adoptado C = 100 nF y resistencia normalizada R = 1.33 kohms.
* **Acción física:** Apuntar a los componentes y justificar el principio del polo dominante.
* **Texto a exponer (lectura en voz alta):**
> "El primer método es el Compensador de Retardo de Fase, implementado mediante una red pasiva RC serie-derivación:
>
> La función de transferencia de la red es Gc(s) = 1 / (1 + s·R·C), introduciendo un polo en fd = 1 / (2π·R·C).
>
> Siguiendo las especificaciones de cátedra, adoptamos un capacitor comercial de C = 100 nanofaradios y ubicamos la frecuencia de corte en fd = 1.2 kHz.
>
> Despejando la resistencia necesaria: R = 1 / (2π · fd · C) ≈ 1326.29 ohms, normalizada a 1.33 kohms al 1% en Serie E96.
>
> El principio de funcionamiento es la creación de un polo dominante temprano: al situarse en 1.2 kHz, ataca y derriba la ganancia mucho antes de que los polos de la planta aporten desfasaje peligroso."

---

### Filmina 22: Compensador de Retardo: Respuesta y Pérdida de Ancho de Banda
* **Elementos en pantalla:** Diagrama de Bode compensado con retardo, verificación de MF = 45 grados y MG = 13.04 dB, y tarjeta destacando el colapso de ancho de banda.
* **Acción física:** Señalar en el gráfico la caída temprana de la ganancia y el ancho de banda resultante.
* **Texto a exponer (lectura en voz alta):**
> "En pantalla observamos la respuesta con el compensador de retardo conectado:
>
> El sistema cumple holgadamente la estabilidad: el cruce por 0 dB se produce ahora en f45 = 9.96 kHz con un Margen de Fase exacto de 45 grados, y el Margen de Ganancia disponible asciende a 13.04 dB, superando los 6 dB mínimos.
>
> Sin embargo, el costo ingenieril es brutal: el ancho de banda útil a -3 dB colapsa de 11.59 kHz a tan solo 1.19 kHz, lo que representa una pérdida del 89.7% del ancho de banda útil de la planta. El lazo es estable, pero se volvió casi diez veces más lento."

---

### Filmina 23: Red de Atraso-Adelanto: Estructura Topológica
* **Elementos en pantalla:** Esquema de la red de atraso-adelanto (R1 en serie, y rama derivación con R2 en serie con C), función de transferencia de la red, y parámetros asignados (fp = 220 kHz, fz = 1.1 MHz, C = 100 pF).
* **Acción física:** Mostrar la rama en derivación mixta que introduce el cero de adelanto.
* **Texto a exponer (lectura en voz alta):**
> "Para superar el sacrificio de ancho de banda proyectamos la segunda opción: la Red de Atraso-Adelanto (Lead-Lag).
>
> Esta red incorpora una resistencia R1 en serie y una rama en derivación compuesta por R2 en serie con el capacitor C. Su función de transferencia es:
>
> Gc2(s) = (1 + s·R2·C) / [ 1 + s·(R1 + R2)·C ] = (1 + s / 2π·fz) / (1 + s / 2π·fp)
>
> La cátedra asignó ubicar el polo en fp = 220 kHz y el cero en fz = 1.1 MHz, adoptando un capacitor de C = 100 picofaradios.
>
> La gran virtud radica en que ambas frecuencias se ubican muy por encima de 12 kHz. Por lo tanto, en toda la banda base la red no introduce atenuación y mantiene el ancho de banda de la planta prácticamente intacto."

---

### Filmina 24: Red de Atraso-Adelanto: Respuesta y Preservación de Ancho de Banda
* **Elementos en pantalla:** Cálculo de R1 = 6.58 kohms y R2 = 1.45 kohms, verificación de MF = 45 grados, BW = 11.56 kHz y diagrama de Bode compensado.
* **Acción física:** Mostrar con orgullo técnico que el ancho de banda útil se conservó en un 99.7%.
* **Texto a exponer (lectura en voz alta):**
> "Despejando los componentes pasivos:
> * A partir del cero: R2 = 1 / (2π · fz · C) ≈ 1446.86 ohms, normalizada a 1.45 kohms al 1% en Serie E96.
> * A partir del polo: R1 + R2 = 1 / (2π · fp · C) ≈ 7234.32 ohms. Despejando R1 resulta 5787.45 ohms, que normalizada al 1% en Serie E96 adopta el valor de 5.76 kohms.
>
> Analizando el Bode compensado, los resultados son sobresalientes:
> * Frecuencia de cruce para MF = 45 grados: f45 = 45.11 kHz (frente a los 9.96 kHz del retardo).
> * Margen de Ganancia disponible: MG45 = 8.96 dB (mayor a 6 dB).
> * Y lo más impresionante: el ancho de banda útil resulta BW = 11.56 kHz, reteniendo el 99.7% del ancho de banda original.
>
> A continuación, Gastón Grasso presentará el análisis comparativo global de ambos sistemas, los criterios de aplicación en ingeniería y las conclusiones finales."
* **Pase de palabra a:** Gastón Grasso.

---

# BLOQUE 4: ANÁLISIS COMPARATIVO GLOBAL, APLICACIONES Y CONCLUSIONES
### Responsable: Gastón Grasso
**Tiempo asignado:** 12:00 a 16:45 (4 minutos 45 segundos)

---

### Filmina 45: Comparativa de Bodes: Planta Original vs Compensadores
* **Elementos en pantalla:** Gráfico comparativo de Bode con las tres curvas superpuestas: Curva azul (planta original), Curva roja (retardo RC) y Curva verde (atraso-adelanto). A la derecha, tarjeta con desglose analítico visual.
* **Acción física:** Apuntar a la pantalla y guiar visualmente la mirada de los profesores a través de las tres curvas.
* **Texto a exponer (lectura en voz alta):**
> "Muchas gracias Angelo. Para integrar los resultados del análisis de estabilidad y compensación, en esta filmina superponemos las tres respuestas en frecuencia en un único diagrama de Bode:
>
> La curva azul representa la planta original sin compensar: con un ancho de banda útil de 11.59 kHz pero incondicionalmente inestable al cerrar el lazo, dado su margen de ganancia negativo de -32.14 dB.
>
> La curva roja muestra el compensador de retardo: fíjense cómo derriba la magnitud prematuramente a partir de 1.2 kHz. Logra estabilizar el lazo, pero comprime el ancho de banda útil a un estrecho cuello de botella de 1.19 kHz, representando una pérdida del 89.7% del espectro original.
>
> En cambio, la curva verde ilustra la red de atraso-adelanto: prácticamente calca la respuesta de la planta original en toda su banda de paso hasta los 12 kHz, preservando 11.56 kHz, e introduce su acción atenuadora únicamente en alta frecuencia.
>
> El gráfico evidencia con total claridad la superioridad dinámica de la compensación atraso-adelanto."

---

### Filmina 46: Cuadro Comparativo Cuantitativo Integral ($MF = 45^\circ$)
* **Elementos en pantalla:** Tabla comparativa numérica exhaustiva con las 9 variables de diseño para la planta original, compensador de retardo y atraso-adelanto.
* **Acción física:** Recorrer las filas clave de la tabla con precisión métrica.
* **Texto a exponer (lectura en voz alta):**
> "En esta tabla sintetizamos la totalidad de los datos analíticos de estabilidad y desempeño:
>
> Un primer aspecto fundamental es que ambos compensadores conservan intacta la ganancia estática en continua en +59.08 dB (900 veces), garantizando precisión y error de régimen permanente nulo ante entradas constantes.
>
> Sin embargo, al observar la variación porcentual del ancho de banda útil a lazo abierto:
> * El compensador de retardo sufre una pérdida drástica del -89.7% del espectro útil.
> * El compensador de atraso-adelanto apenas registra una variación residual del -0.3%, reteniendo 11.56 kHz y operando a una frecuencia de cruce de 45.11 kHz, cuatro veces y media más veloz que el retardo (9.96 kHz).
>
> Ambas alternativas verifican con creces el criterio estándar de estabilidad robusta en ingeniería (MG >= 6 dB): 13.04 dB en retardo y 8.96 dB en atraso-adelanto."

---

### Filmina 47: Impacto sobre el Ancho de Banda y Rapidez de Respuesta
* **Elementos en pantalla:** Dos columnas comparando en profundidad el impacto en el ancho de banda y la rapidez entre el compensador de retardo y la red atraso-adelanto.
* **Acción física:** Contrastar la acción del polo dominante frente a la red pasiva con singularidades en alta frecuencia.
* **Texto a exponer (lectura en voz alta):**
> "Profundizando en este balance dinámico, examinamos el impacto sobre el ancho de banda y la rapidez:
>
> En el compensador de retardo, el polo introducido en 1.2 kHz actúa como polo dominante, forzando una caída prematura de -20 dB por década. Como el ancho de banda base de la planta era de 11.59 kHz, este polo contrae drásticamente el ancho de banda a lazo abierto a solo 1.19 kHz. Por ende, la frecuencia de cruce para Margen de Fase de 45 grados se alcanza a baja velocidad: apenas 9.96 kHz.
>
> En marcado contraste, la red de atraso-adelanto sitúa su polo en 220 kHz y su cero en 1.1 MHz, ambas frecuencias ubicadas holgadamente por encima del primer polo de la planta en 12 kHz. De este modo, la ganancia y la fase en bajas frecuencias se mantienen intactas: el ancho de banda útil resulta de 11.56 kHz, reteniendo el 99.7% del ancho de banda original, y permitiendo operar a una frecuencia de cruce de 45.11 kHz, 4.5 veces más rápida."

---

### Filmina 48: Margen de Ganancia y Mecanismos de Atenuación
* **Elementos en pantalla:** Dos tarjetas: Márgenes obtenidos para $MF = 45^\circ$ a la izquierda; Atenuación y dinámica de fase a la derecha.
* **Acción física:** Enfatizar la diferencia en la atenuación de alta frecuencia entre una pendiente infinita y un escalón acotado.
* **Texto a exponer (lectura en voz alta):**
> "Analizando los márgenes de estabilidad y el mecanismo de atenuación:
>
> La planta sin compensar presentaba un margen fuertemente negativo de -32.14 dB. Con la compensación, ambas redes logran estabilidad robusta superando el umbral de 6 dB: el retardo entrega un Margen de Ganancia de 13.04 dB cruzando por -180 grados en 24.35 kHz; mientras que el atraso-adelanto entrega 8.96 dB cruzando en 84.49 kHz.
>
> La diferencia esencial radica en la pendiente en alta frecuencia:
> * La red de retardo mantiene indefinidamente la pendiente de -20 dB por década en todo el espectro superior, proporcionando la máxima atenuación de ruidos de alta frecuencia.
> * En la red de atraso-adelanto, en cambio, la atenuación está estrictamente acotada entre el polo en 220 kHz y el cero en 1.1 MHz por el divisor resistivo R2 sobre R1 más R2, equivalente a un quinto o -13.98 dB. A partir de 1.1 MHz el cero detiene la caída y recupera fase.
>
> El retardo brinda 4.08 dB más de margen, pero el atraso-adelanto cuadruplica la velocidad del lazo."

---

### Filmina 49: Viabilidad Constructiva y Aplicaciones de los Compensadores
* **Elementos en pantalla:** Dos tarjetas detallando las áreas de aplicación óptima y los aspectos constructivos en placa para atraso-adelanto y retardo RC.
* **Acción física:** Explicar el compromiso constructivo entre los 100 pF y los 100 nF.
* **Texto a exponer (lectura en voz alta):**
> "Desde la perspectiva constructiva y de viabilidad técnica de nuestro diseño:
>
> La red de atraso-adelanto resulta la opción superadora para etapas de amplificación de instrumentación o procesamiento de señales donde el tiempo de establecimiento sea un parámetro crítico, ya que preserva el 99.7% del ancho de banda útil con un margen de ganancia robusto de 8.96 dB. Su consideración constructiva clave radica en el capacitor de 100 picofaradios: al ser un valor pequeño, requiere un diseño cuidadoso de pistas en la PCB para mitigar capacidades parásitas que puedan desplazar las frecuencias singulares de la red.
>
> Por otro lado, la compensación por retardo RC se perfila como la alternativa idónea en aplicaciones donde prime la inmunidad al ruido y la tolerancia frente a derivas térmicas o dispersión de fabricación. Su capacitor de 100 nanofaradios es totalmente insensible a capacidades parásitas de pista, garantizando robustez a costa de una respuesta temporal perceptiblemente más lenta."

---

### Filmina 50: Comparativa Temporal y Frecuencial del Filtro RLC (2do Orden)
* **Elementos en pantalla:** Superposición directa de respuestas al escalón a la izquierda y diagramas de Bode a la derecha. Cuadro inferior con raíces y parámetros temporales de Q=0.25 y Q=0.75.
* **Acción física:** Integrar el análisis del filtro de segundo orden vinculando el tiempo con la frecuencia.
* **Texto a exponer (lectura en voz alta):**
> "Retomando el análisis del filtro pasa alto de segundo orden, en pantalla superponemos las respuestas temporales al escalón y las curvas de módulo en frecuencia:
>
> Si bien ambos filtros comparten rigurosamente la frecuencia de corte asignada de 400 Hz a -3.01 dB, su comportamiento transitorio es claramente distinto:
> * Para Q = 0.25 (ξ = 2.0, sobreamortiguado), las raíces reales se ubican en -179.5 rad/s y -2500.7 rad/s. La respuesta decae de forma monótona, con un subpico de apenas el -4.8%, pero tarda 7.53 milisegundos en establecerse, gobernada por la constante de tiempo del polo dominante en 28.6 Hz.
> * Para Q = 0.75 (ξ = 0.667, subamortiguado), las raíces forman un par complejo conjugado en -1771.2 ± j 1979.8 rad/s. La respuesta es notablemente más veloz: el tiempo de caída se reduce a la mitad (0.33 ms) y el tiempo de establecimiento a la cuarta parte (1.82 ms), a costa de un subpico pronunciado del -22.2%."

---

### Filmina 51: Análisis de Selectividad y Atenuación en Banda de Rechazo
* **Elementos en pantalla:** Dos tarjetas: Pendiente y rechazo fuera de banda a la izquierda; Banda de paso y pico resonante a la derecha.
* **Acción física:** Señalar el ejemplo cuantitativo a 100 Hz calculado en el diseño.
* **Texto a exponer (lectura en voz alta):**
> "La diferencia transitoria tiene su correlato directo en la selectividad en frecuencia:
>
> En el filtro sobreamortiguado, los dos polos reales se encuentran muy separados (28.6 Hz y 398 Hz), por lo que entre ambas frecuencias la pendiente de atenuación es de solo 20 dB por década y la transición hacia la banda de rechazo es gradual.
>
> En cambio, en el filtro subamortiguado los polos complejos actúan en conjunto alrededor de f0 = 422.8 Hz, alcanzando la pendiente de 40 dB por década inmediatamente por debajo de la frecuencia de corte.
>
> Si evaluamos una señal de interferencia a 100 Hz (dos octavas por debajo de fc), esta se atenúa 12.6 dB con Q = 0.25 y 25.0 dB con Q = 0.75, logrando el doble de atenuación en decibeles.
>
> Además, para Q = 0.75 el pico de resonancia en la banda de paso es de apenas 0.05 dB (un factor de 1.006), por lo que la banda útil se mantiene prácticamente tan plana como en un Butterworth."

---

### Filmina 52: Ventajas, Desventajas y Casos de Uso del Filtro RLC
* **Elementos en pantalla:** Dos tarjetas analizando detalladamente las ventajas, desventajas y casos de uso para los regímenes sobreamortiguado y subamortiguado, incluyendo el amortiguamiento crítico.
* **Acción física:** Resaltar los criterios de aplicación según el régimen dinámico.
* **Texto a exponer (lectura en voz alta):**
> "Sintetizando las ventajas y criterios de aplicación de cada régimen:
>
> El régimen sobreamortiguado (Q = 0.25) tiene como ventaja principal una respuesta no oscilatoria, libre de ringing y con subpico mínimo. Esto resulta ventajoso cuando la señal filtrada alimenta etapas sensibles a excursiones de signo contrario (como comparadores, detectores de nivel o etapas con limitación de excursión). Además, es muy robusto frente a tolerancias en L, C o la resistencia del generador Rg. Su desventaja es el tiempo de establecimiento largo (7.53 ms) y componentes mayores (C = 59.70 microfaradios).
>
> El amortiguamiento crítico con Q = 0.5 representa la respuesta más rápida sin sobrepasar el valor final, óptima cuando se exige no tener sobreimpulso, pero es un punto frágil frente a la dispersión de componentes.
>
> Por último, el régimen subamortiguado (Q = 0.75) es cuatro veces más rápido (ts = 1.82 ms) y más selectivo. Al ser omega 0 cercano a omega c, requiere un capacitor doce veces menor (5.02 microfaradios), lo que facilita su implementación con componentes no electrolíticos de mejor tolerancia. Su costo es el subpico del -22.2%."

---

### Filmina 53: Conclusiones Integrales del Proyecto
* **Elementos en pantalla:** Dos tarjetas con las conclusiones finales del proyecto para el filtro pasa alto de segundo orden a la izquierda y para la planta de tercer orden a la derecha.
* **Acción física:** Tono conclusivo, firme y seguro.
* **Texto a exponer (lectura en voz alta):**
> "Como conclusiones finales de nuestro trabajo técnico destacamos:
>
> En el filtro pasa alto de segundo orden, demostramos que la pulsación natural omega cero solo coincide con la frecuencia de corte en aproximaciones de Butterworth; para cualquier otro factor Q, la deducción analítica de la constante de corrección K resultó indispensable para garantizar con exactitud los -3.01 dB en 400 Hz. Comprobamos la correspondencia matemática unívoca entre la ubicación de los polos en el plano complejo y la dinámica temporal, cuantificando el compromiso entre velocidad y ausencia de oscilaciones.
>
> En la planta de tercer orden, diagnosticamos la severa inestabilidad inherente a una ganancia estática de 59.08 dB, cuyo cruce de fase en 110.99 kHz arrojaba un margen de ganancia negativo de -32.14 dB ante realimentación unitaria.
>
> Demostramos que el criterio de diseño de Margen de Fase de 45 grados garantiza la estabilidad a lazo cerrado con márgenes de ganancia robustos superiores a 6 dB. Y comprobamos cuantitativamente la superioridad de la red de atraso-adelanto, que retiene el 99.7% del ancho de banda útil frente al colapso del 89.7% provocado por el polo dominante del retardo.
>
> Muchas gracias."

---

### Filmina 54: MUCHAS GRACIAS
* **Elementos en pantalla:** "MUCHAS GRACIAS" en tipografía bold institucional y centrada con membrete oficial UTN FRC.
* **Acción física:** Esperar unos segundos en silencio con compostura, abrir formalmente la ronda de preguntas invitando al tribunal docente.
* **Texto a exponer (lectura en voz alta):**
> "Quedamos a total disposición del tribunal docente para responder sus consultas y profundizar en cualquier aspecto analítico o de diseño de nuestra presentación. Muchas gracias."

---

## Ronda de Preguntas Técnicas Previstas (Preparación del Tribunal)

A continuación se detallan las preguntas más probables de la cátedra junto a sus respuestas sólidas asignadas:

#### Pregunta 1: ¿Por qué en el filtro pasa alto eligieron una resistencia R = 100 ohms como parámetro libre de diseño?
* **Integrante sugerido:** Ignacio Gil o Franco Palombo
* **Respuesta clave:** La elección de R = 100 ohms representó el compromiso óptimo entre dos restricciones fundamentales: por un lado, debía ser suficientemente mayor a la resistencia interna típica del generador (Rg = 50 ohms) para que la impedancia de la fuente no distorsione apreciablemente el factor de calidad del filtro; y por otro lado, debía mantenerse en un valor acotado para que los inductores calculados L = (R·Q)/omega0 no resultaran excesivamente voluminosos ni de valor elevado, situándose en 28.23 mH y 37.31 mH, valores perfectamente viables en componentes comerciales.

#### Pregunta 2: Si el factor K ajusta la frecuencia de corte, ¿por qué no se usa siempre una aproximación de Butterworth?
* **Integrante sugerido:** Ignacio Gil o Franco Palombo
* **Respuesta clave:** Porque Butterworth (Q ≈ 0.707) es una solución de compromiso específica de máxima planicidad en banda de paso. Sin embargo, en aplicaciones de pulso o transmisión digital se requiere un Q bajo (Q <= 0.5) como en filtros Bessel para garantizar respuesta al escalón monótona y retardo de grupo constante sin sobreimpulso. En cambio, en aplicaciones selectivas se prefieren factores Q más elevados para acelerar la pendiente de atenuación. El factor K permite al diseñador fijar arbitrariamente la frecuencia de corte en -3.01 dB para cualquier valor de Q.

#### Pregunta 3: En la planta de tercer orden, ¿por qué una planta con margen de fase positivo a lazo abierto puede ser inestable al cerrar el lazo?
* **Integrante sugerido:** Angelo Prieto
* **Respuesta clave:** Porque la estabilidad a lazo cerrado con realimentación negativa está gobernada por la relación 1 + G(s) = 0. En nuestra planta, el desfase alcanza -180 grados en 110.99 kHz. A esa frecuencia, la ganancia de lazo abierto es +32.14 dB (unas 40 veces la unidad). Esto significa que la señal que retorna se invierte y se amplifica en lugar de atenuarse, transformando la realimentación en estrictamente positiva con ganancia neta mayor a 0 dB, provocando oscilación sostenida o saturación no lineal.

#### Pregunta 4: ¿Por qué eligieron una frecuencia fd = 1.2 kHz para el compensador de retardo?
* **Integrante sugerido:** Angelo Prieto
* **Respuesta clave:** Porque para que el compensador de retardo no aporte desfasaje negativo residual en la frecuencia de cruce compensada (f45 ≈ 10 kHz), el polo de la red debe ubicarse al menos una década por debajo de dicho cruce. Con fd = 1.2 kHz, la fase aportada por la red en 10 kHz es de casi -90 grados, actuando puramente como un atenuador de ganancia asintótico de -20 dB/década que reduce la magnitud antes de que los polos de la planta en 70k y 140k degraden la fase por debajo de -135 grados.

#### Pregunta 5: ¿Qué ventajas dinámicas tiene la red de atraso-adelanto frente a un simple reductor de ganancia resistivo puro?
* **Integrante sugerido:** Gastón Grasso
* **Respuesta clave:** Un atenuador resistivo puro exigiría reducir la ganancia estática en más de 43 dB, sacrificando precisión estática en continua y elevando drásticamente el error de régimen permanente ess. La red de atraso-adelanto, al ser pasiva y capacitiva, preserva la totalidad de la ganancia estática K = 900 (59.08 dB) en corriente continua garantizando error cero ante perturbaciones lentas, y atenúa selectivamente en alta frecuencia reteniendo el 99.7% del ancho de banda útil.

#### Pregunta 6: En la práctica de laboratorio, ¿cómo verificarían experimentalmente el Margen de Fase sin abrir físicamente el lazo?
* **Integrante sugerido:** Gastón Grasso o Angelo Prieto
* **Respuesta clave:** Se inyecta una señal escalón de pequeña amplitud a lazo cerrado y se mide en el osciloscopio el sobreimpulso porcentual transitorio Mp. A través de la correlación de segundo orden aproximada entre amortiguamiento y margen de fase, para un MF = 45 grados, el sobreimpulso medido debe situarse entre el 20% y el 25%. Si se observa un sobreimpulso significativamente mayor, significa que el margen de fase real es inferior a 45 grados debido a la acción de polos secundarios no modelados.

#### Pregunta 7: En el diseño del compensador de atraso-adelanto, ¿por qué eligieron C = 100 pF y qué consideraciones constructivas deben tenerse en cuenta?
* **Integrante sugerido:** Gastón Grasso
* **Respuesta clave:** El valor C = 100 pF fue fijado como especificación de cátedra para ubicar el cero en 1.1 MHz y el polo en 220 kHz con resistencias comerciales factibles (R1 = 5.76 kohms y R2 = 1.45 kohms). Al ser una capacidad tan reducida, constructivamente exige un diseño cuidadoso de pistas en la PCB para mitigar capacidades parásitas (que suelen rondar entre 5 y 15 pF) que puedan alterar las frecuencias de corte calculadas.

#### Pregunta 8: ¿En qué tipo de aplicaciones prácticas se prefiere el filtro pasa alto sobreamortiguado?
* **Integrante sugerido:** Gastón Grasso
* **Respuesta clave:** El régimen sobreamortiguado resulta ventajoso cuando la señal filtrada alimenta etapas sensibles a excursiones de signo contrario, como comparadores, detectores de nivel o etapas con limitación de excursión, ya que su respuesta es monótona y sin ringing, evitando conmutaciones falsas o no deseadas. Además, es la opción más robusta frente a la tolerancia de los componentes o variaciones en la resistencia del generador.
