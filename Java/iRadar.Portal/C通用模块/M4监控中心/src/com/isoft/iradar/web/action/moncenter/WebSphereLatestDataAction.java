package com.isoft.iradar.web.action.moncenter;

public class WebSphereLatestDataAction extends A_LatestDataAction {

	@Override
	public String getSimpleAction() {
		return WEBSPHERE_SIMPLE_DATA_ACTION;
	}

	@Override
	public String getLatestAction() {
		return WEBSPHERE_LATEST_DATA_ACTION;
	}

}
