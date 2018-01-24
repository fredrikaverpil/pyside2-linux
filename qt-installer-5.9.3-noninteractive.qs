// https://stackoverflow.com/a/34032216/78204

function Controller() {
    installer.autoRejectMessageBoxes();
    installer.installationFinished.connect(function() {
        gui.clickButton(buttons.NextButton);
    })
}

Controller.prototype.WelcomePageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.CredentialsPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.IntroductionPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.TargetDirectoryPageCallback = function()
{
    gui.currentPageWidget().TargetDirectoryLineEdit.setText(installer.value("HomeDir") + "/Qt-5.9.3");
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.ComponentSelectionPageCallback = function() {
    var widget = gui.currentPageWidget();

    widget.selectAll();

    // qtcharts generated error at 99% build...
    widget.deselectComponent("qt.593.qtcharts")

    // widget.deselectAll();

    // widget.selectComponent("qt.593.gcc_64")
    // // widget.selectComponent("qt.593.doc")
    // // widget.selectComponent("qt.593.examples")
    // widget.selectComponent("qt.593.qtcharts.gcc_64")
    // widget.selectComponent("qt.593.qtdatavis3d.gcc_64")
    // widget.selectComponent("qt.593.qtnetworkauth.gcc_64")
    // widget.selectComponent("qt.593.qtpurchasing.gcc_64")
    // widget.selectComponent("qt.593.qtremoteobjects.gcc_64")
    // widget.selectComponent("qt.593.qtscript")
    // widget.selectComponent("qt.593.qtspeech.gcc_64")
    // widget.selectComponent("qt.593.qtvirtualkeyboard.gcc_64")
    // widget.selectComponent("qt.593.qtwebengine.gcc_64")
    // // widget.selectComponent("qt.593.src")
    // widget.selectComponent("qt.tools.qtcreator")

    gui.clickButton(buttons.NextButton);
}

Controller.prototype.LicenseAgreementPageCallback = function() {
    gui.currentPageWidget().AcceptLicenseRadioButton.setChecked(true);
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.StartMenuDirectoryPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.ReadyForInstallationPageCallback = function()
{
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.FinishedPageCallback = function() {
var checkBoxForm = gui.currentPageWidget().LaunchQtCreatorCheckBoxForm
if (checkBoxForm && checkBoxForm.launchQtCreatorCheckBox) {
    checkBoxForm.launchQtCreatorCheckBox.checked = false;
}
    gui.clickButton(buttons.FinishButton);
}
