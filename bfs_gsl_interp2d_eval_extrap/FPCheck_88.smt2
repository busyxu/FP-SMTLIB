(declare-fun x1_ack!906 () (_ BitVec 64))
(declare-fun x0_ack!910 () (_ BitVec 64))
(declare-fun y0_ack!907 () (_ BitVec 64))
(declare-fun x_ack!908 () (_ BitVec 64))
(declare-fun y_ack!909 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!910) ((_ to_fp 11 53) x1_ack!906))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!907) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!908) ((_ to_fp 11 53) x0_ack!910))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!908) ((_ to_fp 11 53) x1_ack!906)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!909) ((_ to_fp 11 53) y0_ack!907))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!909) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!908)
                  ((_ to_fp 11 53) x0_ack!910))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!906)
                  ((_ to_fp 11 53) x0_ack!910)))
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!909)
                  ((_ to_fp 11 53) y0_ack!907))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!907)))))

(check-sat)
(exit)
