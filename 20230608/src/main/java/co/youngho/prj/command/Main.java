package co.youngho.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.youngho.prj.common.Command;

public class Main implements Command {

	public String exec(HttpServletRequest request, HttpServletResponse response) {

		return "main/main";
	}

}
