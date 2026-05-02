package com.chen.domain.phrasesdomain.phrases;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.sql.Timestamp;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 *
 * </p>
 *
 * @author 神的孩子都在歌唱
 * @since 2024-07-26
 */
@Getter
@Setter
@TableName("cyz_phrases")
@Schema(name   = "PhrasesPO对象", description = "")
public class PhrasesPO implements Serializable {

    private static final long serialVersionUID = 1L;

    @Schema(name ="句子")
    @TableField("sentence")
    private String sentence;

    @Schema(name ="创建时间")
    @TableField("create_time")
    private Timestamp createTime;

    @Schema(name ="更新时间")
    @TableField("update_time")
    private Timestamp updateTime;

    @Schema(name ="删除标志(0代表存在 1代表删除)")
    @TableField("del_flag")
    @TableLogic
    private String delFlag;

    @Schema(name ="创建者")
    @TableField("create_by")
    private String createBy;

    @Schema(name ="更新者")
    @TableField("update_by")
    private String updateBy;

    @Schema(name ="类别id")
    @TableField("category_id")
    private Long categoryId;

    @Schema(name ="推荐等级")
    @TableField("rank")
    private String rank;


    @TableId(value = "id", type = IdType.AUTO)
    private Long id;


}
