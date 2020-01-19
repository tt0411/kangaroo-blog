import React, { useState, useEffect } from 'react'
import { Avatar, Divider, Tooltip, Tag } from 'antd'
import '../static/style/components/author.css'
import servicePath from '../config/apiUrl'
import axios from 'axios'
import CountUp from 'react-countup'

const Author = () => {

    const [all_part_count, setAll_part_count] = useState(0);
    const [all_view_count, setAll_view_count] = useState(0);

    useEffect(() => {
        fetchData()

    }, [])


    const fetchData = async () => {
        const result = await axios(servicePath.getAllPartCount).then(
            (res) => { return res.data.data }
        )
        setAll_part_count(result[0].all_part_count)
        setAll_view_count(result[0].all_view_count)
    }

    return (
        <div className="author-div comm-box">
            <div> <Avatar size={100} src="https://i.loli.net/2020/01/19/rfdXnWjlzyGNP7s.png" /></div>
            <div className="author-introduction">
                <div className="author-name">小袋鼠</div>
                <div>一个正在成长的前端er</div>
                <div className="author-tag">
                    <Tag color="magenta">实习仔</Tag>
                    <Tag color="green">1年经验</Tag>
                    <Tag color="cyan">被访问<CountUp end={all_view_count} />次</Tag>
                </div>

                <Divider>社交账号</Divider>
                <Tooltip title="https://github.com/jack12345666">
                    <a href="https://github.com/jack12345666" target="_blank">
                        <Avatar size={28} icon="github" className="account" />
                    </a>
                </Tooltip>
                <Tooltip title="QQ:2726653264">
                    <Avatar size={28} icon="qq" className="account" />
                </Tooltip>
                <Tooltip title="wechat:wulitao1030">
                    <Avatar size={28} icon="wechat" className="account" />
                </Tooltip>

            </div>
        </div>
    )

}



export default Author