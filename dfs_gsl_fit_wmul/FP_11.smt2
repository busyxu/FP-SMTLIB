(declare-fun w0_ack!574 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) w0_ack!574) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
