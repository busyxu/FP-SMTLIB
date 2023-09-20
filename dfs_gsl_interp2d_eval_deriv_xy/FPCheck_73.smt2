(declare-fun x1_ack!835 () (_ BitVec 64))
(declare-fun x0_ack!839 () (_ BitVec 64))
(declare-fun y0_ack!836 () (_ BitVec 64))
(declare-fun x_ack!837 () (_ BitVec 64))
(declare-fun y_ack!838 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!839) ((_ to_fp 11 53) x1_ack!835))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!836) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!837) ((_ to_fp 11 53) x0_ack!839))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!837) ((_ to_fp 11 53) x1_ack!835))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!838) ((_ to_fp 11 53) y0_ack!836))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!838) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!837) ((_ to_fp 11 53) x0_ack!839))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!837) ((_ to_fp 11 53) x1_ack!835)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!838) ((_ to_fp 11 53) y0_ack!836))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!838) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!835)
                       ((_ to_fp 11 53) x0_ack!839))
               ((_ to_fp 11 53) x0_ack!839))
       ((_ to_fp 11 53) x1_ack!835)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!835)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!835)
                       ((_ to_fp 11 53) x0_ack!839)))
       ((_ to_fp 11 53) x0_ack!839)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!836))
               ((_ to_fp 11 53) y0_ack!836))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!836)))
       ((_ to_fp 11 53) y0_ack!836)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!835)
                  ((_ to_fp 11 53) x0_ack!839)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!836)))))

(check-sat)
(exit)
