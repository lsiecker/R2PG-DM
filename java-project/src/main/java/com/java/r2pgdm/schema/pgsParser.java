package com.java.r2pgdm.schema;

// Generated from pgs.g4 by ANTLR 4.3
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

import com.java.r2pgdm.schema.pgsLexer;

@SuppressWarnings({ "all", "warnings", "unchecked", "unused", "cast" })
public class pgsParser extends Parser {
	static {
		RuntimeMetaData.checkVersion("4.3", RuntimeMetaData.VERSION);
	}

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache = new PredictionContextCache();
	public static final int T__28 = 1, T__27 = 2, T__26 = 3, T__25 = 4, T__24 = 5, T__23 = 6, T__22 = 7, T__21 = 8,
			T__20 = 9, T__19 = 10, T__18 = 11, T__17 = 12, T__16 = 13, T__15 = 14, T__14 = 15, T__13 = 16,
			T__12 = 17, T__11 = 18, T__10 = 19, T__9 = 20, T__8 = 21, T__7 = 22, T__6 = 23, T__5 = 24,
			T__4 = 25, T__3 = 26, T__2 = 27, T__1 = 28, T__0 = 29, CREATE = 30, NODE = 31, EDGE = 32,
			OPEN = 33, OPTIONAL = 34, TYPE = 35, GRAPH = 36, STRICT = 37, LOOSE = 38, ABSTRACT = 39,
			IMPORTS = 40, SP = 41, WHITESPACE = 42, StringLiteral = 43, EscapedChar = 44, HexDigit = 45,
			Digit = 46, NonZeroDigit = 47, NonZeroOctDigit = 48, HexLetter = 49, ZeroDigit = 50;
	public static final String[] tokenNames = {
			"<INVALID>", "'\\ufe58'", "'{'", "';'", "'}'", "'\\u2014'", "'?'", "'\\uff1e'",
			"'\\u2212'", "'&'", "'('", "'\\u2010'", "','", "'\\u2012'", "'\\ufe65'",
			"'\\u3009'", "'\\ufe63'", "':'", "'['", "'|'", "']'", "'>'", "'\\u2013'",
			"'\\uff0d'", "'\\u2015'", "'\\u00ad'", "')'", "'\\u27e9'", "'-'", "'\\u2011'",
			"CREATE", "NODE", "EDGE", "OPEN", "OPTIONAL", "TYPE", "GRAPH", "STRICT",
			"LOOSE", "ABSTRACT", "IMPORTS", "SP", "WHITESPACE", "StringLiteral", "EscapedChar",
			"HexDigit", "Digit", "NonZeroDigit", "NonZeroOctDigit", "HexLetter", "'0'"
	};
	public static final int RULE_pgs = 0, RULE_createType = 1, RULE_createNodeType = 2, RULE_createEdgeType = 3,
			RULE_createGraphType = 4, RULE_graphType = 5, RULE_typeForm = 6, RULE_graphTypeDefinition = 7,
			RULE_elementTypes = 8, RULE_elementType = 9, RULE_nodeType = 10, RULE_edgeType = 11,
			RULE_middleType = 12, RULE_endpointType = 13, RULE_labelPropertySpec = 14,
			RULE_labelSpec = 15, RULE_propertySpec = 16, RULE_properties = 17, RULE_property = 18,
			RULE_propertyType = 19, RULE_key = 20, RULE_labelName = 21, RULE_typeName = 22,
			RULE_dash = 23, RULE_rightArrowHead = 24;
	public static final String[] ruleNames = {
			"pgs", "createType", "createNodeType", "createEdgeType", "createGraphType",
			"graphType", "typeForm", "graphTypeDefinition", "elementTypes", "elementType",
			"nodeType", "edgeType", "middleType", "endpointType", "labelPropertySpec",
			"labelSpec", "propertySpec", "properties", "property", "propertyType",
			"key", "labelName", "typeName", "dash", "rightArrowHead"
	};

	@Override
	public String getGrammarFileName() {
		return "pgs.g4";
	}

	@Override
	public String[] getTokenNames() {
		return tokenNames;
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

	public static class PgsContext extends ParserRuleContext {
		public List<CreateTypeContext> createType() {
			return getRuleContexts(CreateTypeContext.class);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public TerminalNode EOF() {
			return getToken(pgsParser.EOF, 0);
		}

		public CreateTypeContext createType(int i) {
			return getRuleContext(CreateTypeContext.class, i);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
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
								switch (getInterpreter().adaptivePredict(_input, 1, _ctx)) {
									case 1: {
										setState(54);
										match(SP);
									}
										break;
								}
								setState(58);
								_la = _input.LA(1);
								if (_la == T__26) {
									{
										setState(57);
										match(T__26);
									}
								}

								setState(61);
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
				switch (getInterpreter().adaptivePredict(_input, 7, _ctx)) {
					case 1: {
						setState(70);
						_la = _input.LA(1);
						if (_la == SP) {
							{
								setState(69);
								match(SP);
							}
						}

						setState(72);
						match(T__26);
						setState(74);
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

	public static class CreateTypeContext extends ParserRuleContext {
		public CreateNodeTypeContext createNodeType() {
			return getRuleContext(CreateNodeTypeContext.class, 0);
		}

		public CreateGraphTypeContext createGraphType() {
			return getRuleContext(CreateGraphTypeContext.class, 0);
		}

		public CreateEdgeTypeContext createEdgeType() {
			return getRuleContext(CreateEdgeTypeContext.class, 0);
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

	public static class CreateNodeTypeContext extends ParserRuleContext {
		public TerminalNode ABSTRACT() {
			return getToken(pgsParser.ABSTRACT, 0);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public TerminalNode TYPE() {
			return getToken(pgsParser.TYPE, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public NodeTypeContext nodeType() {
			return getRuleContext(NodeTypeContext.class, 0);
		}

		public TerminalNode CREATE() {
			return getToken(pgsParser.CREATE, 0);
		}

		public TerminalNode NODE() {
			return getToken(pgsParser.NODE, 0);
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

	public static class CreateEdgeTypeContext extends ParserRuleContext {
		public TerminalNode ABSTRACT() {
			return getToken(pgsParser.ABSTRACT, 0);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public TerminalNode TYPE() {
			return getToken(pgsParser.TYPE, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public TerminalNode CREATE() {
			return getToken(pgsParser.CREATE, 0);
		}

		public TerminalNode EDGE() {
			return getToken(pgsParser.EDGE, 0);
		}

		public EdgeTypeContext edgeType() {
			return getRuleContext(EdgeTypeContext.class, 0);
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

	public static class CreateGraphTypeContext extends ParserRuleContext {
		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public TerminalNode TYPE() {
			return getToken(pgsParser.TYPE, 0);
		}

		public GraphTypeContext graphType() {
			return getRuleContext(GraphTypeContext.class, 0);
		}

		public TerminalNode GRAPH() {
			return getToken(pgsParser.GRAPH, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public TerminalNode CREATE() {
			return getToken(pgsParser.CREATE, 0);
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

	public static class GraphTypeContext extends ParserRuleContext {
		public GraphTypeDefinitionContext graphTypeDefinition() {
			return getRuleContext(GraphTypeDefinitionContext.class, 0);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public TypeFormContext typeForm() {
			return getRuleContext(TypeFormContext.class, 0);
		}

		public TypeNameContext typeName() {
			return getRuleContext(TypeNameContext.class, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
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
				}
				consume();
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

	public static class GraphTypeDefinitionContext extends ParserRuleContext {
		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public ElementTypesContext elementTypes() {
			return getRuleContext(ElementTypesContext.class, 0);
		}

		public TypeNameContext typeName() {
			return getRuleContext(TypeNameContext.class, 0);
		}

		public TerminalNode IMPORTS() {
			return getToken(pgsParser.IMPORTS, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
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
				_la = _input.LA(1);
				if (_la == SP) {
					{
						setState(135);
						match(SP);
					}
				}

				setState(138);
				match(T__27);
				setState(140);
				switch (getInterpreter().adaptivePredict(_input, 15, _ctx)) {
					case 1: {
						setState(139);
						match(SP);
					}
						break;
				}
				setState(143);
				_la = _input.LA(1);
				if (_la == T__19 || _la == StringLiteral) {
					{
						setState(142);
						elementTypes();
					}
				}

				setState(146);
				_la = _input.LA(1);
				if (_la == SP) {
					{
						setState(145);
						match(SP);
					}
				}

				setState(148);
				match(T__25);
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

	public static class ElementTypesContext extends ParserRuleContext {
		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public ElementTypeContext elementType(int i) {
			return getRuleContext(ElementTypeContext.class, i);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public List<ElementTypeContext> elementType() {
			return getRuleContexts(ElementTypeContext.class);
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
								_la = _input.LA(1);
								if (_la == SP) {
									{
										setState(151);
										match(SP);
									}
								}

								setState(154);
								match(T__17);
								setState(156);
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

	public static class NodeTypeContext extends ParserRuleContext {
		public LabelPropertySpecContext labelPropertySpec() {
			return getRuleContext(LabelPropertySpecContext.class, 0);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public TypeNameContext typeName() {
			return getRuleContext(TypeNameContext.class, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
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
				match(T__19);
				setState(171);
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
				_la = _input.LA(1);
				if (_la == SP) {
					{
						setState(175);
						match(SP);
					}
				}

				setState(178);
				match(T__3);
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

	public static class EdgeTypeContext extends ParserRuleContext {
		public MiddleTypeContext middleType() {
			return getRuleContext(MiddleTypeContext.class, 0);
		}

		public RightArrowHeadContext rightArrowHead() {
			return getRuleContext(RightArrowHeadContext.class, 0);
		}

		public EndpointTypeContext endpointType(int i) {
			return getRuleContext(EndpointTypeContext.class, i);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public DashContext dash(int i) {
			return getRuleContext(DashContext.class, i);
		}

		public List<DashContext> dash() {
			return getRuleContexts(DashContext.class);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public List<EndpointTypeContext> endpointType() {
			return getRuleContexts(EndpointTypeContext.class);
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

	public static class MiddleTypeContext extends ParserRuleContext {
		public LabelPropertySpecContext labelPropertySpec() {
			return getRuleContext(LabelPropertySpecContext.class, 0);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public TypeNameContext typeName() {
			return getRuleContext(TypeNameContext.class, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
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
				match(T__11);
				setState(201);
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
				_la = _input.LA(1);
				if (_la == SP) {
					{
						setState(208);
						match(SP);
					}
				}

				setState(211);
				match(T__9);
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

	public static class EndpointTypeContext extends ParserRuleContext {
		public LabelPropertySpecContext labelPropertySpec() {
			return getRuleContext(LabelPropertySpecContext.class, 0);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
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
				match(T__19);
				setState(215);
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
				_la = _input.LA(1);
				if (_la == SP) {
					{
						setState(218);
						match(SP);
					}
				}

				setState(221);
				match(T__3);
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

	public static class LabelPropertySpecContext extends ParserRuleContext {
		public PropertySpecContext propertySpec() {
			return getRuleContext(PropertySpecContext.class, 0);
		}

		public TerminalNode OPEN() {
			return getToken(pgsParser.OPEN, 0);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public LabelSpecContext labelSpec() {
			return getRuleContext(LabelSpecContext.class, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
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
				_la = _input.LA(1);
				if (_la == T__12) {
					{
						setState(223);
						match(T__12);
						setState(225);
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
				switch (getInterpreter().adaptivePredict(_input, 35, _ctx)) {
					case 1: {
						setState(230);
						match(SP);
					}
						break;
				}
				setState(234);
				_la = _input.LA(1);
				if (_la == OPEN) {
					{
						setState(233);
						match(OPEN);
					}
				}

				setState(237);
				switch (getInterpreter().adaptivePredict(_input, 37, _ctx)) {
					case 1: {
						setState(236);
						match(SP);
					}
						break;
				}
				setState(240);
				_la = _input.LA(1);
				if (_la == T__27) {
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

	public static class LabelSpecContext extends ParserRuleContext {
		public LabelNameContext labelName() {
			return getRuleContext(LabelNameContext.class, 0);
		}

		public LabelSpecContext labelSpec(int i) {
			return getRuleContext(LabelSpecContext.class, i);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public TypeNameContext typeName() {
			return getRuleContext(TypeNameContext.class, 0);
		}

		public List<LabelSpecContext> labelSpec() {
			return getRuleContexts(LabelSpecContext.class);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
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
				switch (getInterpreter().adaptivePredict(_input, 43, _ctx)) {
					case 1: {
						setState(243);
						match(T__19);
						setState(245);
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
						_la = _input.LA(1);
						if (_la == SP) {
							{
								setState(248);
								match(SP);
							}
						}

						setState(251);
						match(T__3);
					}
						break;

					case 2: {
						setState(253);
						match(T__11);
						setState(255);
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
						_la = _input.LA(1);
						if (_la == SP) {
							{
								setState(258);
								match(SP);
							}
						}

						setState(261);
						match(T__9);
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
							switch (getInterpreter().adaptivePredict(_input, 49, _ctx)) {
								case 1: {
									_localctx = new LabelSpecContext(_parentctx, _parentState);
									pushNewRecursionContext(_localctx, _startState, RULE_labelSpec);
									setState(267);
									if (!(precpred(_ctx, 5)))
										throw new FailedPredicateException(this, "precpred(_ctx, 5)");
									setState(269);
									_la = _input.LA(1);
									if (_la == SP) {
										{
											setState(268);
											match(SP);
										}
									}

									setState(271);
									match(T__10);
									setState(273);
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
									_la = _input.LA(1);
									if (_la == SP) {
										{
											setState(277);
											match(SP);
										}
									}

									setState(280);
									match(T__20);
									setState(282);
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
									_la = _input.LA(1);
									if (_la == SP) {
										{
											setState(286);
											match(SP);
										}
									}

									setState(289);
									match(T__23);
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

	public static class PropertySpecContext extends ParserRuleContext {
		public TerminalNode OPEN() {
			return getToken(pgsParser.OPEN, 0);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public PropertiesContext properties() {
			return getRuleContext(PropertiesContext.class, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
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
			switch (getInterpreter().adaptivePredict(_input, 59, _ctx)) {
				case 1:
					enterOuterAlt(_localctx, 1); {
					setState(295);
					match(T__27);
					setState(297);
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
					switch (getInterpreter().adaptivePredict(_input, 54, _ctx)) {
						case 1: {
							setState(301);
							_la = _input.LA(1);
							if (_la == SP) {
								{
									setState(300);
									match(SP);
								}
							}

							setState(303);
							match(T__17);
							setState(305);
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
					_la = _input.LA(1);
					if (_la == SP) {
						{
							setState(310);
							match(SP);
						}
					}

					setState(313);
					match(T__25);
				}
					break;

				case 2:
					enterOuterAlt(_localctx, 2); {
					setState(315);
					match(T__27);
					setState(317);
					switch (getInterpreter().adaptivePredict(_input, 56, _ctx)) {
						case 1: {
							setState(316);
							match(SP);
						}
							break;
					}
					setState(320);
					_la = _input.LA(1);
					if (_la == OPEN) {
						{
							setState(319);
							match(OPEN);
						}
					}

					setState(323);
					_la = _input.LA(1);
					if (_la == SP) {
						{
							setState(322);
							match(SP);
						}
					}

					setState(325);
					match(T__25);
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

	public static class PropertiesContext extends ParserRuleContext {
		public PropertyContext property(int i) {
			return getRuleContext(PropertyContext.class, i);
		}

		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public List<PropertyContext> property() {
			return getRuleContexts(PropertyContext.class);
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
								_la = _input.LA(1);
								if (_la == SP) {
									{
										setState(329);
										match(SP);
									}
								}

								setState(332);
								match(T__17);
								setState(334);
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

	public static class PropertyContext extends ParserRuleContext {
		public TerminalNode SP(int i) {
			return getToken(pgsParser.SP, i);
		}

		public KeyContext key() {
			return getRuleContext(KeyContext.class, 0);
		}

		public TerminalNode OPTIONAL() {
			return getToken(pgsParser.OPTIONAL, 0);
		}

		public List<TerminalNode> SP() {
			return getTokens(pgsParser.SP);
		}

		public PropertyTypeContext propertyType() {
			return getRuleContext(PropertyTypeContext.class, 0);
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
				if (!((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__28) | (1L << T__24) | (1L << T__21)
						| (1L << T__18) | (1L << T__16) | (1L << T__13) | (1L << T__7) | (1L << T__6) | (1L << T__5)
						| (1L << T__4) | (1L << T__1) | (1L << T__0))) != 0))) {
					_errHandler.recoverInline(this);
				}
				consume();
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
				if (!((((_la) & ~0x3f) == 0 && ((1L << _la)
						& ((1L << T__22) | (1L << T__15) | (1L << T__14) | (1L << T__8) | (1L << T__2))) != 0))) {
					_errHandler.recoverInline(this);
				}
				consume();
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

	public static final String _serializedATN = "\3\u0430\ud6d1\u8206\uad2d\u4417\uaef1\u8d80\uaadd\3\64\u016f\4\2\t\2"
			+
			"\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13" +
			"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22" +
			"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31" +
			"\4\32\t\32\3\2\5\2\66\n\2\3\2\3\2\5\2:\n\2\3\2\5\2=\n\2\3\2\5\2@\n\2\3" +
			"\2\7\2C\n\2\f\2\16\2F\13\2\3\2\5\2I\n\2\3\2\3\2\5\2M\n\2\5\2O\n\2\3\2" +
			"\5\2R\n\2\3\2\3\2\3\3\3\3\3\3\5\3Y\n\3\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4" +
			"\5\4c\n\4\3\4\3\4\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\5\5o\n\5\3\5\3\5\3\6" +
			"\3\6\3\6\3\6\3\6\3\6\3\6\3\6\3\7\3\7\3\7\3\7\5\7\177\n\7\3\7\3\7\3\b\3" +
			"\b\3\t\3\t\3\t\5\t\u0088\n\t\3\t\5\t\u008b\n\t\3\t\3\t\5\t\u008f\n\t\3" +
			"\t\5\t\u0092\n\t\3\t\5\t\u0095\n\t\3\t\3\t\3\n\3\n\5\n\u009b\n\n\3\n\3" +
			"\n\5\n\u009f\n\n\3\n\7\n\u00a2\n\n\f\n\16\n\u00a5\13\n\3\13\3\13\3\13" +
			"\5\13\u00aa\n\13\3\f\3\f\5\f\u00ae\n\f\3\f\3\f\3\f\5\f\u00b3\n\f\3\f\3" +
			"\f\3\r\3\r\5\r\u00b9\n\r\3\r\3\r\5\r\u00bd\n\r\3\r\3\r\5\r\u00c1\n\r\3" +
			"\r\3\r\3\r\5\r\u00c6\n\r\3\r\3\r\3\16\3\16\5\16\u00cc\n\16\3\16\3\16\5" +
			"\16\u00d0\n\16\3\16\3\16\5\16\u00d4\n\16\3\16\3\16\3\17\3\17\5\17\u00da" +
			"\n\17\3\17\3\17\5\17\u00de\n\17\3\17\3\17\3\20\3\20\5\20\u00e4\n\20\3" +
			"\20\5\20\u00e7\n\20\3\20\5\20\u00ea\n\20\3\20\5\20\u00ed\n\20\3\20\5\20" +
			"\u00f0\n\20\3\20\5\20\u00f3\n\20\3\21\3\21\3\21\5\21\u00f8\n\21\3\21\3" +
			"\21\5\21\u00fc\n\21\3\21\3\21\3\21\3\21\5\21\u0102\n\21\3\21\3\21\5\21" +
			"\u0106\n\21\3\21\3\21\3\21\3\21\5\21\u010c\n\21\3\21\3\21\5\21\u0110\n" +
			"\21\3\21\3\21\5\21\u0114\n\21\3\21\3\21\3\21\5\21\u0119\n\21\3\21\3\21" +
			"\5\21\u011d\n\21\3\21\3\21\3\21\5\21\u0122\n\21\3\21\7\21\u0125\n\21\f" +
			"\21\16\21\u0128\13\21\3\22\3\22\5\22\u012c\n\22\3\22\3\22\5\22\u0130\n" +
			"\22\3\22\3\22\5\22\u0134\n\22\3\22\5\22\u0137\n\22\3\22\5\22\u013a\n\22" +
			"\3\22\3\22\3\22\3\22\5\22\u0140\n\22\3\22\5\22\u0143\n\22\3\22\5\22\u0146" +
			"\n\22\3\22\5\22\u0149\n\22\3\23\3\23\5\23\u014d\n\23\3\23\3\23\5\23\u0151" +
			"\n\23\3\23\7\23\u0154\n\23\f\23\16\23\u0157\13\23\3\24\3\24\5\24\u015b" +
			"\n\24\3\24\3\24\3\24\3\24\5\24\u0161\n\24\3\25\3\25\3\26\3\26\3\27\3\27" +
			"\3\30\3\30\3\31\3\31\3\32\3\32\3\32\2\3 \33\2\4\6\b\n\f\16\20\22\24\26" +
			"\30\32\34\36 \"$&(*,.\60\62\2\5\3\2\'(\n\2\3\3\7\7\n\n\r\r\17\17\22\22" +
			"\30\33\36\37\6\2\t\t\20\21\27\27\35\35\u019b\2\65\3\2\2\2\4X\3\2\2\2\6" +
			"Z\3\2\2\2\bf\3\2\2\2\nr\3\2\2\2\fz\3\2\2\2\16\u0082\3\2\2\2\20\u0087\3" +
			"\2\2\2\22\u0098\3\2\2\2\24\u00a9\3\2\2\2\26\u00ab\3\2\2\2\30\u00b6\3\2" +
			"\2\2\32\u00c9\3\2\2\2\34\u00d7\3\2\2\2\36\u00e6\3\2\2\2 \u010b\3\2\2\2" +
			"\"\u0148\3\2\2\2$\u014a\3\2\2\2&\u015a\3\2\2\2(\u0162\3\2\2\2*\u0164\3" +
			"\2\2\2,\u0166\3\2\2\2.\u0168\3\2\2\2\60\u016a\3\2\2\2\62\u016c\3\2\2\2" +
			"\64\66\7+\2\2\65\64\3\2\2\2\65\66\3\2\2\2\66\67\3\2\2\2\67D\5\4\3\28:" +
			"\7+\2\298\3\2\2\29:\3\2\2\2:<\3\2\2\2;=\7\5\2\2<;\3\2\2\2<=\3\2\2\2=?" +
			"\3\2\2\2>@\7+\2\2?>\3\2\2\2?@\3\2\2\2@A\3\2\2\2AC\5\4\3\2B9\3\2\2\2CF" +
			"\3\2\2\2DB\3\2\2\2DE\3\2\2\2EN\3\2\2\2FD\3\2\2\2GI\7+\2\2HG\3\2\2\2HI" +
			"\3\2\2\2IJ\3\2\2\2JL\7\5\2\2KM\7+\2\2LK\3\2\2\2LM\3\2\2\2MO\3\2\2\2NH" +
			"\3\2\2\2NO\3\2\2\2OQ\3\2\2\2PR\7+\2\2QP\3\2\2\2QR\3\2\2\2RS\3\2\2\2ST" +
			"\7\2\2\3T\3\3\2\2\2UY\5\6\4\2VY\5\b\5\2WY\5\n\6\2XU\3\2\2\2XV\3\2\2\2" +
			"XW\3\2\2\2Y\5\3\2\2\2Z[\7 \2\2[\\\7+\2\2\\]\7!\2\2]^\7+\2\2^_\7%\2\2_" +
			"b\7+\2\2`a\7)\2\2ac\7+\2\2b`\3\2\2\2bc\3\2\2\2cd\3\2\2\2de\5\26\f\2e\7" +
			"\3\2\2\2fg\7 \2\2gh\7+\2\2hi\7\"\2\2ij\7+\2\2jk\7%\2\2kn\7+\2\2lm\7)\2" +
			"\2mo\7+\2\2nl\3\2\2\2no\3\2\2\2op\3\2\2\2pq\5\30\r\2q\t\3\2\2\2rs\7 \2" +
			"\2st\7+\2\2tu\7&\2\2uv\7+\2\2vw\7%\2\2wx\7+\2\2xy\5\f\7\2y\13\3\2\2\2" +
			"z{\5.\30\2{|\7+\2\2|~\5\16\b\2}\177\7+\2\2~}\3\2\2\2~\177\3\2\2\2\177" +
			"\u0080\3\2\2\2\u0080\u0081\5\20\t\2\u0081\r\3\2\2\2\u0082\u0083\t\2\2" +
			"\2\u0083\17\3\2\2\2\u0084\u0085\7*\2\2\u0085\u0086\7+\2\2\u0086\u0088" +
			"\5.\30\2\u0087\u0084\3\2\2\2\u0087\u0088\3\2\2\2\u0088\u008a\3\2\2\2\u0089" +
			"\u008b\7+\2\2\u008a\u0089\3\2\2\2\u008a\u008b\3\2\2\2\u008b\u008c\3\2" +
			"\2\2\u008c\u008e\7\4\2\2\u008d\u008f\7+\2\2\u008e\u008d\3\2\2\2\u008e" +
			"\u008f\3\2\2\2\u008f\u0091\3\2\2\2\u0090\u0092\5\22\n\2\u0091\u0090\3" +
			"\2\2\2\u0091\u0092\3\2\2\2\u0092\u0094\3\2\2\2\u0093\u0095\7+\2\2\u0094" +
			"\u0093\3\2\2\2\u0094\u0095\3\2\2\2\u0095\u0096\3\2\2\2\u0096\u0097\7\6" +
			"\2\2\u0097\21\3\2\2\2\u0098\u00a3\5\24\13\2\u0099\u009b\7+\2\2\u009a\u0099" +
			"\3\2\2\2\u009a\u009b\3\2\2\2\u009b\u009c\3\2\2\2\u009c\u009e\7\16\2\2" +
			"\u009d\u009f\7+\2\2\u009e\u009d\3\2\2\2\u009e\u009f\3\2\2\2\u009f\u00a0" +
			"\3\2\2\2\u00a0\u00a2\5\24\13\2\u00a1\u009a\3\2\2\2\u00a2\u00a5\3\2\2\2" +
			"\u00a3\u00a1\3\2\2\2\u00a3\u00a4\3\2\2\2\u00a4\23\3\2\2\2\u00a5\u00a3" +
			"\3\2\2\2\u00a6\u00aa\5.\30\2\u00a7\u00aa\5\26\f\2\u00a8\u00aa\5\30\r\2" +
			"\u00a9\u00a6\3\2\2\2\u00a9\u00a7\3\2\2\2\u00a9\u00a8\3\2\2\2\u00aa\25" +
			"\3\2\2\2\u00ab\u00ad\7\f\2\2\u00ac\u00ae\7+\2\2\u00ad\u00ac\3\2\2\2\u00ad" +
			"\u00ae\3\2\2\2\u00ae\u00af\3\2\2\2\u00af\u00b0\5.\30\2\u00b0\u00b2\5\36" +
			"\20\2\u00b1\u00b3\7+\2\2\u00b2\u00b1\3\2\2\2\u00b2\u00b3\3\2\2\2\u00b3" +
			"\u00b4\3\2\2\2\u00b4\u00b5\7\34\2\2\u00b5\27\3\2\2\2\u00b6\u00b8\5\34" +
			"\17\2\u00b7\u00b9\7+\2\2\u00b8\u00b7\3\2\2\2\u00b8\u00b9\3\2\2\2\u00b9" +
			"\u00ba\3\2\2\2\u00ba\u00bc\5\60\31\2\u00bb\u00bd\7+\2\2\u00bc\u00bb\3" +
			"\2\2\2\u00bc\u00bd\3\2\2\2\u00bd\u00be\3\2\2\2\u00be\u00c0\5\32\16\2\u00bf" +
			"\u00c1\7+\2\2\u00c0\u00bf\3\2\2\2\u00c0\u00c1\3\2\2\2\u00c1\u00c2\3\2" +
			"\2\2\u00c2\u00c3\5\60\31\2\u00c3\u00c5\5\62\32\2\u00c4\u00c6\7+\2\2\u00c5" +
			"\u00c4\3\2\2\2\u00c5\u00c6\3\2\2\2\u00c6\u00c7\3\2\2\2\u00c7\u00c8\5\34" +
			"\17\2\u00c8\31\3\2\2\2\u00c9\u00cb\7\24\2\2\u00ca\u00cc\7+\2\2\u00cb\u00ca" +
			"\3\2\2\2\u00cb\u00cc\3\2\2\2\u00cc\u00cd\3\2\2\2\u00cd\u00cf\5.\30\2\u00ce" +
			"\u00d0\7+\2\2\u00cf\u00ce\3\2\2\2\u00cf\u00d0\3\2\2\2\u00d0\u00d1\3\2" +
			"\2\2\u00d1\u00d3\5\36\20\2\u00d2\u00d4\7+\2\2\u00d3\u00d2\3\2\2\2\u00d3" +
			"\u00d4\3\2\2\2\u00d4\u00d5\3\2\2\2\u00d5\u00d6\7\26\2\2\u00d6\33\3\2\2" +
			"\2\u00d7\u00d9\7\f\2\2\u00d8\u00da\7+\2\2\u00d9\u00d8\3\2\2\2\u00d9\u00da" +
			"\3\2\2\2\u00da\u00db\3\2\2\2\u00db\u00dd\5\36\20\2\u00dc\u00de\7+\2\2" +
			"\u00dd\u00dc\3\2\2\2\u00dd\u00de\3\2\2\2\u00de\u00df\3\2\2\2\u00df\u00e0" +
			"\7\34\2\2\u00e0\35\3\2\2\2\u00e1\u00e3\7\23\2\2\u00e2\u00e4\7+\2\2\u00e3" +
			"\u00e2\3\2\2\2\u00e3\u00e4\3\2\2\2\u00e4\u00e5\3\2\2\2\u00e5\u00e7\5 " +
			"\21\2\u00e6\u00e1\3\2\2\2\u00e6\u00e7\3\2\2\2\u00e7\u00e9\3\2\2\2\u00e8" +
			"\u00ea\7+\2\2\u00e9\u00e8\3\2\2\2\u00e9\u00ea\3\2\2\2\u00ea\u00ec\3\2" +
			"\2\2\u00eb\u00ed\7#\2\2\u00ec\u00eb\3\2\2\2\u00ec\u00ed\3\2\2\2\u00ed" +
			"\u00ef\3\2\2\2\u00ee\u00f0\7+\2\2\u00ef\u00ee\3\2\2\2\u00ef\u00f0\3\2" +
			"\2\2\u00f0\u00f2\3\2\2\2\u00f1\u00f3\5\"\22\2\u00f2\u00f1\3\2\2\2\u00f2" +
			"\u00f3\3\2\2\2\u00f3\37\3\2\2\2\u00f4\u00f5\b\21\1\2\u00f5\u00f7\7\f\2" +
			"\2\u00f6\u00f8\7+\2\2\u00f7\u00f6\3\2\2\2\u00f7\u00f8\3\2\2\2\u00f8\u00f9" +
			"\3\2\2\2\u00f9\u00fb\5 \21\2\u00fa\u00fc\7+\2\2\u00fb\u00fa\3\2\2\2\u00fb" +
			"\u00fc\3\2\2\2\u00fc\u00fd\3\2\2\2\u00fd\u00fe\7\34\2\2\u00fe\u010c\3" +
			"\2\2\2\u00ff\u0101\7\24\2\2\u0100\u0102\7+\2\2\u0101\u0100\3\2\2\2\u0101" +
			"\u0102\3\2\2\2\u0102\u0103\3\2\2\2\u0103\u0105\5 \21\2\u0104\u0106\7+" +
			"\2\2\u0105\u0104\3\2\2\2\u0105\u0106\3\2\2\2\u0106\u0107\3\2\2\2\u0107" +
			"\u0108\7\26\2\2\u0108\u010c\3\2\2\2\u0109\u010c\5,\27\2\u010a\u010c\5" +
			".\30\2\u010b\u00f4\3\2\2\2\u010b\u00ff\3\2\2\2\u010b\u0109\3\2\2\2\u010b" +
			"\u010a\3\2\2\2\u010c\u0126\3\2\2\2\u010d\u010f\f\7\2\2\u010e\u0110\7+" +
			"\2\2\u010f\u010e\3\2\2\2\u010f\u0110\3\2\2\2\u0110\u0111\3\2\2\2\u0111" +
			"\u0113\7\25\2\2\u0112\u0114\7+\2\2\u0113\u0112\3\2\2\2\u0113\u0114\3\2" +
			"\2\2\u0114\u0115\3\2\2\2\u0115\u0125\5 \21\b\u0116\u0118\f\6\2\2\u0117" +
			"\u0119\7+\2\2\u0118\u0117\3\2\2\2\u0118\u0119\3\2\2\2\u0119\u011a\3\2" +
			"\2\2\u011a\u011c\7\13\2\2\u011b\u011d\7+\2\2\u011c\u011b\3\2\2\2\u011c" +
			"\u011d\3\2\2\2\u011d\u011e\3\2\2\2\u011e\u0125\5 \21\7\u011f\u0121\f\5" +
			"\2\2\u0120\u0122\7+\2\2\u0121\u0120\3\2\2\2\u0121\u0122\3\2\2\2\u0122" +
			"\u0123\3\2\2\2\u0123\u0125\7\b\2\2\u0124\u010d\3\2\2\2\u0124\u0116\3\2" +
			"\2\2\u0124\u011f\3\2\2\2\u0125\u0128\3\2\2\2\u0126\u0124\3\2\2\2\u0126" +
			"\u0127\3\2\2\2\u0127!\3\2\2\2\u0128\u0126\3\2\2\2\u0129\u012b\7\4\2\2" +
			"\u012a\u012c\7+\2\2\u012b\u012a\3\2\2\2\u012b\u012c\3\2\2\2\u012c\u012d" +
			"\3\2\2\2\u012d\u0136\5$\23\2\u012e\u0130\7+\2\2\u012f\u012e\3\2\2\2\u012f" +
			"\u0130\3\2\2\2\u0130\u0131\3\2\2\2\u0131\u0133\7\16\2\2\u0132\u0134\7" +
			"+\2\2\u0133\u0132\3\2\2\2\u0133\u0134\3\2\2\2\u0134\u0135\3\2\2\2\u0135" +
			"\u0137\7#\2\2\u0136\u012f\3\2\2\2\u0136\u0137\3\2\2\2\u0137\u0139\3\2" +
			"\2\2\u0138\u013a\7+\2\2\u0139\u0138\3\2\2\2\u0139\u013a\3\2\2\2\u013a" +
			"\u013b\3\2\2\2\u013b\u013c\7\6\2\2\u013c\u0149\3\2\2\2\u013d\u013f\7\4" +
			"\2\2\u013e\u0140\7+\2\2\u013f\u013e\3\2\2\2\u013f\u0140\3\2\2\2\u0140" +
			"\u0142\3\2\2\2\u0141\u0143\7#\2\2\u0142\u0141\3\2\2\2\u0142\u0143\3\2" +
			"\2\2\u0143\u0145\3\2\2\2\u0144\u0146\7+\2\2\u0145\u0144\3\2\2\2\u0145" +
			"\u0146\3\2\2\2\u0146\u0147\3\2\2\2\u0147\u0149\7\6\2\2\u0148\u0129\3\2" +
			"\2\2\u0148\u013d\3\2\2\2\u0149#\3\2\2\2\u014a\u0155\5&\24\2\u014b\u014d" +
			"\7+\2\2\u014c\u014b\3\2\2\2\u014c\u014d\3\2\2\2\u014d\u014e\3\2\2\2\u014e" +
			"\u0150\7\16\2\2\u014f\u0151\7+\2\2\u0150\u014f\3\2\2\2\u0150\u0151\3\2" +
			"\2\2\u0151\u0152\3\2\2\2\u0152\u0154\5&\24\2\u0153\u014c\3\2\2\2\u0154" +
			"\u0157\3\2\2\2\u0155\u0153\3\2\2\2\u0155\u0156\3\2\2\2\u0156%\3\2\2\2" +
			"\u0157\u0155\3\2\2\2\u0158\u0159\7$\2\2\u0159\u015b\7+\2\2\u015a\u0158" +
			"\3\2\2\2\u015a\u015b\3\2\2\2\u015b\u015c\3\2\2\2\u015c\u015d\5*\26\2\u015d" +
			"\u015e\7+\2\2\u015e\u0160\5(\25\2\u015f\u0161\7+\2\2\u0160\u015f\3\2\2" +
			"\2\u0160\u0161\3\2\2\2\u0161\'\3\2\2\2\u0162\u0163\7-\2\2\u0163)\3\2\2" +
			"\2\u0164\u0165\7-\2\2\u0165+\3\2\2\2\u0166\u0167\7-\2\2\u0167-\3\2\2\2" +
			"\u0168\u0169\7-\2\2\u0169/\3\2\2\2\u016a\u016b\t\3\2\2\u016b\61\3\2\2" +
			"\2\u016c\u016d\t\4\2\2\u016d\63\3\2\2\2C\659<?DHLNQXbn~\u0087\u008a\u008e" +
			"\u0091\u0094\u009a\u009e\u00a3\u00a9\u00ad\u00b2\u00b8\u00bc\u00c0\u00c5" +
			"\u00cb\u00cf\u00d3\u00d9\u00dd\u00e3\u00e6\u00e9\u00ec\u00ef\u00f2\u00f7" +
			"\u00fb\u0101\u0105\u010b\u010f\u0113\u0118\u011c\u0121\u0124\u0126\u012b" +
			"\u012f\u0133\u0136\u0139\u013f\u0142\u0145\u0148\u014c\u0150\u0155\u015a" +
			"\u0160";
	public static final ATN _ATN = new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}