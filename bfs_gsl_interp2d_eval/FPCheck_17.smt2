(declare-fun x1_ack!198 () (_ BitVec 64))
(declare-fun x0_ack!202 () (_ BitVec 64))
(declare-fun y0_ack!199 () (_ BitVec 64))
(declare-fun x_ack!200 () (_ BitVec 64))
(declare-fun y_ack!201 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!202) ((_ to_fp 11 53) x1_ack!198))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!199) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!200) ((_ to_fp 11 53) x0_ack!202))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!200) ((_ to_fp 11 53) x1_ack!198))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!201) ((_ to_fp 11 53) y0_ack!199))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!201) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!200) ((_ to_fp 11 53) x0_ack!202))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!200) ((_ to_fp 11 53) x1_ack!198))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!201) ((_ to_fp 11 53) y0_ack!199))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!201) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!200)
          ((_ to_fp 11 53) x0_ack!202))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!198)
          ((_ to_fp 11 53) x0_ack!202))))

(check-sat)
(exit)
