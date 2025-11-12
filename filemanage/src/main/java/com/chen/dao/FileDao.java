package com.chen.dao;

import com.chen.domain.file.FilePo;
import org.springframework.stereotype.Repository;

@Repository
public interface FileDao  extends BaseDao<FilePo,String> {
}
