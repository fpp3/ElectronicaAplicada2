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
| **Bloque 4** | **Gastón Grasso** | Comparativa Global, Selectividad, Viabilidad Constructiva y Conclusiones | Filminas 45 a 55 | **05:15 min** |
| **Total** | **Grupo 5** | **Exposición Formal Completa + Apertura a Preguntas** | **55 Filminas** | **~17:15 min** |

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
**Tiempo asignado:** 12:00 a 17:15 (5 minutos 15 segundos)

---

### Filmina 45: Comparativa de Bodes: Planta Original vs Compensadores
* **Elementos en pantalla:** Gráfico comparativo de Bode con las tres curvas superpuestas: Curva azul (planta original), Curva roja (retardo RC) y Curva verde (atraso-adelanto). A la derecha, tarjeta con desglose analítico visual.
* **Acción física:** Mirar a Angelo al tomar la palabra, apuntar a la pantalla y recorrer visualmente el contraste entre las curvas.
* **Texto a exponer (lectura en voz alta):**
> "Muchas gracias Angelo. Como recién demostró mi compañero, ambas redes logran estabilizar la planta. Pero al ponerlas frente a frente en este gráfico, el compromiso salta a la vista:
>
> Las tres curvas parten de 59 dB; sin atenuar las tres son inestables a lazo cerrado. Por eso marcamos los puntos f45 donde aplicamos el factor beta.
>
> Para estabilizar, el retardo en rojo sacrificó casi el 90% del ancho de banda, mientras que el atraso-adelanto en verde preservó el 99.7% del espectro original."

---

### Filmina 46: Cuadro Comparativo Cuantitativo Integral ($MF = 45^\circ$)
* **Elementos en pantalla:** Tabla comparativa numérica exhaustiva con las 9 variables de diseño para la planta original, compensador de retardo y atraso-adelanto.
* **Acción física:** Recorrer las filas clave de la tabla con precisión métrica.
* **Texto a exponer (lectura en voz alta):**
> "Confrontando los parámetros en esta tabla de síntesis:
>
> Ambos compensadores conservan intactos los 59 dB en continua, asegurando error permanente nulo.
>
> La diferencia decisiva está en la rapidez temporal del lazo cerrado: el atraso-adelanto sitúa el cruce de 45 grados en 45.1 kHz, respondiendo cuatro veces y media más rápido que el retardo en 10 kHz.
>
> Y ambos garantizan estabilidad robusta superando holgadamente los 6 dB: 13 dB en retardo y 9 dB en atraso-adelanto."

---

### Filmina 47: Impacto sobre el Ancho de Banda y Rapidez de Respuesta
* **Elementos en pantalla:** Dos columnas comparando en profundidad el impacto en el ancho de banda y la rapidez entre el compensador de retardo y la red atraso-adelanto.
* **Acción física:** Contrastar la acción del polo dominante frente a la red pasiva con singularidades en alta frecuencia.
* **Texto a exponer (lectura en voz alta):**
> "Analizando el porqué de esta diferencia:
>
> El retardo introdujo un polo dominante en 1.2 kHz, contrayendo el ancho de banda a lazo abierto a solo 1.19 kHz.
>
> En cambio, el atraso-adelanto ubicó sus frecuencias en 220 kHz y 1.1 MHz, holgadamente por encima de la planta. Al no tocar las bajas frecuencias, retiene los 11.56 kHz intactos y cuadruplica la velocidad de operación del lazo."

---

### Filmina 48: Margen de Ganancia y Mecanismos de Atenuación
* **Elementos en pantalla:** Dos tarjetas: Márgenes obtenidos para $MF = 45^\circ$ a la izquierda; Atenuación y dinámica de fase a la derecha.
* **Acción física:** Enfatizar la diferencia en la atenuación de alta frecuencia entre una pendiente infinita y un escalón acotado.
* **Texto a exponer (lectura en voz alta):**
> "En cuanto a la atenuación, aquí radica la clave:
>
> El retardo mantiene indefinidamente una pendiente de -20 dB por década, logrando máxima inmunidad al ruido y 13 dB de margen.
>
> El atraso-adelanto acota su atenuación a 14 dB mediante el divisor resistivo R2 sobre R1 más R2. A partir de 1.1 MHz el cero recupera fase, garantizando 9 dB de margen con máxima velocidad."

---

### Filmina 49: Viabilidad Constructiva y Aplicaciones de los Compensadores
* **Elementos en pantalla:** Dos tarjetas detallando las áreas de aplicación óptima y los aspectos constructivos en placa para atraso-adelanto y retardo RC.
* **Acción física:** Explicar el compromiso constructivo entre los 100 pF y los 100 nF.
* **Texto a exponer (lectura en voz alta):**
> "Llevando esto a la placa de circuito impreso:
>
> El atraso-adelanto es la opción superadora para instrumentación y señales rápidas. Pero constructivamente exige pistas cortas en la PCB para que las capacidades parásitas no desplacen los 100 picofaradios nominales.
>
> El retardo, con 100 nanofaradios, es totalmente insensible a parásitas de pista y muy tolerante a derivas térmicas, siendo ideal para plantas industriales ruidosas."

---

### Filmina 50: Filtro RLC: Comparativa de Respuesta Temporal al Escalón
* **Elementos en pantalla:** Gráfico amplio y despejado de respuesta al escalón a la izquierda ($Q=0.25$ vs $Q=0.75$). Tarjeta a la derecha con dinámica temporal y parámetros cuantitativos.
* **Acción física:** Señalar en la curva la diferencia entre la caída aperiódica y la oscilación subamortiguada.
* **Texto a exponer (lectura en voz alta):**
> "Pasando a la segunda parte de nuestra defensa, contrastamos el filtro pasa alto de segundo orden al escalón:
>
> Con Q = 0.25, por sus dos polos reales, la respuesta decae monótona y sin oscilaciones, con subpico marginal de -4.8%, pero tarda 7.53 milisegundos en establecerse.
>
> Con Q = 0.75, los polos complejos cuadruplican la velocidad, completando el establecimiento en apenas 1.82 milisegundos, a cambio de un subpico pronunciado del -22.2%."

---

### Filmina 51: Filtro RLC: Comparativa Frecuencial de Módulo (Bode)
* **Elementos en pantalla:** Gráfico amplio de Bode a la izquierda mostrando ambas curvas y el marcador común a 400 Hz. Tarjeta a la derecha con el análisis frecuencial.
* **Acción física:** Indicar el punto de cruce en 400 Hz y la divergencia de las pendientes hacia la izquierda.
* **Texto a exponer (lectura en voz alta):**
> "En el diagrama de Bode confirmamos que ambas curvas cruzan exactamente por -3 dB en 400 Hz, lo que valida la constante de corrección K deducida analíticamente.
>
> Hacia altas frecuencias, ambos convergen a ganancia unitaria plana.
>
> Pero por debajo de la frecuencia de corte divergen claramente: el filtro subamortiguado presenta una caída mucho más abrupta hacia la banda de rechazo."

---

### Filmina 52: Filtro RLC: Análisis de Selectividad y Atenuación en Banda de Rechazo
* **Elementos en pantalla:** Dos tarjetas: Pendiente y rechazo fuera de banda a la izquierda; Banda de paso y pico resonante a la derecha.
* **Acción física:** Señalar el valor numérico a 100 Hz.
* **Texto a exponer (lectura en voz alta):**
> "Esto define la selectividad del filtro:
>
> Con Q = 0.25 los polos separados dan una transición suave con pendiente intermedia de -20 dB por década.
>
> Con Q = 0.75 los polos complejos imponen -40 dB por década inmediatamente bajo 400 Hz.
>
> Así, a 100 Hz el filtro subamortiguado atenúa 25 dB frente a 12.6 dB: el doble de atenuación en decibeles, con un sobrepico en banda de paso totalmente despreciable de solo 0.05 dB."

---

### Filmina 53: Filtro RLC: Ventajas, Desventajas y Casos de Uso
* **Elementos en pantalla:** Dos tarjetas analizando detalladamente las ventajas, desventajas y casos de uso para los regímenes sobreamortiguado y subamortiguado, incluyendo el amortiguamiento crítico.
* **Acción física:** Resaltar los criterios de aplicación según el régimen dinámico.
* **Texto a exponer (lectura en voz alta):**
> "Sintetizando los criterios de aplicación:
>
> El régimen sobreamortiguado es ideal para etapas sensibles a inversión de polaridad, como comparadores o detectores de nivel, siendo inmune al ringing y muy robusto ante tolerancias.
>
> El subamortiguado es cuatro veces más veloz y selectivo, y utiliza un capacitor doce veces menor de 5 microfaradios, lo que facilita montar componentes no electrolíticos de alta precisión."

---

### Filmina 54: Conclusiones Integrales del Proyecto
* **Elementos en pantalla:** Dos tarjetas con las conclusiones finales del proyecto para el filtro pasa alto de segundo orden a la izquierda y para la planta de tercer orden a la derecha.
* **Acción física:** Tono conclusivo, firme y seguro.
* **Texto a exponer (lectura en voz alta):**
> "Como conclusiones finales de nuestro trabajo técnico destacamos:
>
> En el filtro RLC, comprobamos que el factor K es indispensable para desacoplar omega cero de omega corte, cuantificando el compromiso entre velocidad y oscilaciones transitorias.
>
> En la planta de tercer orden, verificamos que el criterio de 45 grados asegura estabilidad robusta superior a 6 dB. Y demostramos la superioridad dinámica del atraso-adelanto, reteniendo el 99.7% del ancho de banda útil frente al colapso del 90% del retardo."

---

### Filmina 55: MUCHAS GRACIAS
* **Elementos en pantalla:** "MUCHAS GRACIAS" en tipografía bold institucional y centrada con membrete oficial UTN FRC.
* **Acción física:** Esperar unos segundos en silencio con compostura, abrir formalmente la ronda de preguntas invitando al tribunal docente.
* **Texto a exponer (lectura en voz alta):**
> "Muchas gracias por su atención. Quedamos a total disposición del tribunal docente para responder sus consultas. Muchas gracias."

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
