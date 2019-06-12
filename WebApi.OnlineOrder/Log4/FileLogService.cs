using System;
using System.IO;
using log4net;

namespace Log4
{
    public sealed class FileLogService : ILogService
    {
        private readonly ILog _logger;
        private readonly static Object lockObject = new object();
        private static FileLogService _fileLogService;

        static FileLogService()
        {
            var log4NetConfigDirectory = AppDomain.CurrentDomain.RelativeSearchPath ?? AppDomain.CurrentDomain.BaseDirectory;

            var log4NetConfigFilePath = Path.Combine(log4NetConfigDirectory, "log4net.config");
            log4net.Config.XmlConfigurator.ConfigureAndWatch(new FileInfo(log4NetConfigFilePath));
        }

        public static FileLogService Instance
        {
            get
            {
                if(_fileLogService == null)
                {
                    lock (lockObject)
                    {
                        if (_fileLogService == null)
                        {
                            _fileLogService = new FileLogService();
                        }
                    }
                }

                return _fileLogService;
            }
        }


        private FileLogService()
        {
            InternalLogger.Log(nameof(FileLogService));
            _logger = LogManager.GetLogger("Logger");
        }


        public FileLogService(Type logClass)
        {
            _logger = LogManager.GetLogger(logClass);
        }

        public void Fatal(object message)
        {
            if (_logger.IsFatalEnabled)
            {
                _logger.Fatal(message);
            }
        }

        public void Fatal(object message, Exception ex)
        {
            if (_logger.IsFatalEnabled)
            {
                _logger.Fatal(message, ex);
            }
        }

        public void Error(object message)
        {
            if (_logger.IsErrorEnabled)
            {
                _logger.Error(message);
            }
        }

        public void Error(object message, Exception ex)
        {
            if (_logger.IsErrorEnabled)
            {
                _logger.Error(message, ex);
            }
        }

        public void Warn(object message)
        {
            if (_logger.IsWarnEnabled)
            {
                _logger.Warn(message);
            }
        }

        public void Warn(object message, Exception ex)
        {
            if (_logger.IsWarnEnabled)
            {
                _logger.Warn(message, ex);
            }
        }

        public void Info(object message)
        {
            if (_logger.IsInfoEnabled)
            {
                _logger.Info(message);
            }
        }

        public void Info(object message, Exception ex)
        {
            if (_logger.IsInfoEnabled)
            {
                _logger.Info(message, ex);
            }
        }

        public void Debug(object message)
        {
            if (_logger.IsDebugEnabled)
            {
                _logger.Debug(message);
            }
        }

        public void Debug(object message, Exception ex)
        {
            if (_logger.IsDebugEnabled)
            {
                _logger.Debug(message, ex);
            }
        }
    }
}
