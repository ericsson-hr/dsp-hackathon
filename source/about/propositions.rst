Propositions
=============

DSP Hackathon is organized on three levels: Basic, Intermediate, and Advanced. Competitors solve assignments that are presented on each level and advance to the next level by submitting their solutions and having them positively graded. The following page describes the contents of each level and the requirements for the competitors to advance further.

Basic Level
------------

The idea behind this level is to introduce the competitors to the field of digital signal processing and provide them with essential theoretical background that they will need to successfully solve assignments in the DSP Hackathon. On this level, participants will gain basic knowledge needed to solve the assignments. However, to succeed in the DSP Hackathon, competitors will be expected to expand their knowledge beyond what was presented in the basic level. The materials we have prepared should serve as a guideline to competitors as to what areas of DSP they should research further.

The theoretical background materials are accompanied by examples. These are prepared in two scripting languages: Python and MATLAB. The pairs are identical so that competitors can choose a language they are more acquainted with. Alongside the execution code, these examples contain comments that discuss the presented material. Jupyter notebook files will also be provided for those who prefer to use this tool.

For some topics, we have prepared assignments that the competitors are required to solve on their own.

The theoretical background materials will be made available on this website. Examples and assignments are made available to enrolled competitors through GitHub.

Level-up criterion
   Competitors are given access to the Intermediate level immediately alongside the Basic level. However, no Intermediate level solutions will be graded until the competitors solve **all the basic self-study (i.e. Basic-level) assignments**, and have them positively graded.

Prize criterion
   Solving Basic-level assignments indicates your active participation in the DSP Hackathon and you will be considered for a job offer or internship, along with receiving a complimentary goody bag.

Intermediate Level
------------------

Having fulfilled the Basic level advancement criterion, competitors can start solving Intermediate-level assignments. All the assignments require you to use the knowledge presented in Basic-level materials and additionally research into the DSP-related topics online or in textbooks.

For each assignment, the method of evaluation and a pass criterion are presented in the text of the assignment. Please see the propositions for each assignment individually.

Level-up criterion
   Competitors must solve **4 out of 5** Intermediate-level assignments and have them positively graded before they are allowed to continue to the Advanced level.

Prize criterion
   The fastest competitors to an assignment are eligible for prizes.

   .. note::
      Each assignment will have its own prize pool. The fastest competitors to solve assignment X shall receive the prize independent of the fastest competitors to solve assignment Y, etc.

Advanced Level
---------------

The Advanced level requires the competitor to combine the knowledge from DSP-related topics presented in Basic and Intermediate level, and apply it on a system level to produce a complex algorithm.

A single assignment is given. Its evaluation method and pass criteria are presented in the text of the assignment. Please see the propositions there.

Prize criterion
   The fastest competitors to solve the assignment are eligible for awards.

Format of submissions
----------------------

For each of the assignments, competitors need to present their work by adding their algorithmic solution to their git repository. Solutions can be written in Python on MATLAB with the following specifications:

Python
   Required *Python 3.x*.

   Only the following modules may be used:

   - NumPy
   - SciPy
   - Matplotlib

MATLAB
   Required *MATLAB 2018b* or newer.

   No use of toolboxes is allowed.

Some assignments could define output files. In that case, these should also be included in your submission.

Workflow
---------

When you enroll into DSP Hackathon, you will be taken to a GitHub Classroom page. A private repository will be opened for you, and you will be presented with input data for Basic- and Intermediate-level assignments.

As you solve the assignments, you will post your solutions as a git commit to your private repository on GitHub Classroom. When you do so, the reviewers will be notified, and they will start grading your solution. You are allowed to post a solution to each assignment as many times as you like. We will always evaluate your **most recent commit**.

.. important::
   Make sure you always push to the ``main`` branch on GitHub Classroom. We will only look at commits on that branch.

.. note::
   You do not have to solve the entire level before posting a solution to each assignment. Push your commit for each assignment as soon as you solve it, so you can compete in being the fastest to solve it.

When determining which competitor was the fastest to solve an assignment, we will be looking at **push timestamps**. To avoid missing out on your well-deserved prize, make sure you push your commits to GitHub as soon as you solve each assignment!

::

   git add *
   git commit
   git push
