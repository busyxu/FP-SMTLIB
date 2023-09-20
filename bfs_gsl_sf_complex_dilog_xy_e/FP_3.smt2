(declare-fun b_ack!95 () (_ BitVec 64))
(declare-fun a_ack!96 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) b_ack!95) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!96) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!96) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
