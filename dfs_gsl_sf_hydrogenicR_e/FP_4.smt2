(declare-fun a_ack!71 () (_ BitVec 32))
(declare-fun b_ack!68 () (_ BitVec 32))
(declare-fun c_ack!69 () (_ BitVec 64))
(declare-fun d_ack!70 () (_ BitVec 64))
(assert (not (bvslt a_ack!71 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!71) b_ack!68)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!69) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!70) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
