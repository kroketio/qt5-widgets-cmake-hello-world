#pragma once

#include <iostream>

#include <QMainWindow>
#include <QCompleter>
#include <QPushButton>
#include <QClipboard>
#include <QStringListModel>
#include <QTimer>
#include <QDebug>
#include <QQueue>
#include <QThread>
#include <QMutex>

#include "ctx.h"
#include "about.h"
#include "lib/utils.h"

namespace Ui {
  class MainWindow;
}

class AppContext;
class MainWindow : public QMainWindow
{
  Q_OBJECT

public:
  explicit MainWindow(AppContext *ctx, QWidget *parent = nullptr);
  void setupUIModels();
  void queueTask();
  void setupCompleter();
  ~MainWindow();

  qreal screenDpiRef;
  QRect screenGeo;
  QRect screenRect;
  qreal screenDpi;
  qreal screenDpiPhysical;
  qreal screenRatio;

public slots:
    void onOpenAboutWindow();
    void onQuitApplication();

private:
  Ui::MainWindow *ui;
  AppContext *m_ctx = nullptr;

  About *m_about = nullptr;
};
