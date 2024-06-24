package com.java.r2pgdm.schema;

// Generated from antrl/pgs.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link pgsParser}.
 */
public interface pgsListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link pgsParser#pgs}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterPgs(pgsParser.PgsContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#pgs}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitPgs(pgsParser.PgsContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#createType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterCreateType(pgsParser.CreateTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#createType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitCreateType(pgsParser.CreateTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#createNodeType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterCreateNodeType(pgsParser.CreateNodeTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#createNodeType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitCreateNodeType(pgsParser.CreateNodeTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#createEdgeType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterCreateEdgeType(pgsParser.CreateEdgeTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#createEdgeType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitCreateEdgeType(pgsParser.CreateEdgeTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#createGraphType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterCreateGraphType(pgsParser.CreateGraphTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#createGraphType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitCreateGraphType(pgsParser.CreateGraphTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#graphType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterGraphType(pgsParser.GraphTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#graphType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitGraphType(pgsParser.GraphTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#typeForm}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterTypeForm(pgsParser.TypeFormContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#typeForm}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitTypeForm(pgsParser.TypeFormContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#graphTypeDefinition}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterGraphTypeDefinition(pgsParser.GraphTypeDefinitionContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#graphTypeDefinition}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitGraphTypeDefinition(pgsParser.GraphTypeDefinitionContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#elementTypes}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterElementTypes(pgsParser.ElementTypesContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#elementTypes}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitElementTypes(pgsParser.ElementTypesContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#elementType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterElementType(pgsParser.ElementTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#elementType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitElementType(pgsParser.ElementTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#nodeType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterNodeType(pgsParser.NodeTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#nodeType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitNodeType(pgsParser.NodeTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#edgeType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterEdgeType(pgsParser.EdgeTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#edgeType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitEdgeType(pgsParser.EdgeTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#middleType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterMiddleType(pgsParser.MiddleTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#middleType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitMiddleType(pgsParser.MiddleTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#endpointType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterEndpointType(pgsParser.EndpointTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#endpointType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitEndpointType(pgsParser.EndpointTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#labelPropertySpec}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterLabelPropertySpec(pgsParser.LabelPropertySpecContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#labelPropertySpec}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitLabelPropertySpec(pgsParser.LabelPropertySpecContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#labelSpec}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterLabelSpec(pgsParser.LabelSpecContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#labelSpec}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitLabelSpec(pgsParser.LabelSpecContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#propertySpec}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterPropertySpec(pgsParser.PropertySpecContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#propertySpec}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitPropertySpec(pgsParser.PropertySpecContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#properties}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterProperties(pgsParser.PropertiesContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#properties}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitProperties(pgsParser.PropertiesContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#property}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterProperty(pgsParser.PropertyContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#property}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitProperty(pgsParser.PropertyContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#propertyType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterPropertyType(pgsParser.PropertyTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#propertyType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitPropertyType(pgsParser.PropertyTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#key}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterKey(pgsParser.KeyContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#key}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitKey(pgsParser.KeyContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#labelName}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterLabelName(pgsParser.LabelNameContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#labelName}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitLabelName(pgsParser.LabelNameContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#typeName}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterTypeName(pgsParser.TypeNameContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#typeName}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitTypeName(pgsParser.TypeNameContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#dash}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterDash(pgsParser.DashContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#dash}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitDash(pgsParser.DashContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#rightArrowHead}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterRightArrowHead(pgsParser.RightArrowHeadContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#rightArrowHead}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitRightArrowHead(pgsParser.RightArrowHeadContext ctx);
}