(declare-fun a_ack!3 () (_ BitVec 32))
(declare-fun b_ack!1 () (_ BitVec 32))
(declare-fun c_ack!2 () (_ BitVec 64))
(assert (not (bvslt a_ack!3 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!3) b_ack!1)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
