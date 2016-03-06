package kr.co.enrtech.erp.user;

import javax.servlet.http.HttpSession;

import kr.co.enrtech.erp.common.model.SimpleJsonResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * <pre>
 * 사용자 인증 컨트롤러.
 * </pre>
 * 
 * @author Bong-Jin Kwon
 * @version 1.0
 */
@Controller
@RequestMapping("/auth")
public class AuthController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(AuthController.class);


	/**
	 * <pre>
	 * 
	 * </pre>
	 */
	public AuthController() {
		// TODO Auto-generated constructor stub
	}

	@RequestMapping("/onAfterLogout")
	@ResponseBody
	public SimpleJsonResponse logout(SimpleJsonResponse jsonRes,
			HttpSession session) {

		session.invalidate();

		jsonRes.setMsg("로그아웃 되었습니다.");

		return jsonRes;
	}

	@RequestMapping("/onAfterLogin")
	@ResponseBody
	public SimpleJsonResponse onAfterLogin(SimpleJsonResponse jsonRes) {
		/*
		UserDetails loginUser = (UserDetails) SecurityContextHolder.getContext()
				.getAuthentication().getPrincipal();
		jsonRes.setData(loginUser);
		service.updateLastLogin(loginUser.getId());
		*/
		return jsonRes;
	}

	@ResponseStatus(value = HttpStatus.FORBIDDEN)
	@RequestMapping("/notLogin")
	@ResponseBody
	public SimpleJsonResponse notLogin(SimpleJsonResponse jsonRes) {

		jsonRes.setSuccess(false);
		jsonRes.setMsg("로그인 정보가 없습니다. 관리자에게 문의하세요.");
		jsonRes.setData("notLogin");

		return jsonRes;
	}

	@ResponseStatus(value = HttpStatus.FORBIDDEN)
	@RequestMapping("/accessDenied")
	@ResponseBody
	public SimpleJsonResponse accessDenied(SimpleJsonResponse jsonRes) {

		jsonRes.setSuccess(false);
		jsonRes.setMsg("해당 작업에 대한 권한이 없습니다. 관리자에게 문의하세요.");

		return jsonRes;
	}

	@RequestMapping("/loginFail")
	@ResponseBody
	public SimpleJsonResponse loginFail(SimpleJsonResponse jsonRes) {

		jsonRes.setSuccess(false);
		jsonRes.setMsg("login ID 또는 password 가 잘못되었습니다.");

		return jsonRes;
	}

}
// end of UserController.java