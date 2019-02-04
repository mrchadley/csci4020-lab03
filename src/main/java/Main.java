import org.antlr.v4.runtime.*;

public class Main{
	public static void printf(String fmt, Object... args) 
	{
        System.out.printf(fmt, args);
    }
	public static void main(String[] args) throws Exception
	{
		String sourcefile = args[0];

		CharStream input = CharStreams.fromFileName(sourcefile);

		JLexer jlexer = new JLexer(input);

		CommonTokenStream stream = new CommonTokenStream(jlexer);
		stream.fill();

		for(Token tok : stream.getTokens())
		{
			if(tok.getType() == JLexer.WHITESPACE || tok.getType() < 0) continue;
			printf("[%d: %s] %s\n", tok.getTokenIndex(), JLexer.ruleNames[tok.getType()-1], tok.getText());
		}
	}
}