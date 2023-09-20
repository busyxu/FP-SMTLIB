(declare-fun w0_ack!664 () (_ BitVec 64))
(declare-fun w1_ack!663 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) w0_ack!664) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!663) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
