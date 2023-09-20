(declare-fun a_ack!407 () (_ BitVec 64))
(declare-fun b_ack!405 () (_ BitVec 64))
(declare-fun c_ack!406 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!407) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!405) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!406) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
