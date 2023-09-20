(declare-fun w0_ack!7 () (_ BitVec 64))
(declare-fun w1_ack!6 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) w0_ack!7) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) w1_ack!6) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
