import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
void main(){
  runApp(MaterialApp(home:Readmore(),));
}

class Readmore extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("application")),
      body: const Column(
children: [
  ReadMoreText(
  'Flutter is Googles mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
  trimLines: 2,
  colorClickableText: Colors.pink,
  trimMode: TrimMode.Line,
  trimCollapsedText: 'Show more',
  trimExpandedText: 'Show less',
  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
),
ReadMoreText(
  'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
  trimLines: 2,
  colorClickableText: Colors.pink,
  trimMode: TrimMode.Line,
  trimCollapsedText: 'Show more',
  trimExpandedText: 'Show less',
  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
),
Column(
  children: [
        ReadMoreText(
    
      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS andParagraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences, a paragraph is half a page long, etc. In reality, though, the unity and coherence of ideas among sentences is what constitutes a paragraph. A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long. Ultimately, a paragraph is a sentence or group of sentences that support one main idea. In this handout, we will refer to this as the “controlling idea,” because it controls what happens in the rest of the paragraph.Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences, a paragraph is half a page long, etc. In reality, though, the unity and coherence of ideas among sentences is what constitutes a paragraph. A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long. Ultimately, a paragraph is a sentence or group of sentences that support one main idea. In this handout, we will refer to this as the “controlling idea,” because it controls what happens in the rest of the paragraph.Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences, a paragraph is half a page long, etc. In reality, though, the unity and coherence of ideas among sentences is what constitutes a paragraph. A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long. Ultimately, a paragraph is a sentence or group of sentences that support one main idea. In this handout, we will refer to this as the “controlling idea,” because it controls what happens in the rest of the paragraph.Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences, a paragraph is half a page long, etc. In reality, though, the unity and coherence of ideas among sentences is what constitutes a paragraph. A paragraph is defined as “a group of sentences or a single sentence that forms a unit” (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long. Ultimately, a paragraph is a sentence or group of sentences that support one main idea. In this handout, we will refer to this as the “controlling idea,” because it controls what happens in the rest of the paragraph. Android apps with the unified codebase.',
    
      trimLines: 2,
    
      colorClickableText: Colors.pink,
    
      trimMode: TrimMode.Line,
    
      trimCollapsedText: 'Show more',
    
      trimExpandedText: 'Show less',
    
      moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    
    ),
  ],
),


],




      ),
    );
  
  }

}