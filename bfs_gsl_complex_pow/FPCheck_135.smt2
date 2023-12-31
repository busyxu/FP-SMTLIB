(declare-fun x1_ack!915 () (_ BitVec 64))
(declare-fun x2_ack!914 () (_ BitVec 64))
(declare-fun y1_ack!913 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!915) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!914) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!914) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!915))
             (fp.abs ((_ to_fp 11 53) y1_ack!913)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!915) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY (CF_atan2 y1_ack!913 x1_ack!915) x2_ack!914))

(check-sat)
(exit)
