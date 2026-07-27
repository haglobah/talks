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
  Aleksandra Shcherbakova & Beat Hagenlocher
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

1. <Highlight>Klarheit</Highlight>: Handelnde als Subjekte, Handlungen als Verben
2. <Highlight>Kohäsion</Highlight>: Bekanntes vor Neuem
3. <Highlight>Betonung</Highlight>: Neues zum Satzende
4. <Highlight>Kohärenz</Highlight>: Ein Thema pro Absatz
5. <Highlight>Prägnanz</Highlight>: Im Zweifel? Streichen.

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

<Heading>1. Klarheit | Übung 1</Heading>

::main::

Wer handelt? Was tut sie oder er? Schreibe die Sätze so um, dass die Handelnden Subjekte sind und die Handlungen Verben.

1. Die Durchführung der Untersuchung des Vorfalls erfolgte durch das Projektteam.
2. Es besteht die Erwartung der Geschäftsleitung, dass eine Steigerung des Umsatzes eintritt.
3. Die Entdeckung des Fehlers durch die Entwicklerin führte zur Verhinderung eines Ausfalls.

---
layout: mono-header
---

::header::

<Heading>1. Klarheit | Übung 1 Lösungen</Heading>

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

<Heading>1. Klarheit | Übung 2</Heading>

::main::

<div class="leading-relaxed">

1. Am Dienstag fiel der Bezahldienst für zwei Stunden aus. Die Analyse der Logdateien durch das Bereitschaftsteam führte zur Identifikation eines Speicherlecks. Ein Update hatte das Leck am Vortag eingeschleppt. Die Behebung des Problems erfolgte durch die Zurücknahme des Updates.

1. Unsere Abteilung wächst seit zwei Jahren stetig. Die Durchführung der Einarbeitung neuer Kolleginnen liegt in der Verantwortung der jeweiligen Teams. Trotzdem dauert es oft Monate, bis jemand produktiv arbeitet. Die Erstellung einer gemeinsamen Checkliste wäre eine Verbesserung des Prozesses.

1. Die Stadt will den Radverkehr fördern. Zu diesem Zweck erfolgte die Einrichtung von drei neuen Radwegen durch das Bauamt. Viele Pendler steigen seitdem aufs Rad um. Die Messung der Auswirkungen auf den Autoverkehr steht allerdings noch aus.

</div>

---
layout: mono-header
---

::header::

<Heading>1. Klarheit | Übung 2 Lösungen</Heading>

::main::

<div class="leading-relaxed">

<v-clicks>

1. Am Dienstag fiel der Bezahldienst für zwei Stunden aus. **Das Bereitschaftsteam analysierte die Logdateien und identifizierte ein Speicherleck.** Ein Update hatte das Leck am Vortag eingeschleppt. **Das Team behob das Problem, indem es das Update zurücknahm.**

1. Unsere Abteilung wächst seit zwei Jahren stetig. **Die jeweiligen Teams arbeiten neue Kolleginnen selbst ein.** Trotzdem dauert es oft Monate, bis jemand produktiv arbeitet. **Eine gemeinsame Checkliste würde den Prozess verbessern.**

1. Die Stadt will den Radverkehr fördern. **Dafür richtete das Bauamt drei neue Radwege ein.** Viele Pendler steigen seitdem aufs Rad um. **Wie sich das auf den Autoverkehr auswirkt, hat allerdings noch niemand gemessen.**

</v-clicks>

</div>

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

<Heading>2. Kohäsion | Übung 1</Heading>

::main::

Der zweite Satz beginnt jeweils mit neuer Information. Stelle ihn so um, dass er mit dem Bekannten aus dem ersten Satz beginnt.

1. Wir haben das Deployment automatisiert. Ein selbstgeschriebenes Skript, das jede Nacht läuft, übernimmt die Automatisierung.
2. Manche Sterne kollabieren am Ende zu Schwarzen Löchern. Ein Gravitationsfeld, dem nicht einmal Licht entkommt, umgibt jedes Schwarze Loch.
3. Nächste Woche führen wir das neue Framework ein. Drei Tage Schulung braucht jedes Teammitglied dafür.

---
layout: mono-header
---

::header::

<Heading>2. Kohäsion | Übung 1 Lösungen</Heading>

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

<Heading>2. Kohäsion | Übung 2</Heading>

::main::

<div class="leading-relaxed">

1. Unser Monitoring meldete gestern Nacht einen Alarm. Eine volle Festplatte auf dem Datenbankserver war die Ursache. Die Festplatte hatten wir seit Monaten nicht aufgeräumt. Ein automatischer Löschjob soll solche Vorfälle künftig verhindern.

1. Honigbienen kommunizieren über den Schwänzeltanz. Richtung und Entfernung einer Futterquelle codiert dieser Tanz. Die Entfernung lesen andere Bienen an der Dauer des Tanzes ab. Ein feiner Geruchssinn hilft ihnen bei der Suche zusätzlich.

1. Im Herbst stellen wir auf das neue Abrechnungssystem um. Alle Rechnungen erzeugt danach das neue System automatisch. Die alten Rechnungen bleiben im Archiv abrufbar. Eine zweitägige Schulung bereitet die Buchhaltung auf die Umstellung vor.

</div>

---
layout: mono-header
---

::header::

<Heading>2. Kohäsion | Übung 2 Lösungen</Heading>

::main::

<div class="leading-relaxed">

<v-clicks>

1. Unser Monitoring meldete gestern Nacht einen Alarm. **Die Ursache war eine volle Festplatte auf dem Datenbankserver.** Die Festplatte hatten wir seit Monaten nicht aufgeräumt. **Solche Vorfälle soll künftig ein automatischer Löschjob verhindern.**

1. Honigbienen kommunizieren über den Schwänzeltanz. **Dieser Tanz codiert Richtung und Entfernung einer Futterquelle.** Die Entfernung lesen andere Bienen an der Dauer des Tanzes ab. **Bei der Suche hilft ihnen zusätzlich ein feiner Geruchssinn.**

1. Im Herbst stellen wir auf das neue Abrechnungssystem um. **Das neue System erzeugt danach alle Rechnungen automatisch.** Die alten Rechnungen bleiben im Archiv abrufbar. **Auf die Umstellung bereitet sich die Buchhaltung mit einer zweitägigen Schulung vor.**

</v-clicks>

</div>

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

<Heading>3. Betonung | Übung 1</Heading>

::main::

Die Kernaussage (kursiv) steht jeweils in der Mitte des Satzes. Stelle den Satz so um, dass sie am Ende steht.

1. Die Fehlerrate sank <em>um 80 Prozent</em>, nachdem wir die Tests eingeführt hatten.
2. Nur <em>eine vollständige Neuentwicklung</em> kann das System unserer Einschätzung nach noch retten.
3. Das Projekt scheiterte <em>an fehlender Kommunikation</em>, wie so viele vor ihm.

---
layout: mono-header
---

::header::

<Heading>3. Betonung | Übung 1 Lösungen</Heading>

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

<Heading>3. Betonung | Übung 2</Heading>

::main::

<div class="leading-relaxed">

1. Wir haben drei Datenbanken evaluiert. Nur PostgreSQL erfüllte alle Anforderungen von den drei Kandidaten. Die Lizenzkosten spielten dabei keine Rolle. Die Migration beginnt nächsten Monat, wenn nichts dazwischenkommt.

1. Der Prototyp überzeugte die Jury sofort. Das Team gewann den ersten Preis damit völlig verdient. Dotiert ist der Preis mit 10.000 Euro. Ein eigenes Startup wollen die drei mit dem Geld nun gründen.

1. Unsere Ladezeiten frustrierten die Nutzer seit Jahren. Die Seite lädt in unter einer Sekunde, seit wir sie umgebaut haben. Die Absprungrate halbierte sich innerhalb einer Woche. Performance-Arbeit zahlt sich eben doch aus, allen Unkenrufen zum Trotz.

</div>

---
layout: mono-header
---

::header::

<Heading>3. Betonung | Übung 2 Lösungen</Heading>

::main::

<div class="leading-relaxed">

<v-clicks>

1. Wir haben drei Datenbanken evaluiert. **Von den drei Kandidaten erfüllte nur eine alle Anforderungen: PostgreSQL.** Die Lizenzkosten spielten dabei keine Rolle. **Wenn nichts dazwischenkommt, beginnt die Migration nächsten Monat.**

1. Der Prototyp überzeugte die Jury sofort. **Damit gewann das Team völlig verdient den ersten Preis.** Dotiert ist der Preis mit 10.000 Euro. **Mit dem Geld gründen die drei nun ein eigenes Startup.**

1. Unsere Ladezeiten frustrierten die Nutzer seit Jahren. **Seit wir die Seite umgebaut haben, lädt sie in unter einer Sekunde.** Die Absprungrate halbierte sich innerhalb einer Woche. **Allen Unkenrufen zum Trotz zahlt sich Performance-Arbeit eben doch aus.**

</v-clicks>

</div>

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

<Heading>4. Kohärenz | Übung 1</Heading>

::main::

In diesem Absatz springt das Subjekt von Satz zu Satz. Schreibe ihn so um, dass ein Thema den Absatz trägt.

> Unser Team hat die Migration abgeschlossen. Die Datenbank wurde von den Administratoren zuerst umgezogen. Danach mussten die Dienste von uns neu gestartet werden. Probleme zeigten sich erst beim Login-Service.

---
layout: mono-header
---

::header::

<Heading>4. Kohärenz | Übung 1 Lösung</Heading>

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

<Heading>4. Kohärenz | Übung 2</Heading>

::main::

<div class="leading-relaxed">

1. Die neue API vereinfacht unsere Integrationen. Ein einziger Endpunkt wird von den Partnerfirmen jetzt angesprochen. Sie versioniert außerdem alle Antworten automatisch. Wochen an Abstimmung sparen sich die Teams dadurch.

1. Ada Lovelace gilt als erste Programmiererin. Charles Babbage entwarf die Analytical Engine, für die sie schrieb. Sie beschrieb 1843 einen Algorithmus zur Berechnung der Bernoulli-Zahlen. Weitsichtige Notizen über Maschinen, die Musik komponieren könnten, stammen ebenfalls von ihr.

1. Unser Team betreut den Checkout-Dienst. Im letzten Quartal haben wir ihn auf die neue Plattform migriert. Die meisten Probleme wurden dabei von der Datenbank verursacht. Rechtzeitig fertig wurde die Migration trotzdem.

</div>

---
layout: mono-header
---

::header::

<Heading>4. Kohärenz | Übung 2 Lösungen</Heading>

::main::

<div class="leading-relaxed">

<v-clicks>

1. Die neue API vereinfacht unsere Integrationen. **Sie bietet den Partnerfirmen jetzt einen einzigen Endpunkt.** Sie versioniert außerdem alle Antworten automatisch. **Dadurch spart sie den Teams Wochen an Abstimmung.** <em>(Thema: die API)</em>

1. Ada Lovelace gilt als erste Programmiererin. **Sie schrieb für Charles Babbages Analytical Engine.** Sie beschrieb 1843 einen Algorithmus zur Berechnung der Bernoulli-Zahlen. **Sie notierte sogar, dass Maschinen eines Tages Musik komponieren könnten.** <em>(Thema: Ada Lovelace)</em>

1. Unser Team betreut den Checkout-Dienst. Im letzten Quartal haben wir ihn auf die neue Plattform migriert. **Dabei kämpften wir vor allem mit der Datenbank.** **Trotzdem schlossen wir die Migration rechtzeitig ab.** <em>(Thema: wir, das Team)</em>

</v-clicks>

</div>

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

<Heading>5. Prägnanz | Übung 1</Heading>

::main::

Kürze die Sätze, ohne Bedeutung zu verlieren.

1. Es sei an dieser Stelle ausdrücklich darauf hingewiesen, dass das Backup in jedem einzelnen Fall vollständig und lückenlos durchgeführt werden muss.
2. Aufgrund der Tatsache, dass zum jetzigen Zeitpunkt keinerlei finanzielle Mittel zur Verfügung stehen, ist eine Umsetzung des Vorhabens ganz grundsätzlich nicht möglich.
3. Meiner ganz persönlichen Meinung nach ist die Frage der Priorisierung der Aufgaben ein Punkt, den wir voll und ganz neu überdenken sollten.

---
layout: mono-header
---

::header::

<Heading>5. Prägnanz | Übung 1 Lösungen</Heading>

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

<Heading>5. Prägnanz | Übung 2</Heading>

::main::

<div class="leading-relaxed">

1. Der Bericht fasst die Ergebnisse des Audits zusammen. Es sei zunächst einmal grundsätzlich festgehalten, dass die Sicherheitslage im Großen und Ganzen als durchaus zufriedenstellend bezeichnet werden kann. Zwei Lücken erfordern dennoch sofortiges Handeln. Eine detaillierte Auflistung sämtlicher einzelner Befunde findet sich im Anhang am Ende dieses Dokuments.

1. Wir stellen die Kaffeeküche im August um. Der Grund dafür liegt in der Tatsache begründet, dass die alte Maschine in regelmäßigen Abständen immer wieder ausfällt. Die neue Maschine mahlt frisch und braucht weniger Strom. Für Rückfragen jedweder Art steht das Office-Team selbstverständlich jederzeit gerne vollumfänglich zur Verfügung.

1. Die Studie untersuchte den Schlaf von Schichtarbeitern. An dieser Stelle ist es wichtig zu erwähnen, dass insgesamt die Zahl von 200 Personen teilgenommen hat. Nachtschichten verkürzten den Tiefschlaf messbar. Zukünftige weitere Forschung wird mit Sicherheit zeigen, ob eine Anpassung der Schichtpläne eine Verbesserung mit sich bringen würde.

</div>

---
layout: mono-header
---

::header::

<Heading>5. Prägnanz | Übung 2 Lösungen</Heading>

::main::

<div class="leading-relaxed">

<v-clicks>

1. Der Bericht fasst die Ergebnisse des Audits zusammen. **Die Sicherheitslage ist zufriedenstellend.** Zwei Lücken erfordern dennoch sofortiges Handeln. **Alle Befunde stehen im Anhang.**

1. Wir stellen die Kaffeeküche im August um. **Denn die alte Maschine fällt regelmäßig aus.** Die neue Maschine mahlt frisch und braucht weniger Strom. **Fragen beantwortet das Office-Team.**

1. Die Studie untersuchte den Schlaf von Schichtarbeitern. **200 Personen nahmen teil.** Nachtschichten verkürzten den Tiefschlaf messbar. **Ob angepasste Schichtpläne helfen, muss weitere Forschung zeigen.**

</v-clicks>

</div>

---
layout: mono-header
---

::header::

<Heading>6 · Gemischt</Heading>

::main::

<v-clicks>

- Jetzt alles zusammen: In jedem Absatz stecken <Highlight>zwei bis drei Problemsätze</Highlight> — aus irgendeiner der fünf Techniken.
- Finde sie, benenne die verletzte Technik und verbessere sie.

</v-clicks>

---
layout: mono-header
---

::header::

<Heading>6. Gemischt | Übung 1</Heading>

::main::

<div class="leading-relaxed">

1. Unsere Firma stellt im Herbst auf eine neue Buchhaltungssoftware um. Die Auswahl der Software erfolgte durch eine Arbeitsgruppe nach einem Vergleich von fünf Anbietern. Während der sechswöchigen Umstellung schult ein externer Dienstleister alle Mitarbeitenden. Zwei volle Tage dauert jede dieser Schulungen. Es ist in diesem Zusammenhang wichtig zu betonen, dass sämtliche einzelnen Belege in jedem Fall vollständig erhalten bleiben.

1. Die Stadt saniert den alten Stadtpark. Ein neues Bewässerungssystem verlegen die Gärtner dort zuerst. Danach kommen neue Bänke und ein größerer Spielplatz dazu. Die Finanzierung der Arbeiten erfolgt über ein Förderprogramm des Landes. Der Park öffnet im Mai wieder, wenn alles nach Plan läuft.

1. Unser Support-Team beantwortet Anfragen jetzt deutlich schneller. Die Einführung einer gemeinsamen Wissensdatenbank war der Grund für die Verbesserung. Es pflegt die Datenbank gemeinsam mit der Entwicklung. Von den Kunden wurde die kürzere Wartezeit bereits gelobt. Es versteht sich dabei von selbst, dass die persönliche Beratung selbstverständlich weiterhin in vollem Umfang erhalten bleibt.

</div>

---
layout: mono-header
---

::header::

<Heading>6. Gemischt | Übung 1 Lösungen</Heading>

::main::

<div class="leading-relaxed">

<v-clicks>

1. Unsere Firma stellt im Herbst auf eine neue Buchhaltungssoftware um. **Eine Arbeitsgruppe verglich fünf Anbieter und wählte die Software aus.** Während der sechswöchigen Umstellung schult ein externer Dienstleister alle Mitarbeitenden. **Jede dieser Schulungen dauert zwei volle Tage.** **Alle Belege bleiben erhalten.** <em>(Satz 2: Klarheit · Satz 4: Kohäsion · Satz 5: Prägnanz)</em>

1. Die Stadt saniert den alten Stadtpark. **Dort verlegen die Gärtner zuerst ein neues Bewässerungssystem.** Danach kommen neue Bänke und ein größerer Spielplatz dazu. **Die Arbeiten finanziert das Land über ein Förderprogramm.** **Wenn alles nach Plan läuft, öffnet der Park im Mai wieder.** <em>(Satz 2: Kohäsion · Satz 4: Klarheit · Satz 5: Betonung)</em>

1. Unser Support-Team beantwortet Anfragen jetzt deutlich schneller. **Das Team hat dafür eine gemeinsame Wissensdatenbank eingeführt.** Es pflegt die Datenbank gemeinsam mit der Entwicklung. **Dafür bekommt es von ersten Kunden bereits Lob.** **Die persönliche Beratung bleibt trotzdem erhalten.** <em>(Satz 2: Klarheit · Satz 4: Kohärenz · Satz 5: Prägnanz)</em>

</v-clicks>

</div>

---
layout: mono-header
---

::header::

<Heading>6. Gemischt | Übung 2</Heading>

::main::

<div class="leading-relaxed">

1. Es sei einleitend darauf hingewiesen, dass dieser Bericht die Ergebnisse des Nutzertests zusammenfasst. Zwölf Personen testeten unsere App eine Woche lang. Die Navigation kritisierten fast alle von ihnen. Sie versteckt zentrale Funktionen hinter drei Menüebenen. Die Behebung dieses Problems hat durch das Design-Team bereits eine Priorisierung erfahren.

1. Der Verein feiert nächstes Jahr sein hundertjähriges Bestehen. Die Planung des Jubiläumsfests liegt in den Händen eines eigens gegründeten Komitees. Eine Festschrift erscheint außerdem zum Jubiläum, wenn genug Beiträge zusammenkommen. Beiträge dafür kann jedes Mitglied bis März einreichen. Zum gegenwärtigen Zeitpunkt ist im Grunde genommen lediglich die Tatsache problematisch, dass sich bislang nur wenige Freiwillige gemeldet haben.

1. Unsere neue Kantine kommt im Team gut an. Sie bietet täglich zwei vegetarische Gerichte an. Das Küchenteam wechselt den Speiseplan jede Woche. Freitags gibt es außerdem frische Waffeln. Einzig und allein die langen Schlangen zur Mittagszeit stellen nach wie vor noch ein gewisses Problem dar.

</div>

---
layout: mono-header
---

::header::

<Heading>6. Gemischt | Übung 2 Lösungen</Heading>

::main::

<div class="leading-relaxed">

<v-clicks>

1. **Dieser Bericht fasst die Ergebnisse des Nutzertests zusammen.** Zwölf Personen testeten unsere App eine Woche lang. **Fast alle von ihnen kritisierten die Navigation.** Sie versteckt zentrale Funktionen hinter drei Menüebenen. **Das Design-Team hat die Behebung dieses Problems bereits priorisiert.** <em>(Satz 1: Prägnanz · Satz 3: Kohäsion · Satz 5: Klarheit)</em>

1. Der Verein feiert nächstes Jahr sein hundertjähriges Bestehen. **Ein eigens gegründetes Komitee plant das Jubiläumsfest.** **Wenn genug Beiträge zusammenkommen, erscheint zum Jubiläum außerdem eine Festschrift.** Beiträge dafür kann jedes Mitglied bis März einreichen. **Problematisch ist bislang nur, dass sich wenige Freiwillige gemeldet haben.** <em>(Satz 2: Klarheit · Satz 3: Betonung · Satz 5: Prägnanz)</em>

1. Unsere neue Kantine kommt im Team gut an. Sie bietet täglich zwei vegetarische Gerichte an. **Ihr Speiseplan wechselt jede Woche.** Freitags gibt es außerdem frische Waffeln. **Nur die langen Schlangen zur Mittagszeit sind noch ein Problem.** <em>(Satz 3: Kohärenz · Satz 5: Prägnanz)</em>

</v-clicks>

</div>

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
