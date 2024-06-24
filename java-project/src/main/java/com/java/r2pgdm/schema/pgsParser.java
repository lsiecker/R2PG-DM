package com.java.r2pgdm.schema;

// Generated from antrl/pgs.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({ "all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue" })
public class pgsParser extends Parser {
	static {
		RuntimeMetaData.checkVersion("4.13.1", RuntimeMetaData.VERSION);
	}

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache = new PredictionContextCache();
	public static final int T__0 = 1, T__1 = 2, T__2 = 3, T__3 = 4, T__4 = 5, T__5 = 6, T__6 = 7, T__7 = 8, T__8 = 9,
			T__9 = 10, T__10 = 11, T__11 = 12, T__12 = 13, T__13 = 14, T__14 = 15, T__15 = 16, T__16 = 17,
			T__17 = 18, T__18 = 19, T__19 = 20, T__20 = 21, T__21 = 22, T__22 = 23, T__23 = 24,
			T__24 = 25, T__25 = 26, T__26 = 27, T__27 = 28, T__28 = 29, CREATE = 30, NODE = 31,
			EDGE = 32, OPEN = 33, OPTIONAL = 34, TYPE = 35, GRAPH = 36, STRICT = 37, LOOSE = 38,
			ABSTRACT = 39, IMPORTS = 40, SP = 41, WHITESPACE = 42, StringLiteral = 43, EscapedChar = 44,
			HexDigit = 45, Digit = 46, NonZeroDigit = 47, NonZeroOctDigit = 48, HexLetter = 49,
			ZeroDigit = 50;
	public static final int RULE_pgs = 0, RULE_createType = 1, RULE_createNodeType = 2, RULE_createEdgeType = 3,
			RULE_createGraphType = 4, RULE_graphType = 5, RULE_typeForm = 6, RULE_graphTypeDefinition = 7,
			RULE_elementTypes = 8, RULE_elementType = 9, RULE_nodeType = 10, RULE_edgeType = 11,
			RULE_middleType = 12, RULE_endpointType = 13, RULE_labelPropertySpec = 14,
			RULE_labelSpec = 15, RULE_propertySpec = 16, RULE_properties = 17, RULE_property = 18,
			RULE_propertyType = 19, RULE_key = 20, RULE_labelName = 21, RULE_typeName = 22,
			RULE_dash = 23, RULE_rightArrowHead = 24;

	private static String[] makeRuleNames() {
		return new String[] {
				"pgs", "createType", "createNodeType", "createEdgeType", "createGraphType",
				"graphType", "typeForm", "graphTypeDefinition", "elementTypes", "elementType",
				"nodeType", "edgeType", "middleType", "endpointType", "labelPropertySpec",
				"labelSpec", "propertySpec", "properties", "property", "propertyType",
				"key", "labelName", "typeName", "dash", "rightArrowHead"
		};
	}

	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
				null, "';'", "'{'", "'}'", "','", "'('", "')'", "'['", "']'", "':'",
				"'|'", "'&'", "'?'", "'-'", "'\\u00AD'", "'\\u2010'", "'\\u2011'", "'\\u2012'",
				"'\\u2013'", "'\\u2014'", "'\\u2015'", "'\\u2212'", "'\\uFE58'", "'\\uFE63'",
				"'\\uFF0D'", "'>'", "'\\u27E9'", "'\\u3009'", "'\\uFE65'", "'\\uFF1E'",
				null, null, null, null, null, null, null, null, null, null, null, null,
				null, null, null, null, null, null, null, null, "'0'"
		};
	}

	private static final String[] _LITERAL_NAMES = makeLiteralNames();

	private static String[] makeSymbolicNames() {
		return new String[] {
				null, null, null, null, null, null, null, null, null, null, null, null,
				null, null, null, null, null, null, null, null, null, null, null, null,
				null, null, null, null, null, null, "CREATE", "NODE", "EDGE", "OPEN",
				"OPTIONAL", "TYPE", "GRAPH", "STRICT", "LOOSE", "ABSTRACT", "IMPORTS",
				"SP", "WHITESPACE", "StringLiteral", "EscapedChar", "HexDigit", "Digit",
				"NonZeroDigit", "NonZeroOctDigit", "HexLetter", "ZeroDigit"
		};
	}

	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() {
		return "pgs.g4";
	}

	@Override
	public String[] getRuleNames() {
		return ruleNames;
	}

	@Override
	public String getSerializedATN() {
		return _serializedATN;
	}

	@Override
	public ATN getATN() {
		return _ATN;
	}

	public pgsParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
	}

	@SuppressWarnings("CheckReturnValue")
	public static class PgsContext extends ParserRuleContext {
		public List<CreateTypeContext> createType() {
			return getRuleContexts(CreateTypeContext.class);
		}

		public CreateTypeContext createType(int i) {
			return getRuleContext(CreateTypeContext.class, i);
		}

		public TerminalNode EOF() {
			return getToken(pgsParser.EOF, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public PgsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_pgs;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterPgs(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitPgs(this);
		}
	}

	public final PgsContext pgs() throws RecognitionException {
		PgsContext _localctx = new PgsContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_pgs);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
				setState(51);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == SP) {
					{
						setState(50);
						match(SP);
					}
				}

				setState(53);
				createType();
				setState(66);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input, 4, _ctx);
				while (_alt != 2 && _alt != org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER) {
					if (_alt == 1) {
						{
							{
								setState(55);
								_errHandler.sync(this);
								switch (getInterpreter().adaptivePredict(_input, 1, _ctx)) {
									case 1: {
										setState(54);
										match(SP);
									}
										break;
								}
								setState(58);
								_errHandler.sync(this);
								_la = _input.LA(1);
								if (_la == T__0) {
									{
										setState(57);
										match(T__0);
									}
								}

								setState(61);
								_errHandler.sync(this);
								_la = _input.LA(1);
								if (_la == SP) {
									{
										setState(60);
										match(SP);
									}
								}

								setState(63);
								createType();
							}
						}
					}
					setState(68);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input, 4, _ctx);
				}
				setState(76);
				_errHandler.sync(this);
				switch (getInterpreter().adaptivePredict(_input, 7, _ctx)) {
					case 1: {
						setState(70);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if (_la == SP) {
							{
								setState(69);
								match(SP);
							}
						}

						setState(72);
						match(T__0);
						setState(74);
						_errHandler.sync(this);
						switch (getInterpreter().adaptivePredict(_input, 6, _ctx)) {
							case 1: {
								setState(73);
								match(SP);
							}
								break;
						}
					}
						break;
				}
				setState(79);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == SP) {
					{
						setState(78);
						match(SP);
					}
				}

				setState(81);
				match(EOF);
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CreateTypeContext extends ParserRuleContext {
		public CreateNodeTypeContext createNodeType() {
			return getRuleContext(CreateNodeTypeContext.class, 0);
		}

		public CreateEdgeTypeContext createEdgeType() {
			return getRuleContext(CreateEdgeTypeContext.class, 0);
		}

		public CreateGraphTypeContext createGraphType() {
			return getRuleContext(CreateGraphTypeContext.class, 0);
		}

		public CreateTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_createType;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterCreateType(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitCreateType(this);
		}
	}

	public final CreateTypeContext createType() throws RecognitionException {
		CreateTypeContext _localctx = new CreateTypeContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_createType);
		try {
			setState(86);
			_errHandler.sync(this);
			switch (getInterpreter().adaptivePredict(_input, 9, _ctx)) {
				case 1:
					enterOuterAlt(_localctx, 1); {
					setState(83);
					createNodeType();
				}
					break;
				case 2:
					enterOuterAlt(_localctx, 2); {
					setState(84);
					createEdgeType();
				}
					break;
				case 3:
					enterOuterAlt(_localctx, 3); {
					setState(85);
					createGraphType();
				}
					break;
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CreateNodeTypeContext extends ParserRuleContext {
		public TerminalNode CREATE() {
			return getToken(pgsParser.CREATE, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public TerminalNode NODE() {
			return getToken(pgsParser.NODE, 0);
		}

		public TerminalNode TYPE() {
			return getToken(pgsParser.TYPE, 0);
		}

		public NodeTypeContext nodeType() {
			return getRuleContext(NodeTypeContext.class, 0);
		}

		public TerminalNode ABSTRACT() {
			return getToken(pgsParser.ABSTRACT, 0);
		}

		public CreateNodeTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_createNodeType;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterCreateNodeType(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitCreateNodeType(this);
		}
	}

	public final CreateNodeTypeContext createNodeType() throws RecognitionException {
		CreateNodeTypeContext _localctx = new CreateNodeTypeContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_createNodeType);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
				setState(88);
				match(CREATE);
				setState(89);
				match(SP);
				setState(90);
				match(NODE);
				setState(91);
				match(SP);
				setState(92);
				match(TYPE);
				setState(93);
				match(SP);
				setState(96);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == ABSTRACT) {
					{
						setState(94);
						match(ABSTRACT);
						setState(95);
						match(SP);
					}
				}

				setState(98);
				nodeType();
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CreateEdgeTypeContext extends ParserRuleContext {
		public TerminalNode CREATE() {
			return getToken(pgsParser.CREATE, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public TerminalNode EDGE() {
			return getToken(pgsParser.EDGE, 0);
		}

		public TerminalNode TYPE() {
			return getToken(pgsParser.TYPE, 0);
		}

		public EdgeTypeContext edgeType() {
			return getRuleContext(EdgeTypeContext.class, 0);
		}

		public TerminalNode ABSTRACT() {
			return getToken(pgsParser.ABSTRACT, 0);
		}

		public CreateEdgeTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_createEdgeType;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterCreateEdgeType(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitCreateEdgeType(this);
		}
	}

	public final CreateEdgeTypeContext createEdgeType() throws RecognitionException {
		CreateEdgeTypeContext _localctx = new CreateEdgeTypeContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_createEdgeType);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
				setState(100);
				match(CREATE);
				setState(101);
				match(SP);
				setState(102);
				match(EDGE);
				setState(103);
				match(SP);
				setState(104);
				match(TYPE);
				setState(105);
				match(SP);
				setState(108);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == ABSTRACT) {
					{
						setState(106);
						match(ABSTRACT);
						setState(107);
						match(SP);
					}
				}

				setState(110);
				edgeType();
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CreateGraphTypeContext extends ParserRuleContext {
		public TerminalNode CREATE() {
			return getToken(pgsParser.CREATE, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public TerminalNode GRAPH() {
			return getToken(pgsParser.GRAPH, 0);
		}

		public TerminalNode TYPE() {
			return getToken(pgsParser.TYPE, 0);
		}

		public GraphTypeContext graphType() {
			return getRuleContext(GraphTypeContext.class, 0);
		}

		public CreateGraphTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_createGraphType;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterCreateGraphType(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitCreateGraphType(this);
		}
	}

	public final CreateGraphTypeContext createGraphType() throws RecognitionException {
		CreateGraphTypeContext _localctx = new CreateGraphTypeContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_createGraphType);
		try {
			enterOuterAlt(_localctx, 1);
			{
				setState(112);
				match(CREATE);
				setState(113);
				match(SP);
				setState(114);
				match(GRAPH);
				setState(115);
				match(SP);
				setState(116);
				match(TYPE);
				setState(117);
				match(SP);
				setState(118);
				graphType();
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class GraphTypeContext extends ParserRuleContext {
		public TypeNameContext typeName() {
			return getRuleContext(TypeNameContext.class, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public TypeFormContext typeForm() {
			return getRuleContext(TypeFormContext.class, 0);
		}

		public GraphTypeDefinitionContext graphTypeDefinition() {
			return getRuleContext(GraphTypeDefinitionContext.class, 0);
		}

		public GraphTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_graphType;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterGraphType(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitGraphType(this);
		}
	}

	public final GraphTypeContext graphType() throws RecognitionException {
		GraphTypeContext _localctx = new GraphTypeContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_graphType);
		try {
			enterOuterAlt(_localctx, 1);
			{
				setState(120);
				typeName();
				setState(121);
				match(SP);
				setState(122);
				typeForm();
				setState(124);
				_errHandler.sync(this);
				switch (getInterpreter().adaptivePredict(_input, 12, _ctx)) {
					case 1: {
						setState(123);
						match(SP);
					}
						break;
				}
				setState(126);
				graphTypeDefinition();
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class TypeFormContext extends ParserRuleContext {
		public TerminalNode STRICT() {
			return getToken(pgsParser.STRICT, 0);
		}

		public TerminalNode LOOSE() {
			return getToken(pgsParser.LOOSE, 0);
		}

		public TypeFormContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_typeForm;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterTypeForm(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitTypeForm(this);
		}
	}

	public final TypeFormContext typeForm() throws RecognitionException {
		TypeFormContext _localctx = new TypeFormContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_typeForm);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
				setState(128);
				_la = _input.LA(1);
				if (!(_la == STRICT || _la == LOOSE)) {
					_errHandler.recoverInline(this);
				} else {
					if (_input.LA(1) == Token.EOF)
						matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class GraphTypeDefinitionContext extends ParserRuleContext {
		public TerminalNode IMPORTS() {
			return getToken(pgsParser.IMPORTS, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public TypeNameContext typeName() {
			return getRuleContext(TypeNameContext.class, 0);
		}

		public ElementTypesContext elementTypes() {
			return getRuleContext(ElementTypesContext.class, 0);
		}

		public GraphTypeDefinitionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_graphTypeDefinition;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterGraphTypeDefinition(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitGraphTypeDefinition(this);
		}
	}

	public final GraphTypeDefinitionContext graphTypeDefinition() throws RecognitionException {
		GraphTypeDefinitionContext _localctx = new GraphTypeDefinitionContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_graphTypeDefinition);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
				setState(133);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == IMPORTS) {
					{
						setState(130);
						match(IMPORTS);
						setState(131);
						match(SP);
						setState(132);
						typeName();
					}
				}

				setState(136);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == SP) {
					{
						setState(135);
						match(SP);
					}
				}

				setState(138);
				match(T__1);
				setState(140);
				_errHandler.sync(this);
				switch (getInterpreter().adaptivePredict(_input, 15, _ctx)) {
					case 1: {
						setState(139);
						match(SP);
					}
						break;
				}
				setState(143);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == T__4 || _la == StringLiteral) {
					{
						setState(142);
						elementTypes();
					}
				}

				setState(146);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == SP) {
					{
						setState(145);
						match(SP);
					}
				}

				setState(148);
				match(T__2);
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ElementTypesContext extends ParserRuleContext {
		public List<ElementTypeContext> elementType() {
			return getRuleContexts(ElementTypeContext.class);
		}

		public ElementTypeContext elementType(int i) {
			return getRuleContext(ElementTypeContext.class, i);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public ElementTypesContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_elementTypes;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterElementTypes(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitElementTypes(this);
		}
	}

	public final ElementTypesContext elementTypes() throws RecognitionException {
		ElementTypesContext _localctx = new ElementTypesContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_elementTypes);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
				setState(150);
				elementType();
				setState(161);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input, 20, _ctx);
				while (_alt != 2 && _alt != org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER) {
					if (_alt == 1) {
						{
							{
								setState(152);
								_errHandler.sync(this);
								_la = _input.LA(1);
								if (_la == SP) {
									{
										setState(151);
										match(SP);
									}
								}

								setState(154);
								match(T__3);
								setState(156);
								_errHandler.sync(this);
								_la = _input.LA(1);
								if (_la == SP) {
									{
										setState(155);
										match(SP);
									}
								}

								setState(158);
								elementType();
							}
						}
					}
					setState(163);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input, 20, _ctx);
				}
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ElementTypeContext extends ParserRuleContext {
		public TypeNameContext typeName() {
			return getRuleContext(TypeNameContext.class, 0);
		}

		public NodeTypeContext nodeType() {
			return getRuleContext(NodeTypeContext.class, 0);
		}

		public EdgeTypeContext edgeType() {
			return getRuleContext(EdgeTypeContext.class, 0);
		}

		public ElementTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_elementType;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterElementType(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitElementType(this);
		}
	}

	public final ElementTypeContext elementType() throws RecognitionException {
		ElementTypeContext _localctx = new ElementTypeContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_elementType);
		try {
			setState(167);
			_errHandler.sync(this);
			switch (getInterpreter().adaptivePredict(_input, 21, _ctx)) {
				case 1:
					enterOuterAlt(_localctx, 1); {
					setState(164);
					typeName();
				}
					break;
				case 2:
					enterOuterAlt(_localctx, 2); {
					setState(165);
					nodeType();
				}
					break;
				case 3:
					enterOuterAlt(_localctx, 3); {
					setState(166);
					edgeType();
				}
					break;
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class NodeTypeContext extends ParserRuleContext {
		public TypeNameContext typeName() {
			return getRuleContext(TypeNameContext.class, 0);
		}

		public LabelPropertySpecContext labelPropertySpec() {
			return getRuleContext(LabelPropertySpecContext.class, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public NodeTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_nodeType;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterNodeType(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitNodeType(this);
		}
	}

	public final NodeTypeContext nodeType() throws RecognitionException {
		NodeTypeContext _localctx = new NodeTypeContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_nodeType);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
				setState(169);
				match(T__4);
				setState(171);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == SP) {
					{
						setState(170);
						match(SP);
					}
				}

				setState(173);
				typeName();
				setState(174);
				labelPropertySpec();
				setState(176);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == SP) {
					{
						setState(175);
						match(SP);
					}
				}

				setState(178);
				match(T__5);
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class EdgeTypeContext extends ParserRuleContext {
		public List<EndpointTypeContext> endpointType() {
			return getRuleContexts(EndpointTypeContext.class);
		}

		public EndpointTypeContext endpointType(int i) {
			return getRuleContext(EndpointTypeContext.class, i);
		}

		public List<DashContext> dash() {
			return getRuleContexts(DashContext.class);
		}

		public DashContext dash(int i) {
			return getRuleContext(DashContext.class, i);
		}

		public MiddleTypeContext middleType() {
			return getRuleContext(MiddleTypeContext.class, 0);
		}

		public RightArrowHeadContext rightArrowHead() {
			return getRuleContext(RightArrowHeadContext.class, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public EdgeTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_edgeType;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterEdgeType(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitEdgeType(this);
		}
	}

	public final EdgeTypeContext edgeType() throws RecognitionException {
		EdgeTypeContext _localctx = new EdgeTypeContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_edgeType);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
				setState(180);
				endpointType();
				setState(182);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == SP) {
					{
						setState(181);
						match(SP);
					}
				}

				setState(184);
				dash();
				setState(186);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == SP) {
					{
						setState(185);
						match(SP);
					}
				}

				setState(188);
				middleType();
				setState(190);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == SP) {
					{
						setState(189);
						match(SP);
					}
				}

				setState(192);
				dash();
				setState(193);
				rightArrowHead();
				setState(195);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == SP) {
					{
						setState(194);
						match(SP);
					}
				}

				setState(197);
				endpointType();
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class MiddleTypeContext extends ParserRuleContext {
		public TypeNameContext typeName() {
			return getRuleContext(TypeNameContext.class, 0);
		}

		public LabelPropertySpecContext labelPropertySpec() {
			return getRuleContext(LabelPropertySpecContext.class, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public MiddleTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_middleType;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterMiddleType(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitMiddleType(this);
		}
	}

	public final MiddleTypeContext middleType() throws RecognitionException {
		MiddleTypeContext _localctx = new MiddleTypeContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_middleType);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
				setState(199);
				match(T__6);
				setState(201);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == SP) {
					{
						setState(200);
						match(SP);
					}
				}

				setState(203);
				typeName();
				setState(205);
				_errHandler.sync(this);
				switch (getInterpreter().adaptivePredict(_input, 29, _ctx)) {
					case 1: {
						setState(204);
						match(SP);
					}
						break;
				}
				setState(207);
				labelPropertySpec();
				setState(209);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == SP) {
					{
						setState(208);
						match(SP);
					}
				}

				setState(211);
				match(T__7);
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class EndpointTypeContext extends ParserRuleContext {
		public LabelPropertySpecContext labelPropertySpec() {
			return getRuleContext(LabelPropertySpecContext.class, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public EndpointTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_endpointType;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterEndpointType(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitEndpointType(this);
		}
	}

	public final EndpointTypeContext endpointType() throws RecognitionException {
		EndpointTypeContext _localctx = new EndpointTypeContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_endpointType);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
				setState(213);
				match(T__4);
				setState(215);
				_errHandler.sync(this);
				switch (getInterpreter().adaptivePredict(_input, 31, _ctx)) {
					case 1: {
						setState(214);
						match(SP);
					}
						break;
				}
				setState(217);
				labelPropertySpec();
				setState(219);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == SP) {
					{
						setState(218);
						match(SP);
					}
				}

				setState(221);
				match(T__5);
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class LabelPropertySpecContext extends ParserRuleContext {
		public LabelSpecContext labelSpec() {
			return getRuleContext(LabelSpecContext.class, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public TerminalNode OPEN() {
			return getToken(pgsParser.OPEN, 0);
		}

		public PropertySpecContext propertySpec() {
			return getRuleContext(PropertySpecContext.class, 0);
		}

		public LabelPropertySpecContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_labelPropertySpec;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterLabelPropertySpec(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitLabelPropertySpec(this);
		}
	}

	public final LabelPropertySpecContext labelPropertySpec() throws RecognitionException {
		LabelPropertySpecContext _localctx = new LabelPropertySpecContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_labelPropertySpec);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
				setState(228);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == T__8) {
					{
						setState(223);
						match(T__8);
						setState(225);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if (_la == SP) {
							{
								setState(224);
								match(SP);
							}
						}

						setState(227);
						labelSpec(0);
					}
				}

				setState(231);
				_errHandler.sync(this);
				switch (getInterpreter().adaptivePredict(_input, 35, _ctx)) {
					case 1: {
						setState(230);
						match(SP);
					}
						break;
				}
				setState(234);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == OPEN) {
					{
						setState(233);
						match(OPEN);
					}
				}

				setState(237);
				_errHandler.sync(this);
				switch (getInterpreter().adaptivePredict(_input, 37, _ctx)) {
					case 1: {
						setState(236);
						match(SP);
					}
						break;
				}
				setState(240);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == T__1) {
					{
						setState(239);
						propertySpec();
					}
				}

			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class LabelSpecContext extends ParserRuleContext {
		public List<LabelSpecContext> labelSpec() {
			return getRuleContexts(LabelSpecContext.class);
		}

		public LabelSpecContext labelSpec(int i) {
			return getRuleContext(LabelSpecContext.class, i);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public LabelNameContext labelName() {
			return getRuleContext(LabelNameContext.class, 0);
		}

		public TypeNameContext typeName() {
			return getRuleContext(TypeNameContext.class, 0);
		}

		public LabelSpecContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_labelSpec;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterLabelSpec(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitLabelSpec(this);
		}
	}

	public final LabelSpecContext labelSpec() throws RecognitionException {
		return labelSpec(0);
	}

	private LabelSpecContext labelSpec(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		LabelSpecContext _localctx = new LabelSpecContext(_ctx, _parentState);
		LabelSpecContext _prevctx = _localctx;
		int _startState = 30;
		enterRecursionRule(_localctx, 30, RULE_labelSpec, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
				setState(265);
				_errHandler.sync(this);
				switch (getInterpreter().adaptivePredict(_input, 43, _ctx)) {
					case 1: {
						setState(243);
						match(T__4);
						setState(245);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if (_la == SP) {
							{
								setState(244);
								match(SP);
							}
						}

						setState(247);
						labelSpec(0);
						setState(249);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if (_la == SP) {
							{
								setState(248);
								match(SP);
							}
						}

						setState(251);
						match(T__5);
					}
						break;
					case 2: {
						setState(253);
						match(T__6);
						setState(255);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if (_la == SP) {
							{
								setState(254);
								match(SP);
							}
						}

						setState(257);
						labelSpec(0);
						setState(259);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if (_la == SP) {
							{
								setState(258);
								match(SP);
							}
						}

						setState(261);
						match(T__7);
					}
						break;
					case 3: {
						setState(263);
						labelName();
					}
						break;
					case 4: {
						setState(264);
						typeName();
					}
						break;
				}
				_ctx.stop = _input.LT(-1);
				setState(292);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input, 50, _ctx);
				while (_alt != 2 && _alt != org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER) {
					if (_alt == 1) {
						if (_parseListeners != null)
							triggerExitRuleEvent();
						_prevctx = _localctx;
						{
							setState(290);
							_errHandler.sync(this);
							switch (getInterpreter().adaptivePredict(_input, 49, _ctx)) {
								case 1: {
									_localctx = new LabelSpecContext(_parentctx, _parentState);
									pushNewRecursionContext(_localctx, _startState, RULE_labelSpec);
									setState(267);
									if (!(precpred(_ctx, 5)))
										throw new FailedPredicateException(this, "precpred(_ctx, 5)");
									setState(269);
									_errHandler.sync(this);
									_la = _input.LA(1);
									if (_la == SP) {
										{
											setState(268);
											match(SP);
										}
									}

									setState(271);
									match(T__9);
									setState(273);
									_errHandler.sync(this);
									_la = _input.LA(1);
									if (_la == SP) {
										{
											setState(272);
											match(SP);
										}
									}

									setState(275);
									labelSpec(6);
								}
									break;
								case 2: {
									_localctx = new LabelSpecContext(_parentctx, _parentState);
									pushNewRecursionContext(_localctx, _startState, RULE_labelSpec);
									setState(276);
									if (!(precpred(_ctx, 4)))
										throw new FailedPredicateException(this, "precpred(_ctx, 4)");
									setState(278);
									_errHandler.sync(this);
									_la = _input.LA(1);
									if (_la == SP) {
										{
											setState(277);
											match(SP);
										}
									}

									setState(280);
									match(T__10);
									setState(282);
									_errHandler.sync(this);
									_la = _input.LA(1);
									if (_la == SP) {
										{
											setState(281);
											match(SP);
										}
									}

									setState(284);
									labelSpec(5);
								}
									break;
								case 3: {
									_localctx = new LabelSpecContext(_parentctx, _parentState);
									pushNewRecursionContext(_localctx, _startState, RULE_labelSpec);
									setState(285);
									if (!(precpred(_ctx, 3)))
										throw new FailedPredicateException(this, "precpred(_ctx, 3)");
									setState(287);
									_errHandler.sync(this);
									_la = _input.LA(1);
									if (_la == SP) {
										{
											setState(286);
											match(SP);
										}
									}

									setState(289);
									match(T__11);
								}
									break;
							}
						}
					}
					setState(294);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input, 50, _ctx);
				}
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class PropertySpecContext extends ParserRuleContext {
		public PropertiesContext properties() {
			return getRuleContext(PropertiesContext.class, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public TerminalNode OPEN() {
			return getToken(pgsParser.OPEN, 0);
		}

		public PropertySpecContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_propertySpec;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterPropertySpec(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitPropertySpec(this);
		}
	}

	public final PropertySpecContext propertySpec() throws RecognitionException {
		PropertySpecContext _localctx = new PropertySpecContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_propertySpec);
		int _la;
		try {
			setState(326);
			_errHandler.sync(this);
			switch (getInterpreter().adaptivePredict(_input, 59, _ctx)) {
				case 1:
					enterOuterAlt(_localctx, 1); {
					setState(295);
					match(T__1);
					setState(297);
					_errHandler.sync(this);
					_la = _input.LA(1);
					if (_la == SP) {
						{
							setState(296);
							match(SP);
						}
					}

					setState(299);
					properties();
					setState(308);
					_errHandler.sync(this);
					switch (getInterpreter().adaptivePredict(_input, 54, _ctx)) {
						case 1: {
							setState(301);
							_errHandler.sync(this);
							_la = _input.LA(1);
							if (_la == SP) {
								{
									setState(300);
									match(SP);
								}
							}

							setState(303);
							match(T__3);
							setState(305);
							_errHandler.sync(this);
							_la = _input.LA(1);
							if (_la == SP) {
								{
									setState(304);
									match(SP);
								}
							}

							setState(307);
							match(OPEN);
						}
							break;
					}
					setState(311);
					_errHandler.sync(this);
					_la = _input.LA(1);
					if (_la == SP) {
						{
							setState(310);
							match(SP);
						}
					}

					setState(313);
					match(T__2);
				}
					break;
				case 2:
					enterOuterAlt(_localctx, 2); {
					setState(315);
					match(T__1);
					setState(317);
					_errHandler.sync(this);
					switch (getInterpreter().adaptivePredict(_input, 56, _ctx)) {
						case 1: {
							setState(316);
							match(SP);
						}
							break;
					}
					setState(320);
					_errHandler.sync(this);
					_la = _input.LA(1);
					if (_la == OPEN) {
						{
							setState(319);
							match(OPEN);
						}
					}

					setState(323);
					_errHandler.sync(this);
					_la = _input.LA(1);
					if (_la == SP) {
						{
							setState(322);
							match(SP);
						}
					}

					setState(325);
					match(T__2);
				}
					break;
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class PropertiesContext extends ParserRuleContext {
		public List<PropertyContext> property() {
			return getRuleContexts(PropertyContext.class);
		}

		public PropertyContext property(int i) {
			return getRuleContext(PropertyContext.class, i);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public PropertiesContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_properties;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterProperties(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitProperties(this);
		}
	}

	public final PropertiesContext properties() throws RecognitionException {
		PropertiesContext _localctx = new PropertiesContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_properties);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
				setState(328);
				property();
				setState(339);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input, 62, _ctx);
				while (_alt != 2 && _alt != org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER) {
					if (_alt == 1) {
						{
							{
								setState(330);
								_errHandler.sync(this);
								_la = _input.LA(1);
								if (_la == SP) {
									{
										setState(329);
										match(SP);
									}
								}

								setState(332);
								match(T__3);
								setState(334);
								_errHandler.sync(this);
								_la = _input.LA(1);
								if (_la == SP) {
									{
										setState(333);
										match(SP);
									}
								}

								setState(336);
								property();
							}
						}
					}
					setState(341);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input, 62, _ctx);
				}
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class PropertyContext extends ParserRuleContext {
		public KeyContext key() {
			return getRuleContext(KeyContext.class, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public PropertyTypeContext propertyType() {
			return getRuleContext(PropertyTypeContext.class, 0);
		}

		public TerminalNode OPTIONAL() {
			return getToken(pgsParser.OPTIONAL, 0);
		}

		public PropertyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_property;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterProperty(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitProperty(this);
		}
	}

	public final PropertyContext property() throws RecognitionException {
		PropertyContext _localctx = new PropertyContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_property);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
				setState(344);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la == OPTIONAL) {
					{
						setState(342);
						match(OPTIONAL);
						setState(343);
						match(SP);
					}
				}

				setState(346);
				key();
				setState(347);
				match(SP);
				setState(348);
				propertyType();
				setState(350);
				_errHandler.sync(this);
				switch (getInterpreter().adaptivePredict(_input, 64, _ctx)) {
					case 1: {
						setState(349);
						match(SP);
					}
						break;
				}
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class PropertyTypeContext extends ParserRuleContext {
		public TerminalNode StringLiteral() {
			return getToken(pgsParser.StringLiteral, 0);
		}

		public PropertyTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_propertyType;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterPropertyType(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitPropertyType(this);
		}
	}

	public final PropertyTypeContext propertyType() throws RecognitionException {
		PropertyTypeContext _localctx = new PropertyTypeContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_propertyType);
		try {
			enterOuterAlt(_localctx, 1);
			{
				setState(352);
				match(StringLiteral);
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class KeyContext extends ParserRuleContext {
		public TerminalNode StringLiteral() {
			return getToken(pgsParser.StringLiteral, 0);
		}

		public KeyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_key;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterKey(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitKey(this);
		}
	}

	public final KeyContext key() throws RecognitionException {
		KeyContext _localctx = new KeyContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_key);
		try {
			enterOuterAlt(_localctx, 1);
			{
				setState(354);
				match(StringLiteral);
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class LabelNameContext extends ParserRuleContext {
		public TerminalNode StringLiteral() {
			return getToken(pgsParser.StringLiteral, 0);
		}

		public LabelNameContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_labelName;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterLabelName(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitLabelName(this);
		}
	}

	public final LabelNameContext labelName() throws RecognitionException {
		LabelNameContext _localctx = new LabelNameContext(_ctx, getState());
		enterRule(_localctx, 42, RULE_labelName);
		try {
			enterOuterAlt(_localctx, 1);
			{
				setState(356);
				match(StringLiteral);
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class TypeNameContext extends ParserRuleContext {
		public TerminalNode StringLiteral() {
			return getToken(pgsParser.StringLiteral, 0);
		}

		public TypeNameContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_typeName;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterTypeName(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitTypeName(this);
		}
	}

	public final TypeNameContext typeName() throws RecognitionException {
		TypeNameContext _localctx = new TypeNameContext(_ctx, getState());
		enterRule(_localctx, 44, RULE_typeName);
		try {
			enterOuterAlt(_localctx, 1);
			{
				setState(358);
				match(StringLiteral);
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class DashContext extends ParserRuleContext {
		public DashContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_dash;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterDash(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitDash(this);
		}
	}

	public final DashContext dash() throws RecognitionException {
		DashContext _localctx = new DashContext(_ctx, getState());
		enterRule(_localctx, 46, RULE_dash);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
				setState(360);
				_la = _input.LA(1);
				if (!((((_la) & ~0x3f) == 0 && ((1L << _la) & 33546240L) != 0))) {
					_errHandler.recoverInline(this);
				} else {
					if (_input.LA(1) == Token.EOF)
						matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class RightArrowHeadContext extends ParserRuleContext {
		public RightArrowHeadContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}

		@Override
		public int getRuleIndex() {
			return RULE_rightArrowHead;
		}

		@Override
		public void enterRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).enterRightArrowHead(this);
		}

		@Override
		public void exitRule(ParseTreeListener listener) {
			if (listener instanceof pgsListener)
				((pgsListener) listener).exitRightArrowHead(this);
		}
	}

	public final RightArrowHeadContext rightArrowHead() throws RecognitionException {
		RightArrowHeadContext _localctx = new RightArrowHeadContext(_ctx, getState());
		enterRule(_localctx, 48, RULE_rightArrowHead);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
				setState(362);
				_la = _input.LA(1);
				if (!((((_la) & ~0x3f) == 0 && ((1L << _la) & 1040187392L) != 0))) {
					_errHandler.recoverInline(this);
				} else {
					if (_input.LA(1) == Token.EOF)
						matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
			}
		} catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		} finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
			case 15:
				return labelSpec_sempred((LabelSpecContext) _localctx, predIndex);
		}
		return true;
	}

	private boolean labelSpec_sempred(LabelSpecContext _localctx, int predIndex) {
		switch (predIndex) {
			case 0:
				return precpred(_ctx, 5);
			case 1:
				return precpred(_ctx, 4);
			case 2:
				return precpred(_ctx, 3);
		}
		return true;
	}

	public static final String _serializedATN = "\u0004\u00012\u016d\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"
			+
			"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002" +
			"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002" +
			"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002" +
			"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f" +
			"\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0002\u0012\u0007\u0012" +
			"\u0002\u0013\u0007\u0013\u0002\u0014\u0007\u0014\u0002\u0015\u0007\u0015" +
			"\u0002\u0016\u0007\u0016\u0002\u0017\u0007\u0017\u0002\u0018\u0007\u0018" +
			"\u0001\u0000\u0003\u00004\b\u0000\u0001\u0000\u0001\u0000\u0003\u0000" +
			"8\b\u0000\u0001\u0000\u0003\u0000;\b\u0000\u0001\u0000\u0003\u0000>\b" +
			"\u0000\u0001\u0000\u0005\u0000A\b\u0000\n\u0000\f\u0000D\t\u0000\u0001" +
			"\u0000\u0003\u0000G\b\u0000\u0001\u0000\u0001\u0000\u0003\u0000K\b\u0000" +
			"\u0003\u0000M\b\u0000\u0001\u0000\u0003\u0000P\b\u0000\u0001\u0000\u0001" +
			"\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0003\u0001W\b\u0001\u0001" +
			"\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001" +
			"\u0002\u0001\u0002\u0003\u0002a\b\u0002\u0001\u0002\u0001\u0002\u0001" +
			"\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001" +
			"\u0003\u0001\u0003\u0003\u0003m\b\u0003\u0001\u0003\u0001\u0003\u0001" +
			"\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001" +
			"\u0004\u0001\u0004\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0003" +
			"\u0005}\b\u0005\u0001\u0005\u0001\u0005\u0001\u0006\u0001\u0006\u0001" +
			"\u0007\u0001\u0007\u0001\u0007\u0003\u0007\u0086\b\u0007\u0001\u0007\u0003" +
			"\u0007\u0089\b\u0007\u0001\u0007\u0001\u0007\u0003\u0007\u008d\b\u0007" +
			"\u0001\u0007\u0003\u0007\u0090\b\u0007\u0001\u0007\u0003\u0007\u0093\b" +
			"\u0007\u0001\u0007\u0001\u0007\u0001\b\u0001\b\u0003\b\u0099\b\b\u0001" +
			"\b\u0001\b\u0003\b\u009d\b\b\u0001\b\u0005\b\u00a0\b\b\n\b\f\b\u00a3\t" +
			"\b\u0001\t\u0001\t\u0001\t\u0003\t\u00a8\b\t\u0001\n\u0001\n\u0003\n\u00ac" +
			"\b\n\u0001\n\u0001\n\u0001\n\u0003\n\u00b1\b\n\u0001\n\u0001\n\u0001\u000b" +
			"\u0001\u000b\u0003\u000b\u00b7\b\u000b\u0001\u000b\u0001\u000b\u0003\u000b" +
			"\u00bb\b\u000b\u0001\u000b\u0001\u000b\u0003\u000b\u00bf\b\u000b\u0001" +
			"\u000b\u0001\u000b\u0001\u000b\u0003\u000b\u00c4\b\u000b\u0001\u000b\u0001" +
			"\u000b\u0001\f\u0001\f\u0003\f\u00ca\b\f\u0001\f\u0001\f\u0003\f\u00ce" +
			"\b\f\u0001\f\u0001\f\u0003\f\u00d2\b\f\u0001\f\u0001\f\u0001\r\u0001\r" +
			"\u0003\r\u00d8\b\r\u0001\r\u0001\r\u0003\r\u00dc\b\r\u0001\r\u0001\r\u0001" +
			"\u000e\u0001\u000e\u0003\u000e\u00e2\b\u000e\u0001\u000e\u0003\u000e\u00e5" +
			"\b\u000e\u0001\u000e\u0003\u000e\u00e8\b\u000e\u0001\u000e\u0003\u000e" +
			"\u00eb\b\u000e\u0001\u000e\u0003\u000e\u00ee\b\u000e\u0001\u000e\u0003" +
			"\u000e\u00f1\b\u000e\u0001\u000f\u0001\u000f\u0001\u000f\u0003\u000f\u00f6" +
			"\b\u000f\u0001\u000f\u0001\u000f\u0003\u000f\u00fa\b\u000f\u0001\u000f" +
			"\u0001\u000f\u0001\u000f\u0001\u000f\u0003\u000f\u0100\b\u000f\u0001\u000f" +
			"\u0001\u000f\u0003\u000f\u0104\b\u000f\u0001\u000f\u0001\u000f\u0001\u000f" +
			"\u0001\u000f\u0003\u000f\u010a\b\u000f\u0001\u000f\u0001\u000f\u0003\u000f" +
			"\u010e\b\u000f\u0001\u000f\u0001\u000f\u0003\u000f\u0112\b\u000f\u0001" +
			"\u000f\u0001\u000f\u0001\u000f\u0003\u000f\u0117\b\u000f\u0001\u000f\u0001" +
			"\u000f\u0003\u000f\u011b\b\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0003" +
			"\u000f\u0120\b\u000f\u0001\u000f\u0005\u000f\u0123\b\u000f\n\u000f\f\u000f" +
			"\u0126\t\u000f\u0001\u0010\u0001\u0010\u0003\u0010\u012a\b\u0010\u0001" +
			"\u0010\u0001\u0010\u0003\u0010\u012e\b\u0010\u0001\u0010\u0001\u0010\u0003" +
			"\u0010\u0132\b\u0010\u0001\u0010\u0003\u0010\u0135\b\u0010\u0001\u0010" +
			"\u0003\u0010\u0138\b\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010" +
			"\u0003\u0010\u013e\b\u0010\u0001\u0010\u0003\u0010\u0141\b\u0010\u0001" +
			"\u0010\u0003\u0010\u0144\b\u0010\u0001\u0010\u0003\u0010\u0147\b\u0010" +
			"\u0001\u0011\u0001\u0011\u0003\u0011\u014b\b\u0011\u0001\u0011\u0001\u0011" +
			"\u0003\u0011\u014f\b\u0011\u0001\u0011\u0005\u0011\u0152\b\u0011\n\u0011" +
			"\f\u0011\u0155\t\u0011\u0001\u0012\u0001\u0012\u0003\u0012\u0159\b\u0012" +
			"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0003\u0012\u015f\b\u0012" +
			"\u0001\u0013\u0001\u0013\u0001\u0014\u0001\u0014\u0001\u0015\u0001\u0015" +
			"\u0001\u0016\u0001\u0016\u0001\u0017\u0001\u0017\u0001\u0018\u0001\u0018" +
			"\u0001\u0018\u0000\u0001\u001e\u0019\u0000\u0002\u0004\u0006\b\n\f\u000e" +
			"\u0010\u0012\u0014\u0016\u0018\u001a\u001c\u001e \"$&(*,.0\u0000\u0003" +
			"\u0001\u0000%&\u0001\u0000\r\u0018\u0001\u0000\u0019\u001d\u0199\u0000" +
			"3\u0001\u0000\u0000\u0000\u0002V\u0001\u0000\u0000\u0000\u0004X\u0001" +
			"\u0000\u0000\u0000\u0006d\u0001\u0000\u0000\u0000\bp\u0001\u0000\u0000" +
			"\u0000\nx\u0001\u0000\u0000\u0000\f\u0080\u0001\u0000\u0000\u0000\u000e" +
			"\u0085\u0001\u0000\u0000\u0000\u0010\u0096\u0001\u0000\u0000\u0000\u0012" +
			"\u00a7\u0001\u0000\u0000\u0000\u0014\u00a9\u0001\u0000\u0000\u0000\u0016" +
			"\u00b4\u0001\u0000\u0000\u0000\u0018\u00c7\u0001\u0000\u0000\u0000\u001a" +
			"\u00d5\u0001\u0000\u0000\u0000\u001c\u00e4\u0001\u0000\u0000\u0000\u001e" +
			"\u0109\u0001\u0000\u0000\u0000 \u0146\u0001\u0000\u0000\u0000\"\u0148" +
			"\u0001\u0000\u0000\u0000$\u0158\u0001\u0000\u0000\u0000&\u0160\u0001\u0000" +
			"\u0000\u0000(\u0162\u0001\u0000\u0000\u0000*\u0164\u0001\u0000\u0000\u0000" +
			",\u0166\u0001\u0000\u0000\u0000.\u0168\u0001\u0000\u0000\u00000\u016a" +
			"\u0001\u0000\u0000\u000024\u0005)\u0000\u000032\u0001\u0000\u0000\u0000" +
			"34\u0001\u0000\u0000\u000045\u0001\u0000\u0000\u00005B\u0003\u0002\u0001" +
			"\u000068\u0005)\u0000\u000076\u0001\u0000\u0000\u000078\u0001\u0000\u0000" +
			"\u00008:\u0001\u0000\u0000\u00009;\u0005\u0001\u0000\u0000:9\u0001\u0000" +
			"\u0000\u0000:;\u0001\u0000\u0000\u0000;=\u0001\u0000\u0000\u0000<>\u0005" +
			")\u0000\u0000=<\u0001\u0000\u0000\u0000=>\u0001\u0000\u0000\u0000>?\u0001" +
			"\u0000\u0000\u0000?A\u0003\u0002\u0001\u0000@7\u0001\u0000\u0000\u0000" +
			"AD\u0001\u0000\u0000\u0000B@\u0001\u0000\u0000\u0000BC\u0001\u0000\u0000" +
			"\u0000CL\u0001\u0000\u0000\u0000DB\u0001\u0000\u0000\u0000EG\u0005)\u0000" +
			"\u0000FE\u0001\u0000\u0000\u0000FG\u0001\u0000\u0000\u0000GH\u0001\u0000" +
			"\u0000\u0000HJ\u0005\u0001\u0000\u0000IK\u0005)\u0000\u0000JI\u0001\u0000" +
			"\u0000\u0000JK\u0001\u0000\u0000\u0000KM\u0001\u0000\u0000\u0000LF\u0001" +
			"\u0000\u0000\u0000LM\u0001\u0000\u0000\u0000MO\u0001\u0000\u0000\u0000" +
			"NP\u0005)\u0000\u0000ON\u0001\u0000\u0000\u0000OP\u0001\u0000\u0000\u0000" +
			"PQ\u0001\u0000\u0000\u0000QR\u0005\u0000\u0000\u0001R\u0001\u0001\u0000" +
			"\u0000\u0000SW\u0003\u0004\u0002\u0000TW\u0003\u0006\u0003\u0000UW\u0003" +
			"\b\u0004\u0000VS\u0001\u0000\u0000\u0000VT\u0001\u0000\u0000\u0000VU\u0001" +
			"\u0000\u0000\u0000W\u0003\u0001\u0000\u0000\u0000XY\u0005\u001e\u0000" +
			"\u0000YZ\u0005)\u0000\u0000Z[\u0005\u001f\u0000\u0000[\\\u0005)\u0000" +
			"\u0000\\]\u0005#\u0000\u0000]`\u0005)\u0000\u0000^_\u0005\'\u0000\u0000" +
			"_a\u0005)\u0000\u0000`^\u0001\u0000\u0000\u0000`a\u0001\u0000\u0000\u0000" +
			"ab\u0001\u0000\u0000\u0000bc\u0003\u0014\n\u0000c\u0005\u0001\u0000\u0000" +
			"\u0000de\u0005\u001e\u0000\u0000ef\u0005)\u0000\u0000fg\u0005 \u0000\u0000" +
			"gh\u0005)\u0000\u0000hi\u0005#\u0000\u0000il\u0005)\u0000\u0000jk\u0005" +
			"\'\u0000\u0000km\u0005)\u0000\u0000lj\u0001\u0000\u0000\u0000lm\u0001" +
			"\u0000\u0000\u0000mn\u0001\u0000\u0000\u0000no\u0003\u0016\u000b\u0000" +
			"o\u0007\u0001\u0000\u0000\u0000pq\u0005\u001e\u0000\u0000qr\u0005)\u0000" +
			"\u0000rs\u0005$\u0000\u0000st\u0005)\u0000\u0000tu\u0005#\u0000\u0000" +
			"uv\u0005)\u0000\u0000vw\u0003\n\u0005\u0000w\t\u0001\u0000\u0000\u0000" +
			"xy\u0003,\u0016\u0000yz\u0005)\u0000\u0000z|\u0003\f\u0006\u0000{}\u0005" +
			")\u0000\u0000|{\u0001\u0000\u0000\u0000|}\u0001\u0000\u0000\u0000}~\u0001" +
			"\u0000\u0000\u0000~\u007f\u0003\u000e\u0007\u0000\u007f\u000b\u0001\u0000" +
			"\u0000\u0000\u0080\u0081\u0007\u0000\u0000\u0000\u0081\r\u0001\u0000\u0000" +
			"\u0000\u0082\u0083\u0005(\u0000\u0000\u0083\u0084\u0005)\u0000\u0000\u0084" +
			"\u0086\u0003,\u0016\u0000\u0085\u0082\u0001\u0000\u0000\u0000\u0085\u0086" +
			"\u0001\u0000\u0000\u0000\u0086\u0088\u0001\u0000\u0000\u0000\u0087\u0089" +
			"\u0005)\u0000\u0000\u0088\u0087\u0001\u0000\u0000\u0000\u0088\u0089\u0001" +
			"\u0000\u0000\u0000\u0089\u008a\u0001\u0000\u0000\u0000\u008a\u008c\u0005" +
			"\u0002\u0000\u0000\u008b\u008d\u0005)\u0000\u0000\u008c\u008b\u0001\u0000" +
			"\u0000\u0000\u008c\u008d\u0001\u0000\u0000\u0000\u008d\u008f\u0001\u0000" +
			"\u0000\u0000\u008e\u0090\u0003\u0010\b\u0000\u008f\u008e\u0001\u0000\u0000" +
			"\u0000\u008f\u0090\u0001\u0000\u0000\u0000\u0090\u0092\u0001\u0000\u0000" +
			"\u0000\u0091\u0093\u0005)\u0000\u0000\u0092\u0091\u0001\u0000\u0000\u0000" +
			"\u0092\u0093\u0001\u0000\u0000\u0000\u0093\u0094\u0001\u0000\u0000\u0000" +
			"\u0094\u0095\u0005\u0003\u0000\u0000\u0095\u000f\u0001\u0000\u0000\u0000" +
			"\u0096\u00a1\u0003\u0012\t\u0000\u0097\u0099\u0005)\u0000\u0000\u0098" +
			"\u0097\u0001\u0000\u0000\u0000\u0098\u0099\u0001\u0000\u0000\u0000\u0099" +
			"\u009a\u0001\u0000\u0000\u0000\u009a\u009c\u0005\u0004\u0000\u0000\u009b" +
			"\u009d\u0005)\u0000\u0000\u009c\u009b\u0001\u0000\u0000\u0000\u009c\u009d" +
			"\u0001\u0000\u0000\u0000\u009d\u009e\u0001\u0000\u0000\u0000\u009e\u00a0" +
			"\u0003\u0012\t\u0000\u009f\u0098\u0001\u0000\u0000\u0000\u00a0\u00a3\u0001" +
			"\u0000\u0000\u0000\u00a1\u009f\u0001\u0000\u0000\u0000\u00a1\u00a2\u0001" +
			"\u0000\u0000\u0000\u00a2\u0011\u0001\u0000\u0000\u0000\u00a3\u00a1\u0001" +
			"\u0000\u0000\u0000\u00a4\u00a8\u0003,\u0016\u0000\u00a5\u00a8\u0003\u0014" +
			"\n\u0000\u00a6\u00a8\u0003\u0016\u000b\u0000\u00a7\u00a4\u0001\u0000\u0000" +
			"\u0000\u00a7\u00a5\u0001\u0000\u0000\u0000\u00a7\u00a6\u0001\u0000\u0000" +
			"\u0000\u00a8\u0013\u0001\u0000\u0000\u0000\u00a9\u00ab\u0005\u0005\u0000" +
			"\u0000\u00aa\u00ac\u0005)\u0000\u0000\u00ab\u00aa\u0001\u0000\u0000\u0000" +
			"\u00ab\u00ac\u0001\u0000\u0000\u0000\u00ac\u00ad\u0001\u0000\u0000\u0000" +
			"\u00ad\u00ae\u0003,\u0016\u0000\u00ae\u00b0\u0003\u001c\u000e\u0000\u00af" +
			"\u00b1\u0005)\u0000\u0000\u00b0\u00af\u0001\u0000\u0000\u0000\u00b0\u00b1" +
			"\u0001\u0000\u0000\u0000\u00b1\u00b2\u0001\u0000\u0000\u0000\u00b2\u00b3" +
			"\u0005\u0006\u0000\u0000\u00b3\u0015\u0001\u0000\u0000\u0000\u00b4\u00b6" +
			"\u0003\u001a\r\u0000\u00b5\u00b7\u0005)\u0000\u0000\u00b6\u00b5\u0001" +
			"\u0000\u0000\u0000\u00b6\u00b7\u0001\u0000\u0000\u0000\u00b7\u00b8\u0001" +
			"\u0000\u0000\u0000\u00b8\u00ba\u0003.\u0017\u0000\u00b9\u00bb\u0005)\u0000" +
			"\u0000\u00ba\u00b9\u0001\u0000\u0000\u0000\u00ba\u00bb\u0001\u0000\u0000" +
			"\u0000\u00bb\u00bc\u0001\u0000\u0000\u0000\u00bc\u00be\u0003\u0018\f\u0000" +
			"\u00bd\u00bf\u0005)\u0000\u0000\u00be\u00bd\u0001\u0000\u0000\u0000\u00be" +
			"\u00bf\u0001\u0000\u0000\u0000\u00bf\u00c0\u0001\u0000\u0000\u0000\u00c0" +
			"\u00c1\u0003.\u0017\u0000\u00c1\u00c3\u00030\u0018\u0000\u00c2\u00c4\u0005" +
			")\u0000\u0000\u00c3\u00c2\u0001\u0000\u0000\u0000\u00c3\u00c4\u0001\u0000" +
			"\u0000\u0000\u00c4\u00c5\u0001\u0000\u0000\u0000\u00c5\u00c6\u0003\u001a" +
			"\r\u0000\u00c6\u0017\u0001\u0000\u0000\u0000\u00c7\u00c9\u0005\u0007\u0000" +
			"\u0000\u00c8\u00ca\u0005)\u0000\u0000\u00c9\u00c8\u0001\u0000\u0000\u0000" +
			"\u00c9\u00ca\u0001\u0000\u0000\u0000\u00ca\u00cb\u0001\u0000\u0000\u0000" +
			"\u00cb\u00cd\u0003,\u0016\u0000\u00cc\u00ce\u0005)\u0000\u0000\u00cd\u00cc" +
			"\u0001\u0000\u0000\u0000\u00cd\u00ce\u0001\u0000\u0000\u0000\u00ce\u00cf" +
			"\u0001\u0000\u0000\u0000\u00cf\u00d1\u0003\u001c\u000e\u0000\u00d0\u00d2" +
			"\u0005)\u0000\u0000\u00d1\u00d0\u0001\u0000\u0000\u0000\u00d1\u00d2\u0001" +
			"\u0000\u0000\u0000\u00d2\u00d3\u0001\u0000\u0000\u0000\u00d3\u00d4\u0005" +
			"\b\u0000\u0000\u00d4\u0019\u0001\u0000\u0000\u0000\u00d5\u00d7\u0005\u0005" +
			"\u0000\u0000\u00d6\u00d8\u0005)\u0000\u0000\u00d7\u00d6\u0001\u0000\u0000" +
			"\u0000\u00d7\u00d8\u0001\u0000\u0000\u0000\u00d8\u00d9\u0001\u0000\u0000" +
			"\u0000\u00d9\u00db\u0003\u001c\u000e\u0000\u00da\u00dc\u0005)\u0000\u0000" +
			"\u00db\u00da\u0001\u0000\u0000\u0000\u00db\u00dc\u0001\u0000\u0000\u0000" +
			"\u00dc\u00dd\u0001\u0000\u0000\u0000\u00dd\u00de\u0005\u0006\u0000\u0000" +
			"\u00de\u001b\u0001\u0000\u0000\u0000\u00df\u00e1\u0005\t\u0000\u0000\u00e0" +
			"\u00e2\u0005)\u0000\u0000\u00e1\u00e0\u0001\u0000\u0000\u0000\u00e1\u00e2" +
			"\u0001\u0000\u0000\u0000\u00e2\u00e3\u0001\u0000\u0000\u0000\u00e3\u00e5" +
			"\u0003\u001e\u000f\u0000\u00e4\u00df\u0001\u0000\u0000\u0000\u00e4\u00e5" +
			"\u0001\u0000\u0000\u0000\u00e5\u00e7\u0001\u0000\u0000\u0000\u00e6\u00e8" +
			"\u0005)\u0000\u0000\u00e7\u00e6\u0001\u0000\u0000\u0000\u00e7\u00e8\u0001" +
			"\u0000\u0000\u0000\u00e8\u00ea\u0001\u0000\u0000\u0000\u00e9\u00eb\u0005" +
			"!\u0000\u0000\u00ea\u00e9\u0001\u0000\u0000\u0000\u00ea\u00eb\u0001\u0000" +
			"\u0000\u0000\u00eb\u00ed\u0001\u0000\u0000\u0000\u00ec\u00ee\u0005)\u0000" +
			"\u0000\u00ed\u00ec\u0001\u0000\u0000\u0000\u00ed\u00ee\u0001\u0000\u0000" +
			"\u0000\u00ee\u00f0\u0001\u0000\u0000\u0000\u00ef\u00f1\u0003 \u0010\u0000" +
			"\u00f0\u00ef\u0001\u0000\u0000\u0000\u00f0\u00f1\u0001\u0000\u0000\u0000" +
			"\u00f1\u001d\u0001\u0000\u0000\u0000\u00f2\u00f3\u0006\u000f\uffff\uffff" +
			"\u0000\u00f3\u00f5\u0005\u0005\u0000\u0000\u00f4\u00f6\u0005)\u0000\u0000" +
			"\u00f5\u00f4\u0001\u0000\u0000\u0000\u00f5\u00f6\u0001\u0000\u0000\u0000" +
			"\u00f6\u00f7\u0001\u0000\u0000\u0000\u00f7\u00f9\u0003\u001e\u000f\u0000" +
			"\u00f8\u00fa\u0005)\u0000\u0000\u00f9\u00f8\u0001\u0000\u0000\u0000\u00f9" +
			"\u00fa\u0001\u0000\u0000\u0000\u00fa\u00fb\u0001\u0000\u0000\u0000\u00fb" +
			"\u00fc\u0005\u0006\u0000\u0000\u00fc\u010a\u0001\u0000\u0000\u0000\u00fd" +
			"\u00ff\u0005\u0007\u0000\u0000\u00fe\u0100\u0005)\u0000\u0000\u00ff\u00fe" +
			"\u0001\u0000\u0000\u0000\u00ff\u0100\u0001\u0000\u0000\u0000\u0100\u0101" +
			"\u0001\u0000\u0000\u0000\u0101\u0103\u0003\u001e\u000f\u0000\u0102\u0104" +
			"\u0005)\u0000\u0000\u0103\u0102\u0001\u0000\u0000\u0000\u0103\u0104\u0001" +
			"\u0000\u0000\u0000\u0104\u0105\u0001\u0000\u0000\u0000\u0105\u0106\u0005" +
			"\b\u0000\u0000\u0106\u010a\u0001\u0000\u0000\u0000\u0107\u010a\u0003*" +
			"\u0015\u0000\u0108\u010a\u0003,\u0016\u0000\u0109\u00f2\u0001\u0000\u0000" +
			"\u0000\u0109\u00fd\u0001\u0000\u0000\u0000\u0109\u0107\u0001\u0000\u0000" +
			"\u0000\u0109\u0108\u0001\u0000\u0000\u0000\u010a\u0124\u0001\u0000\u0000" +
			"\u0000\u010b\u010d\n\u0005\u0000\u0000\u010c\u010e\u0005)\u0000\u0000" +
			"\u010d\u010c\u0001\u0000\u0000\u0000\u010d\u010e\u0001\u0000\u0000\u0000" +
			"\u010e\u010f\u0001\u0000\u0000\u0000\u010f\u0111\u0005\n\u0000\u0000\u0110" +
			"\u0112\u0005)\u0000\u0000\u0111\u0110\u0001\u0000\u0000\u0000\u0111\u0112" +
			"\u0001\u0000\u0000\u0000\u0112\u0113\u0001\u0000\u0000\u0000\u0113\u0123" +
			"\u0003\u001e\u000f\u0006\u0114\u0116\n\u0004\u0000\u0000\u0115\u0117\u0005" +
			")\u0000\u0000\u0116\u0115\u0001\u0000\u0000\u0000\u0116\u0117\u0001\u0000" +
			"\u0000\u0000\u0117\u0118\u0001\u0000\u0000\u0000\u0118\u011a\u0005\u000b" +
			"\u0000\u0000\u0119\u011b\u0005)\u0000\u0000\u011a\u0119\u0001\u0000\u0000" +
			"\u0000\u011a\u011b\u0001\u0000\u0000\u0000\u011b\u011c\u0001\u0000\u0000" +
			"\u0000\u011c\u0123\u0003\u001e\u000f\u0005\u011d\u011f\n\u0003\u0000\u0000" +
			"\u011e\u0120\u0005)\u0000\u0000\u011f\u011e\u0001\u0000\u0000\u0000\u011f" +
			"\u0120\u0001\u0000\u0000\u0000\u0120\u0121\u0001\u0000\u0000\u0000\u0121" +
			"\u0123\u0005\f\u0000\u0000\u0122\u010b\u0001\u0000\u0000\u0000\u0122\u0114" +
			"\u0001\u0000\u0000\u0000\u0122\u011d\u0001\u0000\u0000\u0000\u0123\u0126" +
			"\u0001\u0000\u0000\u0000\u0124\u0122\u0001\u0000\u0000\u0000\u0124\u0125" +
			"\u0001\u0000\u0000\u0000\u0125\u001f\u0001\u0000\u0000\u0000\u0126\u0124" +
			"\u0001\u0000\u0000\u0000\u0127\u0129\u0005\u0002\u0000\u0000\u0128\u012a" +
			"\u0005)\u0000\u0000\u0129\u0128\u0001\u0000\u0000\u0000\u0129\u012a\u0001" +
			"\u0000\u0000\u0000\u012a\u012b\u0001\u0000\u0000\u0000\u012b\u0134\u0003" +
			"\"\u0011\u0000\u012c\u012e\u0005)\u0000\u0000\u012d\u012c\u0001\u0000" +
			"\u0000\u0000\u012d\u012e\u0001\u0000\u0000\u0000\u012e\u012f\u0001\u0000" +
			"\u0000\u0000\u012f\u0131\u0005\u0004\u0000\u0000\u0130\u0132\u0005)\u0000" +
			"\u0000\u0131\u0130\u0001\u0000\u0000\u0000\u0131\u0132\u0001\u0000\u0000" +
			"\u0000\u0132\u0133\u0001\u0000\u0000\u0000\u0133\u0135\u0005!\u0000\u0000" +
			"\u0134\u012d\u0001\u0000\u0000\u0000\u0134\u0135\u0001\u0000\u0000\u0000" +
			"\u0135\u0137\u0001\u0000\u0000\u0000\u0136\u0138\u0005)\u0000\u0000\u0137" +
			"\u0136\u0001\u0000\u0000\u0000\u0137\u0138\u0001\u0000\u0000\u0000\u0138" +
			"\u0139\u0001\u0000\u0000\u0000\u0139\u013a\u0005\u0003\u0000\u0000\u013a" +
			"\u0147\u0001\u0000\u0000\u0000\u013b\u013d\u0005\u0002\u0000\u0000\u013c" +
			"\u013e\u0005)\u0000\u0000\u013d\u013c\u0001\u0000\u0000\u0000\u013d\u013e" +
			"\u0001\u0000\u0000\u0000\u013e\u0140\u0001\u0000\u0000\u0000\u013f\u0141" +
			"\u0005!\u0000\u0000\u0140\u013f\u0001\u0000\u0000\u0000\u0140\u0141\u0001" +
			"\u0000\u0000\u0000\u0141\u0143\u0001\u0000\u0000\u0000\u0142\u0144\u0005" +
			")\u0000\u0000\u0143\u0142\u0001\u0000\u0000\u0000\u0143\u0144\u0001\u0000" +
			"\u0000\u0000\u0144\u0145\u0001\u0000\u0000\u0000\u0145\u0147\u0005\u0003" +
			"\u0000\u0000\u0146\u0127\u0001\u0000\u0000\u0000\u0146\u013b\u0001\u0000" +
			"\u0000\u0000\u0147!\u0001\u0000\u0000\u0000\u0148\u0153\u0003$\u0012\u0000" +
			"\u0149\u014b\u0005)\u0000\u0000\u014a\u0149\u0001\u0000\u0000\u0000\u014a" +
			"\u014b\u0001\u0000\u0000\u0000\u014b\u014c\u0001\u0000\u0000\u0000\u014c" +
			"\u014e\u0005\u0004\u0000\u0000\u014d\u014f\u0005)\u0000\u0000\u014e\u014d" +
			"\u0001\u0000\u0000\u0000\u014e\u014f\u0001\u0000\u0000\u0000\u014f\u0150" +
			"\u0001\u0000\u0000\u0000\u0150\u0152\u0003$\u0012\u0000\u0151\u014a\u0001" +
			"\u0000\u0000\u0000\u0152\u0155\u0001\u0000\u0000\u0000\u0153\u0151\u0001" +
			"\u0000\u0000\u0000\u0153\u0154\u0001\u0000\u0000\u0000\u0154#\u0001\u0000" +
			"\u0000\u0000\u0155\u0153\u0001\u0000\u0000\u0000\u0156\u0157\u0005\"\u0000" +
			"\u0000\u0157\u0159\u0005)\u0000\u0000\u0158\u0156\u0001\u0000\u0000\u0000" +
			"\u0158\u0159\u0001\u0000\u0000\u0000\u0159\u015a\u0001\u0000\u0000\u0000" +
			"\u015a\u015b\u0003(\u0014\u0000\u015b\u015c\u0005)\u0000\u0000\u015c\u015e" +
			"\u0003&\u0013\u0000\u015d\u015f\u0005)\u0000\u0000\u015e\u015d\u0001\u0000" +
			"\u0000\u0000\u015e\u015f\u0001\u0000\u0000\u0000\u015f%\u0001\u0000\u0000" +
			"\u0000\u0160\u0161\u0005+\u0000\u0000\u0161\'\u0001\u0000\u0000\u0000" +
			"\u0162\u0163\u0005+\u0000\u0000\u0163)\u0001\u0000\u0000\u0000\u0164\u0165" +
			"\u0005+\u0000\u0000\u0165+\u0001\u0000\u0000\u0000\u0166\u0167\u0005+" +
			"\u0000\u0000\u0167-\u0001\u0000\u0000\u0000\u0168\u0169\u0007\u0001\u0000" +
			"\u0000\u0169/\u0001\u0000\u0000\u0000\u016a\u016b\u0007\u0002\u0000\u0000" +
			"\u016b1\u0001\u0000\u0000\u0000A37:=BFJLOV`l|\u0085\u0088\u008c\u008f" +
			"\u0092\u0098\u009c\u00a1\u00a7\u00ab\u00b0\u00b6\u00ba\u00be\u00c3\u00c9" +
			"\u00cd\u00d1\u00d7\u00db\u00e1\u00e4\u00e7\u00ea\u00ed\u00f0\u00f5\u00f9" +
			"\u00ff\u0103\u0109\u010d\u0111\u0116\u011a\u011f\u0122\u0124\u0129\u012d" +
			"\u0131\u0134\u0137\u013d\u0140\u0143\u0146\u014a\u014e\u0153\u0158\u015e";
	public static final ATN _ATN = new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}