using System;

namespace Log4
{
    public interface ILogService
    {
        void Fatal(object message);
        void Fatal(object message, Exception ex);

        void Error(object message);
        void Error(object message, Exception ex);

        void Warn(object message);
        void Warn(object message, Exception ex);

        void Info(object message);
        void Info(object message, Exception ex);
        void Debug(object message);
        void Debug(object message, Exception ex);

    }
}
