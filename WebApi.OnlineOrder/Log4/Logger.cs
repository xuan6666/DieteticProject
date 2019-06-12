using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Log4
{
    /// <summary>
    /// 写Log日志的公共类.
    /// </summary>
    public static class Logger
    {
        private static readonly object lockObj = new object();

        /// <summary>
        /// 打印错误日志
        /// </summary>
        /// <param name="exception"></param>
        /// <param name="message"></param>
        public static void LogError(this Exception exception, string message = "")
        {
            if (string.IsNullOrEmpty(message))
            {
                FileLogService.Instance.Error(exception);
            }
            else
            {
                FileLogService.Instance.Error(message, exception);
            }
        }

        /// <summary>
        /// 获取日志实例
        /// </summary>
        public static FileLogService GetInstance() => FileLogService.Instance;

        /// <summary>
        /// 获取日志实例
        /// </summary>
        /// <param name="logService"></param>
        /// <returns></returns>
        public static ILogService GetLogger(this ILogService logService)
        {
            logService = FileLogService.Instance;

            return logService;
        }

    }
}
