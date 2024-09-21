---
layout: default
title: Competency Questions
---
[Questions](#competencyquestions) | [SPARQL Queries](#sparql)

<article class="mb-5" id="competencyquestions">
<content>
<h2>Example of Competency Questions</h2>
<p>
  For the evaluation of the competency questions, we have considered a sample knowledge graph, shown in <a
    href="#figure_2"> Figure 2</a>, for blocksworld from IPC-2000 domain created using planning ontology shown in <a
    href="../ontology/#figure_1"> Figure 1</a>.
</p>

  <table>
    <thead>
      <tr>
        <th>Example Competency Question</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a href="#question1">(Q1). </a>What are the different types of planners used in automated planning?</td>
        <td>Identifies and lists the various types of planners utilized in the field of automated planning.</td>
      </tr>
      <tr>
        <td><a href="#question2">(Q2). </a>What is the relevance of a planner in a given problem domain?</td>
        <td>Explores the importance and applicability of different planners within a specific problem domain.</td>
      </tr>
      <tr>
        <td><a href="#question2">(Q3). </a>What are the available actions for a given domain?</td>
        <td>Provides a list of actions that can be performed within a specified domain.</td>
      </tr>
      <tr>
        <td><a href="#question4">(Q4). </a>What problems in a domain satisfy a given condition?</td>
        <td>Identifies problems within a domain that meet certain specified conditions.</td>
      </tr>
      <tr>
        <td><a href="#question5">(Q5). </a>What are all requirements a given domain has?</td>
        <td> Enumerates all the prerequisites or conditions necessary within a particular domain.</td>
      </tr>
      <tr>
        <td><a href="#question6">(Q6). </a>What is the cost associated with generating a plan for a given problem?</td>
        <td>Determines the cost involved in creating a plan to solve a specified problem.</td>
      </tr>
      <tr>
        <td><a href="#question7">(Q7). </a>How many parameters does a specific action have?</td>
        <td>Counts the number of parameters required for a particular action within a domain.</td>
      </tr>
      <tr>
        <td><a href="#question8">(Q8). </a>What planning type a specific planner belongs to?</td>
        <td>Classifies a given planner into its respective planning type.</td>
      </tr>
      <tr>
        <td><a href="#question9">(Q9). </a>What requirements does a given planner support?</td>
        <td> Lists the requirements that a specific planner is capable of addressing.</td>
      </tr>
      <tr>
        <td><a href="#question10">(Q10). </a>What are the different parameter types present in a domain?</td>
        <td>Identifies and lists the various types of parameters present within a specified domain.</td>
      </tr>
    </tbody>
  </table>
  
  <img src="{{site.baseurl}}files/images/competencyquestions/blocksworld_KG_example_planner.png"
    style="width:100%; height:100%" id="figure_2">
  <figcaption>
    Figure 2. Knowledge graph representation for blocksworld domain from IPC-2000.
  </figcaption>

<hr>
<h2 id="sparql">SPARQL Queries</h2>
<ol>
    
  <li id="question1"><strong>What are the different types of planners used in automated planning?</strong>
    <pre>
PREFIX plan-ontology: <https://purl.org/ai4s/ontology/planning#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT DISTINCT ?planner
WHERE {
?planner a plan-ontology:planner.
}
    </pre>
  </li>

  <li id="question2"><strong>What is the relevance of a planner in a given problem domain?</strong>
    <pre>
PREFIX plan-ontology: <https://purl.org/ai4s/ontology/planning#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT DISTINCT ?domain ?relevance ?planner
WHERE {
    ?domain a plan-ontology:domain;
            rdfs:label "caldera".
    ?planner a plan-ontology:planner.
    ?domain ?relevance ?planner.
}
    </pre>
  </li>

  <li id="question3"><strong>What are the available actions for a given domain?</strong>
    <pre>
PREFIX plan-ontology: <https://purl.org/ai4s/ontology/planning#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT DISTINCT ?domain ?action
WHERE {
    ?domain a plan-ontology:domain;
            rdfs:label "caldera".
    ?domain plan-ontology:hasMove ?action.
}
    </pre>
  </li>
  
  <li id="question4"><strong>What problems in a domain satisfy a given condition?</strong>
    <pre>
PREFIX plan-ontology: <https://purl.org/ai4s/ontology/planning#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT DISTINCT ?problem
WHERE {
    ?domain a plan-ontology:domain;
            rdfs:label "caldera".
    ?problem a plan-ontology:problem.
    ?domain plan-ontology:hasProblem ?problem.
    ?problem plan-ontology:hasGoalState ?condition.
    FILTER(?condition = "specified_condition")
}
    </pre>
  </li>

  <li id="question5"><strong>What are all requirements a given domain has?</strong>
    <pre>
PREFIX plan-ontology: <https://purl.org/ai4s/ontology/planning#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT DISTINCT ?domain ?requirement
WHERE {
    ?domain a plan-ontology:domain;
            rdfs:label "caldera".
    ?domain plan-ontology:hasRequirement ?requirement.
}
    </pre>
  </li>

  <li id="question6"><strong>What is the cost associated with generating a plan for a given problem?</strong>
    <pre>
PREFIX plan-ontology: <https://purl.org/ai4s/ontology/planning#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT DISTINCT ?plan ?cost
WHERE {
    ?problem a plan-ontology:problem;
            rdfs:label "problem-01".
    ?problem plan-ontology:hasPlan ?plan.
    ?plan plan-ontology:hasCost ?cost. 
}
    </pre>
  </li>

  <li id="question7"><strong>How many parameters does a specific action have?</strong>
    <pre>
PREFIX plan-ontology: <https://purl.org/ai4s/ontology/planning#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT (COUNT(?parameter) AS ?parameterCount)
WHERE {
  ?action a plan-ontology:action;
          rdfs:label "get_domain". # action of domain caldera
  ?action plan-ontology:hasParameter ?parameter.
}
    </pre>
  </li>

  <li id="question8"><strong>What planning type a specific planner belongs to?</strong>
    <pre>
PREFIX plan-ontology: <https://purl.org/ai4s/ontology/planning#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT DISTINCT ?planner ?planningType
WHERE {
  ?planner a plan-ontology:planner;
          rdfs:label "Delfi1".
  ?planner plan-ontology:ofPlannerType ?planningType.
}
    </pre>
  </li>

  <li id="question9"><strong>What requirements does a given planner support?</strong>
    <pre>
PREFIX plan-ontology: <https://purl.org/ai4s/ontology/planning#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT DISTINCT ?planner ?requirement
WHERE {
  ?planner a plan-ontology:planner;
          rdfs:label "Delfi1".
  ?planner plan-ontology:solvesRequirement ?requirement.
}
    </pre>
  </li>

  <li id="question10"><strong>What are the different parameter types present in a domain?</strong>
    <pre>
PREFIX plan-ontology: <https://purl.org/ai4s/ontology/planning#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

SELECT DISTINCT ?domain ?parameterType
WHERE {
    ?domain a plan-ontology:domain;
            rdfs:label "caldera".
    ?domain plan-ontology:hasParameterType ?parameterType.
}
    </pre>
  </li>

</ol>
</content>