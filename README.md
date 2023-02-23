# TEMPLATE

Synopsis

# Orchestration (if req)

None or

## Install

doc doc doc doc

## Upgrade

doc doc doc doc

## Change screen color

doc doc doc doc


# Available states

    TEMPLATE
    TEMPLATE.package
    TEMPLATE.config
    TEMPLATE.service

## TEMPLATE

Meta-state (This is a state that includes other states).

This installs the TEMPLATE package, manages the TEMPLATE configuration file and then starts the associated TEMPLATE service.

## TEMPLATE.package

This state will install the TEMPLATE package only.

## TEMPLATE.config

This state will configure the TEMPLATE service and has a dependency on TEMPLATE.install via include list.

## TEMPLATE.service

This state will start the TEMPLATE service and has a dependency on TEMPLATE.config via include list.
