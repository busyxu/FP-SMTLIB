(declare-fun c_ack!20 () (_ BitVec 64))
(declare-fun b_ack!19 () (_ BitVec 64))
(declare-fun a_ack!21 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) c_ack!20) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!19) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!21) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
