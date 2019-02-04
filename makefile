all:
	java -jar antlr-4.7.2-complete.jar JLexer.g4
	javac -cp antlr-4.7.2-complete.jar:. JLexer.java

test:
	java -cp antlr-4.7.2-complete.jar:. org.antlr.v4.gui.TestRig JLexer tokens -tokens Sample.java