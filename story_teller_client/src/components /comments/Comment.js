import React, { Component } from 'react';
import { connect } from 'react-redux';
import { increaseLikes } from '../../actions/commentsActions';
import { increaseDislikes } from '../../actions/commentsActions'

class Comment extends Component {

    handleLike = (e) => {
        e.preventDefault();
        this.props.increaseLikes(this.props.comment.id)
    }

    handleDislike = (e) => {       
        console.log('HI')
        e.preventDefault();
        console.log(this.props.comment.id)
        this.props.increaseDislikes(this.props.comment.id)
    }

    render() {
        return (
            <div className="card mb-4 shadow-sm">
                <div className="card-body">
                    <div className="card-text">text: {this.props.comment.text}
                        <br></br>
                story_id: {this.props.comment.story_id}
                        <br></br>
                comment_id: {this.props.comment.id}
                        <br></br>
                        <span>
                            <i className="far fa-thumbs-up" onClick={(e) => this.handleLike(e)}>{this.props.comment.likes}</i>
                            <i className="far fa-thumbs-down" onClick={(e) => this.handleDislike(e)} >{this.props.comment.dislikes}</i>
                            <i className="far fa-grin-squint-tears" onClick={() => console.log('funny')}>{this.props.comment.funny_rating}</i>
                            <i className="far fa-flushed" onClick={() => console.log('scary')}>{this.props.comment.scary_rating}</i>
                        </span>
                    </div>
                </div>
            </div>
        );
    }
}

export default connect(null, {increaseLikes, increaseDislikes})(Comment);
