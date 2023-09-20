(declare-fun a_ack!11 () (_ BitVec 32))
(declare-fun b_ack!9 () (_ BitVec 32))
(declare-fun c_ack!10 () (_ BitVec 64))
(assert (not (bvslt b_ack!9 a_ack!11)))
(assert (not (bvslt a_ack!11 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!10) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
