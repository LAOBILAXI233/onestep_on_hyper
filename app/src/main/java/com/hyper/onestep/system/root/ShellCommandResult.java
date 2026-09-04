package com.hyper.onestep.system.root;

public final class ShellCommandResult {
    public final int exitCode;
    public final String output;

    public ShellCommandResult(int exitCode, String output) {
        this.exitCode = exitCode;
        this.output = output;
    }

    public boolean isSuccess() {
        return exitCode == 0;
    }
}
