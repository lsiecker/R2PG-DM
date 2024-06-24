package com.java.r2pgdm.schema;

// Generated from pgs.g4 by ANTLR 4.3
import org.antlr.v4.runtime.misc.NotNull;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link pgsParser}.
 */
public interface pgsListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link pgsParser#propertySpec}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterPropertySpec(@NotNull pgsParser.PropertySpecContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#propertySpec}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitPropertySpec(@NotNull pgsParser.PropertySpecContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#typeName}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterTypeName(@NotNull pgsParser.TypeNameContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#typeName}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitTypeName(@NotNull pgsParser.TypeNameContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#labelSpec}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterLabelSpec(@NotNull pgsParser.LabelSpecContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#labelSpec}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitLabelSpec(@NotNull pgsParser.LabelSpecContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#createType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterCreateType(@NotNull pgsParser.CreateTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#createType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitCreateType(@NotNull pgsParser.CreateTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#graphTypeDefinition}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterGraphTypeDefinition(@NotNull pgsParser.GraphTypeDefinitionContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#graphTypeDefinition}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitGraphTypeDefinition(@NotNull pgsParser.GraphTypeDefinitionContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#createEdgeType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterCreateEdgeType(@NotNull pgsParser.CreateEdgeTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#createEdgeType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitCreateEdgeType(@NotNull pgsParser.CreateEdgeTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#middleType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterMiddleType(@NotNull pgsParser.MiddleTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#middleType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitMiddleType(@NotNull pgsParser.MiddleTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#createNodeType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterCreateNodeType(@NotNull pgsParser.CreateNodeTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#createNodeType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitCreateNodeType(@NotNull pgsParser.CreateNodeTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#edgeType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterEdgeType(@NotNull pgsParser.EdgeTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#edgeType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitEdgeType(@NotNull pgsParser.EdgeTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#propertyType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterPropertyType(@NotNull pgsParser.PropertyTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#propertyType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitPropertyType(@NotNull pgsParser.PropertyTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#property}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterProperty(@NotNull pgsParser.PropertyContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#property}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitProperty(@NotNull pgsParser.PropertyContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#labelName}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterLabelName(@NotNull pgsParser.LabelNameContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#labelName}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitLabelName(@NotNull pgsParser.LabelNameContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#pgs}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterPgs(@NotNull pgsParser.PgsContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#pgs}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitPgs(@NotNull pgsParser.PgsContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#key}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterKey(@NotNull pgsParser.KeyContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#key}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitKey(@NotNull pgsParser.KeyContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#elementTypes}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterElementTypes(@NotNull pgsParser.ElementTypesContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#elementTypes}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitElementTypes(@NotNull pgsParser.ElementTypesContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#graphType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterGraphType(@NotNull pgsParser.GraphTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#graphType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitGraphType(@NotNull pgsParser.GraphTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#endpointType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterEndpointType(@NotNull pgsParser.EndpointTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#endpointType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitEndpointType(@NotNull pgsParser.EndpointTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#nodeType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterNodeType(@NotNull pgsParser.NodeTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#nodeType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitNodeType(@NotNull pgsParser.NodeTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#typeForm}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterTypeForm(@NotNull pgsParser.TypeFormContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#typeForm}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitTypeForm(@NotNull pgsParser.TypeFormContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#createGraphType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterCreateGraphType(@NotNull pgsParser.CreateGraphTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#createGraphType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitCreateGraphType(@NotNull pgsParser.CreateGraphTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#labelPropertySpec}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterLabelPropertySpec(@NotNull pgsParser.LabelPropertySpecContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#labelPropertySpec}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitLabelPropertySpec(@NotNull pgsParser.LabelPropertySpecContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#dash}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterDash(@NotNull pgsParser.DashContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#dash}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitDash(@NotNull pgsParser.DashContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#elementType}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterElementType(@NotNull pgsParser.ElementTypeContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#elementType}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitElementType(@NotNull pgsParser.ElementTypeContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#rightArrowHead}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterRightArrowHead(@NotNull pgsParser.RightArrowHeadContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#rightArrowHead}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitRightArrowHead(@NotNull pgsParser.RightArrowHeadContext ctx);

	/**
	 * Enter a parse tree produced by {@link pgsParser#properties}.
	 * 
	 * @param ctx the parse tree
	 */
	void enterProperties(@NotNull pgsParser.PropertiesContext ctx);

	/**
	 * Exit a parse tree produced by {@link pgsParser#properties}.
	 * 
	 * @param ctx the parse tree
	 */
	void exitProperties(@NotNull pgsParser.PropertiesContext ctx);
}