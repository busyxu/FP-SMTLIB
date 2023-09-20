(declare-fun c_ack!18 () (_ BitVec 64))
(declare-fun b_ack!17 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) c_ack!18) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) b_ack!17) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
