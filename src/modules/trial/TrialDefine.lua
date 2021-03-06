module(...,package.seeall)

local Defined = require("src/config/TrialDefinedConfig").Defined
local Reward = require("src/config/TrialRewardConfig").Config


MAX_LEVEL_COUNTER = Defined.MAX_LEVEL_COUNTER

FIGHT_SUCCESS = 1	--挑战成功
FIGHT_FAIL = 2		--挑战失败

MAX_RESET_TIMES = Defined.MAX_RESET_TIMES --重置次数

TYPE_NAME = {
	[1] = "金币道场",
	[2] = "经验书道场",
	[3] = "英雄道场",
}

--闯关类型
TYPE_A = 1
TYPE_B = 2
TYPE_C = 3
--奖励
TYPE_REWARD = {}
for _,v in pairs(Reward) do
	TYPE_REWARD[v.type] = v.reward
end

--STATUS
STATUS = {
	CAN_FIGHT = 1,	--可挑战
	CLOSED = 2,		--关闭的
	HAD_PASS = 3,	--已通关
}

ERR_CODE = 
{
	MAX_LEVEL_COUNTER = 2,	--超过关卡挑战次数
	INVALID_LEVEL = 3,		--无效关卡
	NOT_OPEN_LV = 4,	--未达到开启lv
	NOT_PRE_LEVEL = 5,	--前置关卡未开
	MAX_RESET = 6,	--重置次数
	HAD_PASS = 7,	--已通关
}
ERR_TXT =
{
	--[ERR_CODE.MAX_COUNTER] = "超过挑战次数",
	[ERR_CODE.MAX_LEVEL_COUNTER] = "超过关卡挑战次数",
	[ERR_CODE.INVALID_LEVEL] = "无效关卡",
	[ERR_CODE.NOT_OPEN_LV] = "未达到开启等级",
	[ERR_CODE.NOT_PRE_LEVEL] = "前置关卡未开",
	[ERR_CODE.MAX_RESET] = "超过重置次数",
	[ERR_CODE.HAD_PASS] = "已通关",
}




