package com.dingjiaxiong.xiongoj_backend.judge;

import com.dingjiaxiong.xiongoj_backend.judge.strategy.DefaultJudgeStrategy;
import com.dingjiaxiong.xiongoj_backend.judge.strategy.JavaLanguageJudgeStrategy;
import com.dingjiaxiong.xiongoj_backend.judge.strategy.JudgeContext;
import com.dingjiaxiong.xiongoj_backend.judge.strategy.JudgeStrategy;
import com.dingjiaxiong.xiongoj_backend.judge.codesandbox.model.JudgeInfo;
import com.dingjiaxiong.xiongoj_backend.model.entity.QuestionSubmit;
import org.springframework.stereotype.Service;

/**
 * 判题管理（简化调用）
 */
@Service
public class JudgeManager {

    /**
     * 执行判题
     *
     * @param judgeContext
     * @return
     */
    JudgeInfo doJudge(JudgeContext judgeContext) {
        QuestionSubmit questionSubmit = judgeContext.getQuestionSubmit();
        String language = questionSubmit.getLanguage();
        JudgeStrategy judgeStrategy = new DefaultJudgeStrategy();
        if ("java".equals(language)) {
            judgeStrategy = new JavaLanguageJudgeStrategy();
        }
        return judgeStrategy.doJudge(judgeContext);
    }

}
