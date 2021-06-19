import PropTypes from "prop-types";
import React, { Fragment } from "react";

/**
 * The partial component
 *
 * @disable-docs
 */
const Partial = ({ _body }: Record<string, string>) => (
  <Fragment>{_body}</Fragment>
);

Partial.propTypes = {
  /**
   * _body: (test)(12)
   */
  _body: PropTypes.node.isRequired,
};

Partial.defaultProps = {};

export default Partial;
