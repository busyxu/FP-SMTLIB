(declare-fun x1_ack!916 () (_ BitVec 64))
(declare-fun x0_ack!920 () (_ BitVec 64))
(declare-fun y0_ack!917 () (_ BitVec 64))
(declare-fun x_ack!918 () (_ BitVec 64))
(declare-fun y_ack!919 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!920) ((_ to_fp 11 53) x1_ack!916))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!917) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!918) ((_ to_fp 11 53) x0_ack!920))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!918) ((_ to_fp 11 53) x1_ack!916)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!919) ((_ to_fp 11 53) y0_ack!917))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!919) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!918)
                  ((_ to_fp 11 53) x0_ack!920))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!916)
                  ((_ to_fp 11 53) x0_ack!920)))
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!919)
                  ((_ to_fp 11 53) y0_ack!917))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!917)))))

(check-sat)
(exit)
