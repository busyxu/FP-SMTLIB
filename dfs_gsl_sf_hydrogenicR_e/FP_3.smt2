(declare-fun a_ack!35 () (_ BitVec 32))
(declare-fun b_ack!32 () (_ BitVec 32))
(declare-fun c_ack!33 () (_ BitVec 64))
(declare-fun d_ack!34 () (_ BitVec 64))
(assert (not (bvslt a_ack!35 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!35) b_ack!32)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!33) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!34) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
