(declare-fun x1_ack!27 () (_ BitVec 64))
(declare-fun x0_ack!29 () (_ BitVec 64))
(declare-fun y0_ack!28 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!29) ((_ to_fp 11 53) x1_ack!27))))
(assert (fp.geq ((_ to_fp 11 53) y0_ack!28) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
