# peertube-db-schema
A peertube db schema made in dot language

## About peertube
PeerTube is a free and open-source, decentralized, federated video platform powered by ActivityPub and WebTorrent, that uses peer-to-peer technology to reduce load on individual servers when viewing videos. Started in 2017 by a programmer known as Chocobozzz, development of PeerTube is now supported by the French non-profit Framasoft. The aim is to provide an alternative to centralized platforms such as YouTube, Vimeo, and Dailymotion. (source: wikipedia)

More about peertube:
[https://joinpeertube.org/](https://joinpeertube.org/)

## About Graphviz

### What is Graphviz?

Graphviz is open source graph visualization software. Graph visualization is a way of representing structural information as diagrams of abstract graphs and networks. It has important applications in networking, bioinformatics, software engineering, database and web design, machine learning, and in visual interfaces for other technical domains.

### Features

The Graphviz layout programs take descriptions of graphs in a simple text language, and make diagrams in useful formats, such as images and SVG for web pages; PDF or Postscript for inclusion in other documents; or display in an interactive graph browser. Graphviz has many useful features for concrete diagrams, such as options for colors, fonts, tabular node layouts, line styles, hyperlinks, and custom shapes.

### Download

The current release of Graphviz can be downloaded [here](https://graphviz.org/download). The code base is stored [here](https://gitlab.com/graphviz/graphviz/) on GitLab.

### Documentation

Documentation is available in the released package and from [here](https://graphviz.org/documentation).

### More

You can read more about graphviz and the dot language in the official website: [graphviz.org](graphviz.org)


## Compiling the dot language

Use the following command on terminal to compile a ```.dot``` file to a ```.pdf``` file and save the output stream to a local pdf file on you computer:

```dot -Tpdf er.dot > er.pdf```
