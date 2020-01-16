import React, { Component } from "react";

import { Form, Input, Checkbox, Button, Table, Select } from "antd";

import "antd/dist/antd.css";

const { Option } = Select;

class ManageExam extends Component {
  state = {
    confirmDirty: false,
    autoCompleteResult: []
  };

  handleSubmit = e => {
    e.preventDefault();
    this.props.form.validateFieldsAndScroll((err, values) => {
      if (!err) {
        console.log("Received values of form: ", values);
      }
    });
  };

  handleConfirmBlur = e => {
    const { value } = e.target;
    this.setState({ confirmDirty: this.state.confirmDirty || !!value });
  };

  render() {
    const { getFieldDecorator } = this.props.form;

    const formItemLayout = {
      labelCol: {
        xs: { span: 0 },
        sm: { span: 0 }
      },
      wrapperCol: {
        xs: { span: 24 },
        sm: { span: 24 }
      }
    };
    const tailFormItemLayout = {
      wrapperCol: {
        xs: {
          span: 24,
          offset: 0
        },
        sm: {
          span: 16,
          offset: 8
        }
      }
    };

    const selectAfterA = getFieldDecorator("correct_choice_a", {
      initialValue: "no"
    })(
      <Select>
        <Option value="yes">Correct Answer : Yes</Option>
        <Option value="no">Correct Answer : No</Option>
      </Select>
    );

    const selectAfterB = getFieldDecorator("correct_choice_b", {
      initialValue: "no"
    })(
      <Select>
        <Option value="yes">Correct Answer : Yes</Option>
        <Option value="no">Correct Answer : No</Option>
      </Select>
    );

    const selectAfterC = getFieldDecorator("correct_choice_c", {
      initialValue: "no"
    })(
      <Select>
        <Option value="yes">Correct Answer : Yes</Option>
        <Option value="no">Correct Answer : No</Option>
      </Select>
    );

    const selectAfterD = getFieldDecorator("correct_choice_d", {
      initialValue: "no"
    })(
      <Select>
        <Option value="yes">Correct Answer : Yes</Option>
        <Option value="no">Correct Answer : No</Option>
      </Select>
    );

    const selectAfterE = getFieldDecorator("correct_choice_e", {
      initialValue: "no"
    })(
      <Select>
        <Option value="yes">Correct Answer : Yes</Option>
        <Option value="no">Correct Answer : No</Option>
      </Select>
    );

    return (
      <section id="register-section">
        <Form {...formItemLayout} onSubmit={this.handleSubmit}>
          <h3 className="pt-3 mb-3">Manage Exam</h3>

          <Form.Item>
            {getFieldDecorator("name", {
              rules: [
                {
                  required: true,
                  message: "Please input exam name!"
                }
              ]
            })(<Input placeholder="Name" />)}
          </Form.Item>
          <Form.Item hasFeedback>
            {getFieldDecorator("description", {
              rules: [
                {
                  required: true,
                  message: "Please input exam description!"
                }
              ]
            })(<Input.TextArea placeholder="Description" />)}
          </Form.Item>
          <h3 className="pt-3 mb-3">Add Topics</h3>
          <Table
            columns={[
              {
                title: "Name",
                dataIndex: "name",
                key: "name",
                render: text => <a>{text}</a>
              },
              {
                title: "Age",
                dataIndex: "age",
                key: "age"
              },
              {
                title: "Address",
                dataIndex: "address",
                key: "address"
              }
            ]}
            dataSource={[
              {
                key: "1",
                name: "John Brown",
                age: 32,
                address: "New York No. 1 Lake Park",
                tags: ["nice", "developer"]
              }
            ]}
          />
          <Form.Item hasFeedback>
            {getFieldDecorator("choice_a", {
              rules: [{ required: true, message: "Please input choice a!" }]
            })(
              <Input
                addonBefore={"A"}
                addonAfter={selectAfterA}
                style={{ width: "100%" }}
              />
            )}
          </Form.Item>
          <Form.Item hasFeedback>
            {getFieldDecorator("choice_b", {
              rules: [{ required: true, message: "Please input choice b!" }]
            })(
              <Input
                addonBefore={"B"}
                addonAfter={selectAfterB}
                style={{ width: "100%" }}
              />
            )}
          </Form.Item>
          <Form.Item hasFeedback>
            {getFieldDecorator("choice_c", {
              rules: [{ required: true, message: "Please input choice c!" }]
            })(
              <Input
                addonBefore={"C"}
                addonAfter={selectAfterC}
                style={{ width: "100%" }}
              />
            )}
          </Form.Item>
          <Form.Item hasFeedback>
            {getFieldDecorator("choice_d", {
              rules: [{ required: true, message: "Please input choice d!" }]
            })(
              <Input
                addonBefore={"D"}
                addonAfter={selectAfterD}
                style={{ width: "100%" }}
              />
            )}
          </Form.Item>
          <Form.Item hasFeedback>
            {getFieldDecorator("choice_e", {
              rules: [{ required: true, message: "Please input choice e!" }]
            })(
              <Input
                addonBefore={"E"}
                addonAfter={selectAfterE}
                style={{ width: "100%" }}
              />
            )}
          </Form.Item>
          <Form.Item hasFeedback>
            {getFieldDecorator("choice_e", {
              rules: [{ required: true, message: "Please input choice e!" }]
            })(
              <Input
                addonBefore={"E"}
                addonAfter={selectAfterE}
                style={{ width: "100%" }}
              />
            )}
          </Form.Item>
          <Form.Item hasFeedback>
            {getFieldDecorator(
              "choice_e",
              {}
            )(<Input addonBefore={"Remark : "} style={{ width: "100%" }} />)}
          </Form.Item>
          <Form.Item {...tailFormItemLayout}>
            <Button type="primary" htmlType="submit">
              Add
            </Button>
          </Form.Item>
          <Form.Item {...tailFormItemLayout}>
            <Button type="primary" htmlType="submit">
              Submit
            </Button>
          </Form.Item>
        </Form>
      </section>
    );
  }
}

const Formz = Form.create({ name: "register" })(ManageExam);
export default Formz;
