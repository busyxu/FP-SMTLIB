(declare-fun x1_ack!16 () (_ BitVec 64))
(declare-fun x0_ack!19 () (_ BitVec 64))
(declare-fun y0_ack!17 () (_ BitVec 64))
(declare-fun x_ack!18 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!19) ((_ to_fp 11 53) x1_ack!16))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!17) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!18) ((_ to_fp 11 53) x0_ack!19)))

(check-sat)
(exit)
