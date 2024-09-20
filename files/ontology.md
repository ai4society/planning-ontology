---
layout: default
title: Ontology
---

[About](#ontologyabout) | [Access Links](#ontologylinks) | [Ontology Metadata](#ontologymetadata) 

<article class="mb-5" id="ontology">
<content>
  
<h2 id="ontologyabout">Planning Ontology</h2>
  <p class="message">
    Ontology has been cleared for release and is made available as an open-source resource under the <a href="https://www.apache.org/licenses/LICENSE-2.0">Apache 2.0 license</a>
  </p>
  <p style="text-indent: 4ch">
    Automating planning and decision-making tasks is a fundamental goal of artificial intelligence (AI) research. The vast number of available planners and diverse planning domains carry essential information that can be leveraged to improve planner performance. For instance, by analyzing the performance of different planners on various problem configurations, we can identify which planners excel in particular domains and improve their efficiency. To address this issue, we propose a novel approach that employs an ontology to represent the characteristics of planning domains and the capabilities of planners. We gather data on planning domains and planners from the International Planning Competition (IPC) to construct the ontology. Our ontology for AI planning captures critical parameters relevant to planning, including the best planners for a given problem configuration, the ranking of relevant heuristics, and macros to aid in solving complex problems. The ontology represents planning resources, enabling their reuse and improving planner performance.
  </p>
  
 <img src ="{{site.baseurl}}files/images/ontology/planning_ontology.png" style="width:100%; height:100%" id="figure_1">
 <caption>
  Figure 1. An illustrative overview of the planning ontology, segmented into categories that encapsulate the core concepts of automated planning: domain, problem, plan, and planner performance. Each category is distinctly represented by colored rectangles. Classes with thick outlines denote concepts that have been adapted or reused from existing ontologies. The data properties <code>hasPlanExplanation</code>, <code>hasActionExplanation</code>, and <code>hasModelReconciliationExplanation</code> help in providing explanations for user queries.
 </caption>

<hr>
<h3 id="ontologylinks">Ontology Links</h3>
  <ul>
    <li>
      Ontology documentation generated using the <a href="https://github.com/dgarijo/Widoco">Widoco</a> tool can be browsed at: <a href="{{site.baseurl}}files/WidocoDocumentation/index-en.html">https://tetherless-world.github.io/explanation-ontology/WidocoDocumentation/index-en.html</a>
    </li>
    <li>
      Ontology can be accessed from <a href="https://purl.org/heals/eo">https://purl.org/heals/eo</a>
    </li>
      <ul>
        <li>V2: <a href="https://purl.org/heals/eo/2.0.0">https://purl.org/heals/eo/2.0.0</a></li>
        <li>V1: <a href="https://purl.org/heals/eo/1.0.0">https://purl.org/heals/eo/1.0.0</a></li>
      </ul>
    <li class="note">
      If the PURL service doesn't work, please use this shortened URL pointing to the ontology resource. <a href="https://bit.ly/3vD4mmD">https://bit.ly/3vD4mmD</a>
    </li>
  </ul>

<hr>
<article class="mb-5" id="ontologymetadata">
<content>
<h3>Ontology Metadata</h3>
  <p>
    Metadata that would be useful to navigate our <a href="#resources">resources</a>, i.e., ontology, modeling snippets and SPARQL queries. The content below can also be viewed by inspecting our Planning Ontology in an ontology editor, like, <a href="https://protege.stanford.edu/products.php#desktop-protege">Protege 5.5.0</a>.
  </p>
  
  <h4 id="ontologiesreused">Ontologies Reused</h4>
    <ul>
      <li><a href="https://raw.githubusercontent.com/MaastrichtU-IDS/semanticscience/master/ontology/sio.owl">SemanticScience Integrated Ontology (SIO)</a></li>
      <li><a href="https://www.w3.org/TR/prov-o/">The Provenance Ontology (PROV-O)</a></li>
      <li><a href="{{site.baseurl}}files/Ontologies/explanations-pattern-ontology.owl">Explanations Pattern Ontology</a></li>
    </ul>
    
  <h4> Ontology Prefixes </h4>
  <table style="width:100%">
    <tr>
      <th>Prefix</th>
      <th>Links</th> 
    </tr>
    <tr>
      <td>ontology</td>
      <td><code>https://purl.org/ai4s/ontology/</code></td> 
    </tr>
    <tr>
      <td>owl</td>
      <td><code>http://www.w3.org/2002/07/owl#</code></td> 
    </tr>
    <tr>
      <td>planning-ontology</td>
      <td><code>https://purl.org/ai4s/ontology/planning#</code></td> 
    </tr>
    <tr>
      <td>prov</td>
      <td><code>http://www.w3.org/ns/prov#</code></td> 
    </tr>
    <tr>
      <td>rdf</td>
      <td><code>http://www.w3.org/1999/02/22-rdf-syntax-ns#</code></td> 
    </tr>
    <tr>
      <td>rdfs</td>
      <td><code>http://www.w3.org/2000/01/rdf-schema#</code></td> 
    </tr>
    <tr>
      <td>xsd</td>
      <td><code>http://www.w3.org/2001/XMLSchema#</code></td> 
    </tr>
  </table>
