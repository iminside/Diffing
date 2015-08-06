require_relative 'diffing/diff'
require_relative 'diffing/part'
require_relative 'diffing/formats/ascii'
require_relative 'diffing/formats/html'


module Diffing

  class << self


    def by_chars( from, to )
      Diff.new from, to
    end

    def by_words( from, to )
      Diff.new from, to, /\S+|\s+/
    end

    def by_lines( from, to )
      Diff.new from, to, /[^\n]+|\n+/
    end


  end

end


from = "To create the longest common subsequence from a collection of k-candidates, a grid with each file's contents on each axis is crefsdated. The k-candidates are marked on the grid. A common subsequence can be created by joining marked coordinates of the grid such that any increase in i is accompanied by an increase in j.
This is illustrated in the diagram to the right.
Black dots represent candidates that would have to be considered by tdashe simple algorithm and the black lines are connections that create common subsequences of length 3.
Red dots represent k-candidates that are considered by the Hunt–McIlroy algorithm and the red line is the connection that creates a common subsequence of length 3.Computer science is the scientific and practical approach to computation and its applications. It is the systematic study of the feasibility, structure, expression, and mechanization of the methodical procedures (or algorithms) that underlie the acquisition, representation, processing, storage, communication of, and access to information, whether such informati423on is encoded as bits in a computer memory or transcribed in genes and protein structures in a biological cell.[1] An alternate, more succinct definition of computer science is the study of automating algorithmic processes that scale. A computer scientist specializes in the theory of computation and the design of computational systems.[2]

Its subfields can be divided into a variety of theoretical and practical di43sciplines. Some fields, such as computational complexity theory (which explores the fundamental properties of computational and intractable problems), are highly abstract, while fields such as computer graphics emphasize real-world visual applications. Still other fields focus on the challenges in implementing computation. For example, programming language theorcdsay considers various approaches to the description of computation, while the study of computer programming itself investigates various aspects of the234 use of programming language and complex systems. Human–computer interaction considers the challenges in making computers and 423computations useful, usable, and universally accessible to humans.During the 1940s, as new and more powerful computing machines were developed, the term computer came to refer to the machines rather than their human predecessors.[10] As it became clear that computers could be used for more than just mathematical calculations, the field of computer science broadened to study computation in general. Computer science began to be established as a distinct academic discipline in the 1950s and early 1960s.[11][12] The world's first computer science degree program, the Cambridge Diploma in Computer Science, began at the University of Cambridge Computer Laboratory in 1953. The first computer science degree program in the United States was formed at Purdue University in 1962.[13] Since practical computers became available, many applications of computing have become distinct areas of study in their own rights.

Although many initially 54235believed it was impossible that computers themselves could actually be a scientific field of study, in the late fifties it gradually became accepted among the greater academic population.[14][15] It is the now well-known IBM brand that formed part of the computer science revolution during this time. IBM (short ffsdor International Business Machines) released the IBM 704[16] and later the IBM 709[17] computers, which werfsde widely used during the exploration period of such devices. Still, working with the IBM [computer] was frustrating ... if you had misplaced as much as one letter in one instruction, the program would crash, and you would have to start the whole process over again.[14] During the late 1950s, the computer science discipline was very much in its developmental stages, and such issues were commonplace"


to   = "To create the longest common subsequencedas from a collection of k-candidates, a grid with each file's contents on each axis is created. The k-candidates are marked on the grid. A common subsequence can be created by joining marked coordinates of the grid such that any increase in i is accompanied by an increase in j.
This is illustrated in the diagram to the right.
Black dots represent candiczxdates that would have to be dsconsidered by the simple algorithm and the black lines are connections that create common subsequences of length 3.
Red dots represent k-candidates that are considered by the Hunt–McIlroy algorithm and the red line is the connection that creates a common subsequence of length 3.Computer science is the scientific and practical approach to computation and its applications. It is the systematic study of the feasibility, structure, expression, and mechanization of the methodical procedures (or algorithms) that underlie the acquisition, representation, processing, storage, communication of, and access to information, whether such information is encoded as bits in a computer memory or transcribed in genes afsdd protein structures in a biological cell.[1] An alternate, more succinct definition of computer science is the study of autofsdmating algorithmic processes that scale. A computer scientist specializes in the theory of computation and the design of computational systems.[2]

Its subfields can be divided into a variety of theoretical and practical disciplines. Some fields, such as computational complexity theory (which explores the fundamental properties of computational and intractable problems), are highly abstract, while fields such as computer graphics emphasize real-world visual applications. Still other fields focus on the challenges in implementing computation. For example, programming language theory conscfsdiders vdasarious approaches to the description of computation, while the study of computer progfsdramming itself investigates various aspeczxcts of the use of programming language and complex systems. Human–computer interaction considers the challenges in making computers and computations useful, usable, and universally accessiblfsde to humans.During the 1940s, as new and more powerful computing machines were developed, the term computer came to refer to the machines rather than their human predecessors.[10] As it became clear that computers could be used for more than just mathematical calculations, the field of computer science broadened to study computation in general. Computer science began to be established as a distinct academic discipline in the 1950s and early 1960s.[11][12] The world's first computer science degree program, the Cambridge Diploma in Computer Science, began at the University of Cambridge Computer Laboratory in 1953. The first computer science degree program in the United States was formed at Purdue University in 1962.[13] Since practical computers became available, many applications of computing have become distinct areas of study in their own rights.

Although many initially believed it was impossible that computers themselves could actually be a scientific field of study, in the late fifties it gradually became accepted among the greater academic population.[14][15] It is the now well-known IBM brand tfsdhat formed part of the computer science revolution during this time. IBM (short for International Business Machines) released the IBM 704[16] and later the IBM 709[534517] computers, which were widely used during the exploration period of such devices. Still, working with the IBM [computer] was frustrating ... if you had misplaced as much as one letter in one instruction, the program would crash, and you would have to start the whole process over again.[14] During the late 1950s, the computer science discipline was very much in its developmental stages, and such issues were commonplace"



#from = "To create the longest common subsequence from a collection of k-candidates, a grid with each file's contents on each axis is crefsdated. The k-candidates are marked on the grid. A common subsequence can be created by joining marked coordinates of the grid such that any increase in i is accompanied by an increase in j.
#This is illustrated in the diagram to the right.
#Black dots represent candidates that would have to be considered by tdashe simple algorithm and the black lines are connections that create common subsequences of length 3.
#Red dots represent k-candidates that are considered by the Hunt–McIlroy algorithm and the red line is the connection that creates a common subsequence of length 3.Computer science is the scientific and practical approach to computation and its applications. It is the systematic study of the feasibility, structure, expression, and mechanization of the methodical procedures (or algorithms) that underlie the acquisition, representation, processing, storage, communication of, and access to information, whether such informati423on is encoded as bits in a computer memory or transcribed in genes and protein structures in a biological cell.[1] An alternate, more succinct definition of computer science is the study of automating algorithmic processes that scale. A computer scientist specializes in the theory of computation and the design of computational systems.[2]
#
#Its subfields can be divided into a variety of theoretical and practical di43sciplines. Some fields, such as computational complexity theory (which explores the fundamental properties of computational and intractable problems), are highly abstract, while fields such as computer graphics emphasize real-world visual applications. Still other fields focus on the challenges in implementing computation. For example, programming language theorcdsay considers various approaches to the description of computation, while the study of computer programming itself investigates various aspects of the234 use of programming language and complex systems. Human–computer interaction considers the challenges in making computers and 423computations useful, usable, and universally accessible to humans.During the 1940s, as new and more powerful computing machines were developed, the term computer came to refer to the machines rather than their human predecessors.[10] As it became clear that computers could be used for more than just mathematical calculations, the field of computer science broadened to study computation in general. Computer science began to be established as a distinct academic discipline in the 1950s and early 1960s.[11][12] The world's first computer science degree program, the Cambridge Diploma in Computer Science, began at the University of Cambridge Computer Laboratory in 1953. The first computer science degree program in the United States was formed at Purdue University in 1962.[13] Since practical computers became available, many applications of computing have become distinct areas of study in their own rights."
#
#
#to   = "To create the longest common subsequencedas from a collection of k-candidates, a grid with each file's contents on each axis is created. The k-candidates are marked on the grid. A common subsequence can be created by joining marked coordinates of the grid such that any increase in i is accompanied by an increase in j.
#This is illustrated in the diagram to the right.
#Black dots represent candiczxdates that would have to be dsconsidered by the simple algorithm and the black lines are connections that create common subsequences of length 3.
#Red dots represent k-candidates that are considered by the Hunt–McIlroy algorithm and the red line is the connection that creates a common subsequence of length 3.Computer science is the scientific and practical approach to computation and its applications. It is the systematic study of the feasibility, structure, expression, and mechanization of the methodical procedures (or algorithms) that underlie the acquisition, representation, processing, storage, communication of, and access to information, whether such information is encoded as bits in a computer memory or transcribed in genes afsdd protein structures in a biological cell.[1] An alternate, more succinct definition of computer science is the study of autofsdmating algorithmic processes that scale. A computer scientist specializes in the theory of computation and the design of computational systems.[2]
#
#Its subfields can be divided into a variety of theoretical and practical disciplines. Some fields, such as computational complexity theory (which explores the fundamental properties of computational and intractable problems), are highly abstract, while fields such as computer graphics emphasize real-world visual applications. Still other fields focus on the challenges in implementing computation. For example, programming language theory conscfsdiders vdasarious approaches to the description of computation, while the study of computer progfsdramming itself investigates various aspeczxcts of the use of programming language and complex systems. Human–computer interaction considers the challenges in making computers and computations useful, usable, and universally accessiblfsde to humans.During the 1940s, as new and more powerful computing machines were developed, the term computer came to refer to the machines rather than their human predecessors.[10] As it became clear that computers could be used for more than just mathematical calculations, the field of computer science broadened to study computation in general. Computer science began to be established as a distinct academic discipline in the 1950s and early 1960s.[11][12] The world's first computer science degree program, the Cambridge Diploma in Computer Science, began at the University of Cambridge Computer Laboratory in 1953. The first computer science degree program in the United States was formed at Purdue University in 1962.[13] Since practical computers became available, many applications of computing have become distinct areas of study in their own rights."



#from = "To create the longest common subsequence from a collection of k-candidates, a grid with each file's contents on each axis is crefsdated. The k-candidates are marked on the grid. A common subsequence can be created by joining marked "
#
#
#to   = "To create the longest common subsequencedas from a collection of k-candidates, a grid with each file's contents on each axis is created. The k-candidates are marked on the grid. A common subsequence can be created by joining marked"

#from = "To create the longest common subsequence from a collection of k-candidates, a grid with each file's contents on each axis is crefsdated. The k-candidates are marked on the grid. A common subsequence can be created by joining marked coordinates of the grid such that any increase in i is accompanied by an increase in j.
#This is illustrated in the diagram to the right.
#Black dots represent candidates that would have to be considered by tdashe simple algorithm and the black lines are connections that create common subsequences of length 3.
#Red dots represent k-candidates that are considered by the Hunt–McIlroy algorithm and the red line is the connection that creates a common subsequence of length 3.Computer science is the scientific and practical approach to computation and its applications. It is the systematic study of the feasibility, structure, expression, and mechanization of the methodical procedures (or algorithms) that underlie the acquisition, representation, processing, storage, communication of, and access to information, whether such informati423on is encoded as bits in a computer memory or transcribed in genes and protein structures in a biological cell.[1] An alternate, more succinct definition of computer science is the study of automating algorithmic processes that scale. A computer scientist specializes in the theory of computation and the design of computational systems.[2]"
#
#
#to   = "To create the longest common subsequencedas from a collection of k-candidates, a grid with each file's contents on each axis is created. The k-candidates are marked on the grid. A common subsequence can be created by joining marked coordinates of the grid such that any increase in i is accompanied by an increase in j.
#This is illustrated in the diagram to the right.
#Black dots represent candiczxdates that would have to be dsconsidered by the simple algorithm and the black lines are connections that create common subsequences of length 3.
#Red dots represent k-candidates that are considered by the Hunt–McIlroy algorithm and the red line is the connection that creates a common subsequence of length 3.Computer science is the scientific and practical approach to computation and its applications. It is the systematic study of the feasibility, structure, expression, and mechanization of the methodical procedures (or algorithms) that underlie the acquisition, representation, processing, storage, communication of, and access to information, whether such information is encoded as bits in a computer memory or transcribed in genes afsdd protein structures in a biological cell.[1] An alternate, more succinct definition of computer science is the study of autofsdmating algorithmic processes that scale. A computer scientist specializes in the theory of computation and the design of computational systems.[2]"




#t= Time.now
#puts diff = Diffing.by_words( from, to )
#p Time.now - t

$tt = 0


r = 0
diff  = nil
1.times do
  t= Time.now
  diff = Diffing.by_words( from, to )
  p tt = Time.now - t
  r += tt
end

p "~ #{ r/10.to_f }"
p $tt


puts diff



#
#require 'diff-lcs'
#
#
#seq1 = from.split(' ' )
#seq2 = to.split(' ')
#
#
#
#t= Time.now
#
#diff = Diff::LCS.diff(seq1, seq2)
#
#p Time.now - t
#
#
#diff.flatten.each do |change|
#
#  action   = change.instance_variable_get( :@action )
#  position = change.instance_variable_get( :@position )
#  element  = change.instance_variable_get( :@element )
#
#  p "#{action} #{position} #{element}"
#
#  #changes.last
#
#end
