(declare-fun a_ack!485 () (_ BitVec 64))
(declare-fun b_ack!483 () (_ BitVec 64))
(declare-fun c_ack!484 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!485) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!483) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!484) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
