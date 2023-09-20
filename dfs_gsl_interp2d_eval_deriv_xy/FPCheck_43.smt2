(declare-fun x1_ack!486 () (_ BitVec 64))
(declare-fun x0_ack!490 () (_ BitVec 64))
(declare-fun y0_ack!487 () (_ BitVec 64))
(declare-fun x_ack!488 () (_ BitVec 64))
(declare-fun y_ack!489 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!490) ((_ to_fp 11 53) x1_ack!486))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!487) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!488) ((_ to_fp 11 53) x0_ack!490))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!488) ((_ to_fp 11 53) x1_ack!486))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!489) ((_ to_fp 11 53) y0_ack!487))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!489) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!488) ((_ to_fp 11 53) x0_ack!490))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!488) ((_ to_fp 11 53) x1_ack!486))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!489) ((_ to_fp 11 53) y0_ack!487))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!489) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!486)
                  ((_ to_fp 11 53) x0_ack!490)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!487)))))

(check-sat)
(exit)
