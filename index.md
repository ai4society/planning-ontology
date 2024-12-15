---
layout: default
title: "Planning Ontology"
---

[Abstract](#abstract) | [Introduction](#introduction) | [Contributions](#contributions) | [Resources](#resources) | [Tools](#toolsused) | [Team](#contributors) | [Publications](#publications)

<h1 class="page-title" style="text-transform:uppercase;" id="header">A Planning Ontology to Represent and Exploit Planning Knowledge for Performance Efficiency</h1>

<p class="message">A website to navigate resources open-sourced for the Planning Ontology. Use the side navigation panel to explore different sections of the website and click on an add symbol for more navigation options under some sections.</p>

<hr>
<article class="mb-5" id="abstract">
<content>
  <h2>Abstract</h2>
    <p style="text-indent: 4ch">
      Ontologies are known for their ability to organize rich metadata, support the identification of novel insights via semantic queries, and promote reuse. In this paper, we consider the problem of automated planning, where the objective is to find a sequence of actions that will move an agent from an initial state of the world to a desired goal state. We hypothesize that given the large number of available planners and diverse planning domains, they carry essential information that can be leveraged to improve many ontology applications. We use open data on planning domains and planners to construct the most comprehensive planning ontology to date, based on supported competency questions, and demonstrate its applications in two practical use cases - planner selection and plan explanation. We have also made the ontology and associated resources available to the AI and data communities to promote further research.
    </p>

 </content>

<hr>
<article class="mb-5" id="introduction">
<content>
  <h2>Introduction</h2>
    <p style="text-indent: 4ch">
    Automated planning, where the objective is to find a sequence of actions that will transition an agent from the initial state of the world to a desired goal state, is an active sub-field of Artificial Intelligence (AI). The ability to generate plans and make decisions in complex domains, such as robotics, logistics, and manufacturing, has led to significant progress in the automation of planning. Currently, there are numerous planning domains, planners, search algorithms, and associated heuristics in the field of automated planning. Each planner, in conjunction with a search algorithm and heuristic, generates plans with varying degrees of quality, cost, and optimality. The empirical results available for various planning problems, ranked by planner performance and the heuristics used as available in International Planning Competition (IPC), can provide valuable information to identify various tunable parameters to improve planner performance. Traditionally, improving planner performance involves manually curating potential combinations to identify the optimal planner configuration. However, there has been limited effort to model the available information in a structured knowledge representation, such as an ontology, to facilitate efficient reasoning and further enhance planner performance.
    </p>
    <p style="text-indent: 4ch">
      To address the challenge of representing planning problems and associated information in a structured manner, we propose an ontology for AI planning. An ontology is a formal representation of concepts and their relationships, which enables systematic analysis of planning domains and planners. The proposed ontology captures the features of a domain and the capabilities of planners, facilitating reasoning with existing planning problems, identifying similarities, and suggesting different planner configurations. Planning ontology can also be a useful resource for the creation of new planners as it captures essential information about planning domains and planners, which can be leveraged to design more efficient planning algorithms. Furthermore, ontology can promote knowledge sharing and collaboration within the planning community.
    </p>
    <p style="text-indent: 4ch">
      In the field of planning, several attempts have been made to create ontologies to enhance the understanding of planners’ capabilities. For instance, Plan-Taxonomy introduced a taxonomy that aimed to explain the functionality of planners. In PLANET, authors present a comprehensive ontology called which represents plans in real-world domains and can be leveraged to construct new applications. Nonetheless, the reusability of PLANET is limited as it is not open-sourced. Consequently, researchers face difficulty in extending or replicating the ontology.
    </p>
 </content>

<hr>
<article class="mb-5" id="contributions">
<content>
  <h2>Contributions</h2>
    <p style="text-indent: 4ch">
      We build an ontology for planning with the aim to identify and improve an efficient planner for a domain based on performance. For this, we leverage information obtained from the IPC. Building a planning ontology using data from IPC offers several benefits such as a comprehensive coverage of planning domains, a rich source for various benchmark evaluation metrics, and documentation for the planners. However, the ontology is not limited to the PDDL representation or domains in IPC, and can easily be extended to any. Our contributions are at the intersection of ontologies and AI planning in ontology development and showing benefits in two usecases:
      <ol>
        <li>
          <b>Ontology Development:</b> We developed an ontology for AI planning that can be used to represent and organize knowledge related to planning problems. This ontology provides a structured way to capture the relationships between different planning concepts and enables more efficient and effective knowledge sharing and reuse.
        </li>
        <li>
          <b>Usecase 1:</b> Identifying Most Promising Planner for Performance: We demonstrate the ontology’s usage for identifying best-performing planner for a specific planning domain using data of IPC-2011.
        </li>
        <li>
          <b>Usecase 2:</b> Macro Selection for Improving Planner Performance: We demonstrate the usage of ontology to extract domain-specific macros - which are action orderings - and show that they can improve planner performance drastically.
        </li>
      </ol>
    </p>
 </content>

<hr>
<article class="mb-5" id="resources">
<content>
<h2>List of Resources </h2>
<ul>
 <table style="width:100%">
  <tr>
    <th>Resources</th>
    <th>Links</th> 
  </tr>  
  <tr>
    <td>Project</td>
    <td><a href="https://github.com/ai4society/planning-ontology">GitHub Project Link</a> </td> 
  </tr>
  <tr>
    <td>PURL</td>
    <td><a href="https://raw.githack.com/BharathMuppasani/AI-Planning-Ontology/main/documentation/ontology_documentation.html">PURL for the Ontology</a> </td> 
  </tr>
  <tr>
    <td>Ontology Documentation</td>
    <td><a href="https://purl.org/ai4s/ontology/planning">PyLODE for the Ontology</a> </td> 
  </tr>
</table>
</ul>
</content>
 
<hr>
<article class="mb-5" id="toolsused">
<content>
<h2>Tools Used during Development</h2>
  <ul>
  <li>Ontology Editor: <a href="https://protege.stanford.edu/">Protégé</a></li>
  <li>Conceptual Diagram created using <a href="https://app.diagrams.net/">draw.io</a></li>
  <li>Ontology documentation tool: <a href="https://github.com/RDFLib/pyLODE">pyLODE</a></li>
  <li>RDF Visualization generated with <a href="https://rdflib.readthedocs.io/en/stable/">RDFLib</a></li>
  </ul>
</content>

<hr>   
<article class="mb-5" id="contributors">
<content>
  <h2>Contributors</h2>
   Bharath Muppasani<sup>1</sup>, 
   Vishal Pallagani<sup>1</sup>, 
   Nitin Gupta<sup>1</sup>, 
   Biplav Srivastava<sup>1</sup>,
   Raghava Mutharaju<sup>2</sup>, 
   Michael N. Huhns<sup>1</sup>, and 
   Vignesh Narayanan<sup>1</sup>
<p>
  <a href="https://sc.edu/"><sup>1</sup>University of South Carolina, USA</a> | 
  <a href="https://iiitd.ac.in/"><sup>2</sup>IIIT-Delhi, India</a>
</p>
</content>

<hr>
<article class="mb-5" id="publications">
<content>
  <h2>Publications</h2>
      <p>        
        Bharath Muppasani, Nitin Gupta, Vishal Pallagani, Biplav Srivastava, Raghava Mutharaju, Michael N. Huhns, and Vignesh Narayanan. (2024). Building a Plan Ontology to Represent and Exploit Planning Knowledge and Its Applications. <i>Eighth International Conference on Data Science and Management of Data (CODS-COMAD '24), India, 2024.</i>
      </p>
      
      <p>        
        Bharath Muppasani, Vishal Pallagani, Biplav Srivastava and Raghava Mutharaju. (2023). Building and Using a Planning Ontology from Past Data for Performance Efficiency. <i>Planning and Ontology Workshop (PLATO), ICAPS 2023, Prague, CZ.</i>
      </p>

      <p>
        Bharath Muppasani, Vishal Pallagani,Biplav Srivastava, Raghava Mutharaju, Michael Huhns, and Vignesh Narayanan. (2023). A Planning Ontology to Represent and Exploit Planning Knowledge for Performance Efficiency. <i>arXiv preprint arXiv:2307.13549.</i>
      </p>

</content>
