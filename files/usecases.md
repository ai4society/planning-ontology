---
layout: default
title: Use Cases
---

[Use Case 1](#usecase_1) | [Use Case 2](#usecase_2)

<article class="mb-5" id="usecase_1">
<content>
<h2>Usecase 1: Identifying Most Promising Planner</h2>
  <p>
    <i>We demonstrate the ontology’s usage for identifying the most promising planner, in terms of past performance, for a specific planning domain using data from IPC.</i>
  </p>
  <p style="text-indent: 4ch">
    One of the major challenges in the field of artificial intelligence (AI) is the automated selection of the most promising planner for a given planning domain. This challenge arises due to the vast number of available planners and the diversity of planning domains. The traditional way to select a planner is to experiment with various search algorithms and heuristics and settle on an appropriate combination as seen in IPC competitions. To address this challenge, we now present a new approach by using our planning ontology to represent the features of the planning domain and the capabilities of planners.
  </p>
  <p style="text-indent: 4ch">
    Our Planning Ontology establishes the connection between a planning domain and relevant planners by using data from International Planning Competitions (IPCs). The <a href="http://www.plg.inf.uc3m.es/ipc2011-deterministic/">IPC data</a> (optimal track) provides insights into how different planners performed across various domains during the competitions. For our experiment, we used this data to categorize planners’ relevance to domains as low, medium, or high based on their problem-solving success rates. We focused on four planners: <a href="https://www.fast-downward.org/IpcPlanners">Fast Downward Stone Soup</a>, <a href="https://www.fast-downward.org/IpcPlanners">LM-Cut</a>, <a href="https://www.fast-downward.org/IpcPlanners">Merge and Shrink</a>, and <a href="https://www.fast-downward.org/IpcPlanners">BJOLP</a>.
  </p>
  <p style="text-indent: 4ch">
    We evaluate 3 problem instances of the 14 domains from IPC-2011 (including scanalyzer, elevators, transport, parking, woodworking, floortile, barman, openstacks, nomystery, pegsol, visitall, tidybot, parcpinter, and sokoban) with 2 policies for selecting planners to generate plans for each of these problem instances:
    <ol>
      <li>
        <b>Random Policy</b>: To solve each problem instance, this policy selects a random planner from the available planners.
      </li>
      <li>
        <b>Ontology Policy</b>: To solve each problem instance, this policy extracts the information on the best planner for the problem domain from the ontology populated with IPC-2011 data.
        <figure>
          <figcaption>
            <b>Q: "Which is the best planner for blocksworld domain?"</b>
          </figcaption>
              <pre>
SELECT ?planner
WHERE {
  po:blocksworld po:hasHighRelevance ?planner .
}
              </pre>
        </figure>
      </li>
    </ol>
  </p>

  <p style="text-indent: 4ch">
    <a href="#table_2">Table 2</a> presents the results of our evaluation, indicating the average number of nodes expanded, during the search, to find a solution and plan cost for each policy in a given domain. The table provides a comprehensive summary of the performance of different planners in terms of their efficiency and effectiveness. An ideal planner is expected to generate a solution with low values for both of these metrics. The <i>Ontology Policy</i>, designed to select the most promising planner for a given domain, outperformed the <i>Random Policy</i> in terms of the average number of nodes expanded to find a solution. Moreover, the <i>Random Policy</i> failed to solve problems in the parking (1 out of 3), floortile (2 out of 3), and tidybot (2 out of 3) domains, which highlights the limitations of choosing a planner randomly. But if a domain is easily solvable by relevant planners that can tackle them, <i>Random Policy</i> may still do well.
  </p>

   <table border="1" cellspacing="0" cellpadding="5" id="table_2">
    <caption>
      Table 2: Demonstrating the effectiveness of two different policies employed to choose a planner for problem-solving. Comparing the average nodes expanded (Avg. Exp.) during the search and the resulting plan cost (Avg. Cost) for two policies.
    </caption>
    <thead>
      <tr>
        <th rowspan="2">Domain</th>
        <th colspan="2">Ontology Policy</th>
        <th colspan="2">Random Policy</th>
      </tr>
      <tr>
        <th>Avg. Exp. ± Std.</th>
        <th>Avg. Cost ± Std.</th>
        <th>Avg. Exp. ± Std.</th>
        <th>Avg. Cost ± Std.</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><i>ipc 1998 - gripper</i></td>
        <td><b>3.88e+03 ± 5.7e+03</b></td>
        <td>17 ± 4</td>
        <td>4.57e+03 ± 5.07e+03</td>
        <td>17 ± 4</td>
      </tr>
      <tr>
        <td><i>ipc 1998 - grid*</i></td>
        <td><b>1.98e+04 ± 2.79e+04</b></td>
        <td>20 ± 6</td>
        <td>2.57e+04 ± 3.63e+04</td>
        <td>20 ± 6</td>
      </tr>
      <tr>
        <td><i>ipc 2000 - blocks</i></td>
        <td><b>1.1e+01 ± 5.0e+00</b></td>
        <td>7 ± 1</td>
        <td>1.5e+01 ± 9.0e+00</td>
        <td>7 ± 1</td>
      </tr>
      <tr>
        <td><i>ipc 2000 - elevator</i></td>
        <td>1.0e+01 ± 7.0e+00</td>
        <td>4 ± 1</td>
        <td>1.0e+01 ± 7.0e+00</td>
        <td>4 ± 1</td>
      </tr>
      <tr>
        <td><i>ipc 2002 - depots</i></td>
        <td><b>1.61e+05 ± 2.28e+05</b></td>
        <td>8 ± 8</td>
        <td>4.19e+05 ± 5.91e+05</td>
        <td>18 ± 8</td>
      </tr>
      <tr>
        <td><i>ipc 2002 - driverlog</i></td>
        <td>8.28e+02 ± 7.11e+02</td>
        <td>13 ± 4</td>
        <td>8.28e+02 ± 7.11e+02</td>
        <td>13 ± 4</td>
      </tr>
      <tr>
        <td><i>ipc 2004 - pipesworld</i></td>
        <td><b>3.65e+03 ± 4.20e+03</b></td>
        <td>8 ± 2</td>
        <td>1.17e+04 ± 1.47e+04</td>
        <td>8 ± 2</td>
      </tr>
      <tr>
        <td><i>ipc 2004 - satellite</i></td>
        <td><b>3.48e+02 ± 4.85e+02</b></td>
        <td>8 ± 6</td>
        <td>9.32e+04 ± 1.32e+05</td>
        <td>8 ± 6</td>
      </tr>
      <tr>
        <td><i>ipc 2006 - rovers</i></td>
        <td><b>2.6e+01 ± 1.1e+01</b></td>
        <td>9 ± 1</td>
        <td>1.53e+02 ± 1.99e+02</td>
        <td>9 ± 1</td>
      </tr>
      <tr>
        <td><i>ipc 2006 - storage</i></td>
        <td><b>7.0e+00 ± 5.0e+00</b></td>
        <td>4 ± 2</td>
        <td>2.0e+01 ± 2.2e+01</td>
        <td>4 ± 2</td>
      </tr>
      <tr>
        <td><i>ipc 2008 - openstacks</i></td>
        <td>8.65e+02 ± 6.11e+02</td>
        <td>2 ± 0</td>
        <td>8.65e+02 ± 6.11e+02</td>
        <td>2 ± 0</td>
      </tr>
      <tr>
        <td><i>ipc 2008 - sokoban</i></td>
        <td><b>5.06e+03 ± 6.92e+03</b></td>
        <td>16 ± 8</td>
        <td>1.05e+05 ± 1.47e+05</td>
        <td>16 ± 8</td>
      </tr>
      <tr>
        <td><i>ipc 2011 - floor-tile**</i></td>
        <td><b>2.84e+05 ± 2.75e+05</b></td>
        <td>49 ± 6</td>
        <td>2.77e+07</td>
        <td>49</td>
      </tr>
      <tr>
        <td><i>ipc 2011 - peg-solitaire</i></td>
        <td><b>5.07e+04 ± 3.83e+04</b></td>
        <td>8 ± 0</td>
        <td>2.02e+05 ± 1.00e+05</td>
        <td>8 ± 0</td>
      </tr>
      <tr>
        <td><i>ipc 2014 - scanalyzer</i></td>
        <td><b>8.6e+03 ± 1.2e+03</b></td>
        <td>20 ± 3</td>
        <td>8.7e+03 ± 1.1e+03</td>
        <td>20 ± 3</td>
      </tr>
      <tr>
        <td><i>ipc 2014 - elevators</i></td>
        <td>1.5e+03 ± 2.5e+03</td>
        <td>52 ± 5</td>
        <td><b>6.5e+04 ± 1.2e+04</b></td>
        <td>52 ± 5</td>
      </tr>
      <tr>
        <td><i>ipc 2014 - transport</i></td>
        <td>1.7e+05 ± 2.0e+05</td>
        <td>491 ± 40</td>
        <td><b>1.3e+05 ± 1.5e+05</b></td>
        <td>491 ± 40</td>
      </tr>
      <tr>
        <td><i>ipc 2014 - parking*</i></td>
        <td><b>3.7e+05 ± 3.0e+04</b></td>
        <td>18 ± 2</td>
        <td>4.9e+05 ± 4.1e+04</td>
        <td>17 ± 2</td>
      </tr>
      <tr>
        <td><i>ipc 2014 - woodworking</i></td>
        <td><b>2.0e+03 ± 1.1e+02</b></td>
        <td>211 ± 10</td>
        <td>2.0e+04 ± 2.0e+03</td>
        <td>211 ± 10</td>
      </tr>
      <tr>
        <td><i>ipc 2014 - floortile**</i></td>
        <td>2.8e+03 ± 3.5e+02</td>
        <td>54 ± 4</td>
        <td><b>2.1e+03 ± 1.5e+02</b></td>
        <td>49 ± 5</td>
      </tr>
      <tr>
        <td><i>ipc 2014 - barman</i></td>
        <td><b>1.3e+06 ± 1.0e+05</b></td>
        <td>90 ± 8</td>
        <td>5.8e+06 ± 4.5e+05</td>
        <td>90 ± 8</td>
      </tr>
      <tr>
        <td><i>ipc 2014 - openstacks</i></td>
        <td><b>1.3e+05 ± 1.1e+04</b></td>
        <td>4 ± 0</td>
        <td>1.4e+05 ± 1.2e+04</td>
        <td>4 ± 0</td>
      </tr>
      <tr>
        <td><i>ipc 2014 - nomystery</i></td>
        <td>1.7e+03 ± 2.0e+02</td>
        <td>13 ± 1</td>
        <td>1.7e+03 ± 2.0e+02</td>
        <td>13 ± 1</td>
      </tr>
      <tr>
        <td><i>ipc 2014 - pegsol</i></td>
        <td><b>8.9e+04 ± 7.0e+03</b></td>
        <td>6 ± 0</td>
        <td>1.0e+05 ± 8.0e+03</td>
        <td>6 ± 0</td>
      </tr>
      <tr>
        <td><i>ipc 2014 - visitall</i></td>
        <td>5.0e+00 ± 0.3e+00</td>
        <td>4 ± 0</td>
        <td>5.0e+00 ± 0.3e+00</td>
        <td>4 ± 0</td>
      </tr>
      <tr>
        <td><i>ipc 2014 - tidybot**</i></td>
        <td><b>1.2e+03 ± 1.0e+02</b></td>
        <td>17 ± 2</td>
        <td>3.4e+03 ± 2.5e+02</td>
        <td>33 ± 3</td>
      </tr>
      <tr>
        <td><i>ipc 2014 - parcprinter</i></td>
        <td>5.4e+02 ± 4.5e+01</td>
        <td>441,374 ± 5,213</td>
        <td><b>4.2e+02 ± 3.5e+01</b></td>
        <td>441,374 ± 5,213</td>
      </tr>
      <tr>
        <td><i>ipc 2014 - sokoban</i></td>
        <td><b>9.7e+03 ± 8.0e+02</b></td>
        <td>25 ± 2</td>
        <td>1.6e+05 ± 1.2e+04</td>
        <td>25 ± 2</td>
      </tr>
      <tr>
        <td><i>ipc 2018 - organic-synthesis*</i></td>
        <td>2.0e+00 ± 1.0e+00</td>
        <td>1 ± 0</td>
        <td>2.0e+00 ± 1.0e+00</td>
        <td>1 ± 0</td>
      </tr>
    </tbody>
  </table>

<hr>
<article class="mb-5" id="usecase_2">
<content>
<h2>Usecase 2: Explanation Generation</h2> 

  <p>
    <i>We demonstrate the usage of ontology to extract relevant information to generate explanations for the plans generated by automated planners.</i>
  </p>
  <p style="text-indent: 4ch">
    In automated planning, providing clear and understandable explanations for plans remains a significant challenge, which is crucial for effective human-AI collaboration. Current techniques excel in plan generation but lack in delivering explanations, which is essential for building trust. Five primary explanation categories have been identified, and by using causal relationships, plan validators, and template-based text generators, explanations can be enhanced. We can support these by using the causal relationships represented in the ontology, analysis of the plan from a plan validator such as VAL, and a template-based text generator.
  </p>
  <p style="text-indent: 4ch">
    Our ontology-driven approach uses semantic web technologies to generate diverse explanation types by encoding planning domain knowledge, action semantics, and plan structures within the ontology. This enables the extraction of contextually rich explanations through SPARQL queries. We support three fundamental categories of planning explanations, as outlined in <a href="#table_3">Table 3</a>, ranging from high-level plan summaries to detailed justifications of individual actions. The following section expands on each category including a user question and the corresponding SPARQL query for our Planning Ontology. Note that the SPARQL queries provided below omit prefix declarations. In practice, appropriate prefixes (e.g., po:, rdf:) should be included at the beginning of each query.
  </p>

  <h3>Plan Explanation</h3>
  <p style="text-indent: 4ch">
    Plan Explanation is a crucial component in making automated planning systems more transparent and accessible. This category encompasses various approaches to translate complex PDDL plans into human-comprehensible formats, and bridges the gap between machine efficiency and human understanding. This approach facilitates better human-AI collaboration, as it allows non-expert users to quickly grasp the essence of a computed plan without the need for technical details.
  </p>
  
  <p style="text-indent: 4ch">
    <i>High-Level Plan Summary</i> provides an overview of the entire plan, explaining its validity and how it achieves the goal. It offers a broad perspective on the plan’s structure and purpose. The query below retrieves the plan explanation associated with a specific plan using the hasPlanExplanation data property. The retrieved explanation provides a high-level summary of why the plan is valid and how it achieves the goal, offering users a quick understanding of the plan’s overall strategy.
    <figure>
      <figcaption>
        <b>Q: "Why is this plan valid for achieving the goal?"</b>
      </figcaption>
          <pre>
SELECT ?explanation
WHERE {
  ?plan a po:plan .
  ?plan po:hasPlanExplanation ?explanation .
}
          </pre>
    </figure>
  </p>
  
  <p style="text-indent: 4ch">
    <i>Natural Language Generation (NLG)</i> for explaining plan steps involves translating the formal representation of actions, preconditions, and effects into natural language descriptions. While the ontology itself remains independent of the labels, incorporating meta-data within the labels allows for the generation of natural language explanations. The query below extracts the parameters, precondition labels, and effect labels of a specific action (in this case, ‘pick-up’). By mapping these technical details to natural language templates, we can generate human-readable explanations that illuminate the planner’s reasoning at each stage.
    <figure>
      <figcaption>
        <b>Q: "Can you describe the ‘pick-up’ action in simple terms?"</b>
      </figcaption>
          <pre>
SELECT ?param ?preconditionLabel ?effectLabel
WHERE {
  po:pick-up po:hasParameter ?param ;
             po:hasPrecondition ?preCondition ;
             po:hasEffect ?effect .
  ?preCondition rdf:label ?preconditionLabel .
  ?effect rdf:label ?effectLabel .
}
          </pre>
    </figure>
  </p>

  <h3>Explaining Specific Actions</h3>
  <p style="text-indent: 4ch">
    This category focuses on justifying why a particular action was chosen at a specific point in the plan, often related to the overall goal or the current state of the world. The query below retrieves the action explanation for an action using hasActionExplanation data property. This approach allows users to understand not just what the plan does, but why each step is necessary
    <figure>
      <figcaption>
        <b>Q: "Why was the ’pick-up’ action chosen at step 3 of the plan?"</b>
      </figcaption>
          <pre>
SELECT ?actionExplanations
WHERE {
  po:pick-up po:hasActionExplanation ?actionExplanations .
}
          </pre>
    </figure>
  </p>

  <h3>Explaining Non-Selection of Specific Actions</h3>
  <p style="text-indent: 4ch">
    This category addresses why certain actions were not chosen, which can be crucial for understanding the planner’s decision-making process and validating the optimality of the plan. Furthermore, providing contrastive explanations with the chosen action enhances the system’s accountability and help users understand the trade-offs considered during the planning process. The query below allows us to extract and compare the preconditions and effects of two different actions. This might involve identifying unsatisfied preconditions in the resulting state, comparing the effects in relation to the goal state, or explaining how the chosen action better optimizes certain metrics (e.g., plan length, and resource usage).
    <figure>
      <figcaption>
        <b>Q: "Why did you perform (pick-up b3) instead of unstack in step 3?"</b>
      </figcaption>
          <pre>
SELECT ?action ?preconditionLabel ?effectLabel
WHERE {
  ?action po:hasParameter ?param .
  FILTER (?action IN (po:pick-up, po:unstack))
  
  ?action po:hasPrecondition ?preCondition .
  ?preCondition rdf:label ?preconditionLabel .
  
  ?action po:hasEffect ?effect .
  ?effect rdf:label ?effectLabel .
}
ORDER BY ? action
          </pre>
    </figure>
  </p>

  <br>
  <p>
    In practice, basic queries can be combined with more complex logic to retrieve appropriate ontology information. This retrieved information is then processed to generate natural language responses, ensuring that the data is presented in a meaningful and coherent format for the user (as shown in <a href="#table_3">Table 3</a> below). This approach improves AI planning interpretability and advances human-AI collaboration.
  </p>

  <table border="1" cellspacing="0" cellpadding="5" id="table_3">
  <caption>Table 3: The following table shows examples of answers generated from the information retrieved using the Planning Ontology for different explanation types.</caption>
  <thead>
    <tr>
      <th>Type of Explanation</th>
      <th>Description</th>
      <th>Example Question</th>
      <th>Example Response</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Plan Explanation</strong></td>
      <td>Involves translating planner outputs (e.g., PDDL plans) into forms that humans can easily understand</td>
      <td><i>Can you explain the plan to achieve the goal configuration in simple terms?</i></td>
      <td>Removed block 2 from block 1, placed block 2 on the table, picked up block 3 to stack on block 1, then stacked block 2 on block 3 to achieve the goal configuration.</td>
    </tr>
    <tr>
      <td><strong>Explaining specific actions</strong></td>
      <td>Explains why a specific action is taken in a plan</td>
      <td><i>Why did we unstack block 2 from block 1 as the first step?</i></td>
      <td>Unstacked block 2 from block 1 to free it; placed block 2 on the table for clear rearrangement; picked up block 3 to position above block 1; stacked block 2 on block 3 to finalize the desired configuration.</td>
    </tr>
    <tr>
      <td><strong>Explaining non-selection of specific actions</strong></td>
      <td>When a planner’s decision is contrasted with an alternative suggested by a human, an explanation should demonstrate why the alternative action was not chosen.</td>
      <td><i>Why didn’t the planner stack block 3 on block 1 before moving block 2?</i></td>
      <td>The action "stack block 3 on block 1" was not selected because: precondition "clear block 1" was not satisfied; action "unstack block 2 from block 1" was necessary first to satisfy the precondition; directly stacking block 3 on block 1 would violate the constraint "only one block can be on another block at a time".</td>
    </tr>
  </tbody>
</table>