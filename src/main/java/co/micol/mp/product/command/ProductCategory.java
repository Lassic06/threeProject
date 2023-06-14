package co.micol.mp.product.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.mp.common.Command;

public class ProductCategory implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		return "product/productCategories";
	}

}
