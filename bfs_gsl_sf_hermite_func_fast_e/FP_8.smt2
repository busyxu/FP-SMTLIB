(declare-fun a_ack!115 () (_ BitVec 32))
(declare-fun b_ack!114 () (_ BitVec 64))
(assert (not (bvslt a_ack!115 #x000003e8)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!114) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt a_ack!115 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!114) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
