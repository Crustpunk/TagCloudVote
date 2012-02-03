/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.arrasz.web.tagcloudvote.domain;

import java.io.Serializable;
import java.math.BigInteger;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author joachimarrasz
 */
@Entity
@Table(name = "tag_cloud_entry")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TagCloudEntry.findAll", query = "SELECT t FROM TagCloudEntry t"),
    @NamedQuery(name = "TagCloudEntry.findById", query = "SELECT t FROM TagCloudEntry t WHERE t.id = :id"),
    @NamedQuery(name = "TagCloudEntry.findByDownvote", query = "SELECT t FROM TagCloudEntry t WHERE t.downvote = :downvote"),
    @NamedQuery(name = "TagCloudEntry.findByName", query = "SELECT t FROM TagCloudEntry t WHERE t.name = :name"),
    @NamedQuery(name = "TagCloudEntry.findByUpvote", query = "SELECT t FROM TagCloudEntry t WHERE t.upvote = :upvote"),
    @NamedQuery(name = "TagCloudEntry.findByVersion", query = "SELECT t FROM TagCloudEntry t WHERE t.version = :version")})
public class TagCloudEntry implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Long id;
    @Column(name = "downvote")
    private BigInteger downvote;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "name")
    private String name;
    @Column(name = "upvote")
    private BigInteger upvote;
    @Column(name = "version")
    private Integer version;

    public TagCloudEntry() {
    }

    public TagCloudEntry(Long id) {
        this.id = id;
    }

    public TagCloudEntry(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public BigInteger getDownvote() {
        return downvote;
    }

    public void setDownvote(BigInteger downvote) {
        this.downvote = downvote;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigInteger getUpvote() {
        return upvote;
    }

    public void setUpvote(BigInteger upvote) {
        this.upvote = upvote;
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TagCloudEntry)) {
            return false;
        }
        TagCloudEntry other = (TagCloudEntry) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "org.arrasz.web.tagcloudvote.domain.TagCloudEntry[ id=" + id + " ]";
    }
    
}
