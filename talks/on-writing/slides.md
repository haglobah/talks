---
theme: ../../themes/beathagenlocher.com
title: On Writing
date: 2026-07-27
info: |

author: Beat Hagenlocher
class: text-center
fonts:
  sans: "Fira Sans"
  mono: "Fira Code"
transition: slide-left
mdc: true
---

<Title>{{ $frontmatter.title }}</Title>

<Subtitle>
  Ein Übungsblatt nach Joseph M. Williams: <br> <em>Style: Toward Clarity and Grace</em>
</Subtitle>

---
layout: mono-header
---

::header::

<Heading>Link zu den Folien</Heading>

::main::
<div class="bg-white max-w-min my-10 mx-auto">
  <QRCode
    value="https://haglobah.github.io/talks/on-writing"
    :width="400"
    :height="400"
  />
</div>

---
layout: mono-header
---

::header::

<Heading>Fünf Techniken</Heading>

::main::

<v-clicks>

1. <Highlight>Klarheit</Highlight> — Handelnde als Subjekte, Handlungen als Verben
2. <Highlight>Kohäsion</Highlight> — Bekanntes vor Neuem
3. <Highlight>Betonung</Highlight> — das Satzende trägt das Gewicht
4. <Highlight>Kohärenz</Highlight> — ein Thema pro Absatz
5. <Highlight>Prägnanz</Highlight> — streichen, was nichts sagt

</v-clicks>

---
layout: mono-header
---

::header::

<Heading>1 · Klarheit</Heading>

::main::

<v-clicks>

- Leser verstehen Sätze am leichtesten, wenn die <Highlight>Handelnden</Highlight> als grammatische Subjekte auftreten — und ihre <Highlight>Handlungen</Highlight> als Verben.
- Trüber Stil versteckt Handlungen in abstrakten Substantiven: <em>Nominalisierungen</em>.
- „Der Ausschuss traf eine Entscheidung." → „Der Ausschuss entschied."
- Nominalisierungen zurück in Verben zu verwandeln ist der wirksamste einzelne Eingriff.

</v-clicks>

---
layout: mono-header
---

::header::

<Heading>Übung 1: Nominalisierungen auflösen</Heading>

::main::

Wer handelt? Was tut sie oder er? Schreibe die Sätze so um, dass die Handelnden Subjekte sind und die Handlungen Verben.

1. Die Durchführung der Untersuchung des Vorfalls erfolgte durch das Projektteam.
2. Es besteht die Erwartung der Geschäftsleitung, dass eine Steigerung des Umsatzes eintritt.
3. Die Entdeckung des Fehlers durch die Entwicklerin führte zur Verhinderung eines Ausfalls.

---
layout: mono-header
---

::header::

<Heading>Übung 1: Mögliche Lösungen</Heading>

::main::

<v-clicks>

1. Das Projektteam untersuchte den Vorfall.
2. Die Geschäftsleitung erwartet, dass der Umsatz steigt.
3. Die Entwicklerin entdeckte den Fehler und verhinderte so einen Ausfall.

</v-clicks>

---
layout: mono-header
---

::header::

<Heading>2 · Kohäsion</Heading>

::main::

<v-clicks>

- Beginne Sätze mit Information, die die Leserin <Highlight>schon kennt</Highlight>.
- Stelle neue oder komplexe Information <Highlight>ans Ende</Highlight>.
- So fließt der Text: Jeder Satz knüpft dort an, wo der letzte aufgehört hat.
- Auch das Passiv ist dafür ein legitimes Werkzeug.

</v-clicks>

---
layout: mono-header
---

::header::

<Heading>Übung 2: Bekanntes vor Neuem</Heading>

::main::

Der zweite Satz beginnt jeweils mit neuer Information. Stelle ihn so um, dass er mit dem Bekannten aus dem ersten Satz beginnt.

1. Wir haben das Deployment automatisiert. Ein selbstgeschriebenes Skript, das jede Nacht läuft, übernimmt die Automatisierung.
2. Manche Sterne kollabieren am Ende zu Schwarzen Löchern. Ein Gravitationsfeld, dem nicht einmal Licht entkommt, umgibt jedes Schwarze Loch.
3. Nächste Woche führen wir das neue Framework ein. Drei Tage Schulung braucht jedes Teammitglied dafür.

---
layout: mono-header
---

::header::

<Heading>Übung 2: Mögliche Lösungen</Heading>

::main::

<v-clicks>

1. Wir haben das Deployment automatisiert. Die Automatisierung übernimmt ein selbstgeschriebenes Skript, das jede Nacht läuft.
2. Manche Sterne kollabieren am Ende zu Schwarzen Löchern. Jedes Schwarze Loch ist von einem Gravitationsfeld umgeben, dem nicht einmal Licht entkommt.
3. Nächste Woche führen wir das neue Framework ein. Dafür braucht jedes Teammitglied drei Tage Schulung.

</v-clicks>

---
layout: mono-header
---

::header::

<Heading>3 · Betonung</Heading>

::main::

<v-clicks>

- Das Satzende trägt die natürliche Betonung — die <em>stress position</em>.
- Was nachklingen soll — Schlüsselbegriffe, neue Konzepte — gehört <Highlight>ans Ende</Highlight>, nicht in die Mitte.
- Nebensächliches, das hinter der Kernaussage steht, schwächt sie.

</v-clicks>

---
layout: mono-header
---

::header::

<Heading>Übung 3: Die Schlussposition nutzen</Heading>

::main::

Die Kernaussage (kursiv) steht jeweils in der Mitte des Satzes. Stelle den Satz so um, dass sie am Ende steht.

1. Die Fehlerrate sank <em>um 80 Prozent</em>, nachdem wir die Tests eingeführt hatten.
2. Nur <em>eine vollständige Neuentwicklung</em> kann das System unserer Einschätzung nach noch retten.
3. Das Projekt scheiterte <em>an fehlender Kommunikation</em>, wie so viele vor ihm.

---
layout: mono-header
---

::header::

<Heading>Übung 3: Mögliche Lösungen</Heading>

::main::

<v-clicks>

1. Nachdem wir die Tests eingeführt hatten, sank die Fehlerrate um 80 Prozent.
2. Unserer Einschätzung nach rettet das System nur noch eines: eine vollständige Neuentwicklung.
3. Das Projekt scheiterte, wie so viele vor ihm, an fehlender Kommunikation.

</v-clicks>

---
layout: mono-header
---

::header::

<Heading>4 · Kohärenz</Heading>

::main::

<v-clicks>

- Halte die <Highlight>Themen</Highlight> — die Satzsubjekte — über einen Absatz hinweg konsistent.
- So wissen die Leser jederzeit, wovon der Absatz <em>handelt</em>.
- Nenne den <Highlight>Punkt</Highlight> des Absatzes früh: meist am Ende eines kurzen Auftakts.

</v-clicks>

---
layout: mono-header
---

::header::

<Heading>Übung 4: Ein Thema durchhalten</Heading>

::main::

In diesem Absatz springt das Subjekt von Satz zu Satz. Schreibe ihn so um, dass ein Thema den Absatz trägt.

> Unser Team hat die Migration abgeschlossen. Die Datenbank wurde von den Administratoren zuerst umgezogen. Danach mussten die Dienste von uns neu gestartet werden. Probleme zeigten sich erst beim Login-Service.

---
layout: mono-header
---

::header::

<Heading>Übung 4: Mögliche Lösung</Heading>

::main::

<v-click>

> Unser Team hat die Migration abgeschlossen. Zuerst zogen wir die Datenbank um, danach starteten wir die Dienste neu. Nur beim Login-Service stießen wir auf Probleme.

</v-click>

<v-click>

Ein Thema — <em>wir, das Team</em> — trägt jetzt den ganzen Absatz.

</v-click>

---
layout: mono-header
---

::header::

<Heading>5 · Prägnanz</Heading>

::main::

<v-clicks>

- Streiche <Highlight>redundante Paare</Highlight>: „einzig und allein", „voll und ganz".
- Streiche <Highlight>bedeutungslose Modifikatoren</Highlight>: „gewissermaßen", „im Grunde genommen".
- Streiche <Highlight>Metadiskurs</Highlight>, der nur das eigene Schreiben kommentiert: „Es sei an dieser Stelle darauf hingewiesen, dass …"
- Ersetze Phrasen durch einzelne Wörter: „aufgrund der Tatsache, dass" → „weil".

</v-clicks>

---
layout: mono-header
---

::header::

<Heading>Übung 5: Streichen</Heading>

::main::

Kürze die Sätze, ohne Bedeutung zu verlieren.

1. Es sei an dieser Stelle ausdrücklich darauf hingewiesen, dass das Backup in jedem einzelnen Fall vollständig und lückenlos durchgeführt werden muss.
2. Aufgrund der Tatsache, dass zum jetzigen Zeitpunkt keinerlei finanzielle Mittel zur Verfügung stehen, ist eine Umsetzung des Vorhabens ganz grundsätzlich nicht möglich.
3. Meiner ganz persönlichen Meinung nach ist die Frage der Priorisierung der Aufgaben ein Punkt, den wir voll und ganz neu überdenken sollten.

---
layout: mono-header
---

::header::

<Heading>Übung 5: Mögliche Lösungen</Heading>

::main::

<v-clicks>

1. Das Backup muss immer vollständig sein.
2. Weil derzeit Geld fehlt, können wir das Vorhaben nicht umsetzen.
3. Wir sollten die Aufgaben neu priorisieren.

</v-clicks>

---
layout: mono-header
---

::header::
<Heading>Quellen</Heading>

- Joseph M. Williams: <em>Style: Toward Clarity and Grace</em>, <br> University of Chicago Press
- Joseph M. Williams: <em>Style: Lessons in Clarity and Grace</em> <br> (die aktuellere Lehrbuchfassung)

---
src: ./parts/beat.md
---
