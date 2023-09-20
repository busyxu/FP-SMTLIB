(declare-fun x1_ack!243 () (_ BitVec 64))
(declare-fun x0_ack!247 () (_ BitVec 64))
(declare-fun y0_ack!244 () (_ BitVec 64))
(declare-fun x_ack!245 () (_ BitVec 64))
(declare-fun y_ack!246 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!247) ((_ to_fp 11 53) x1_ack!243))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!244) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!245) ((_ to_fp 11 53) x0_ack!247))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!245) ((_ to_fp 11 53) x1_ack!243))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!246) ((_ to_fp 11 53) y0_ack!244))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!246) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!245) ((_ to_fp 11 53) x0_ack!247))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!245) ((_ to_fp 11 53) x1_ack!243))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!246) ((_ to_fp 11 53) y0_ack!244))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!246) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!243)
                  ((_ to_fp 11 53) x0_ack!247)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!244)))))

(check-sat)
(exit)
