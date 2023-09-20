(declare-fun x1_ack!2938 () (_ BitVec 64))
(declare-fun x0_ack!2942 () (_ BitVec 64))
(declare-fun y0_ack!2939 () (_ BitVec 64))
(declare-fun x_ack!2940 () (_ BitVec 64))
(declare-fun y_ack!2941 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2942) ((_ to_fp 11 53) x1_ack!2938))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2939) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2940) ((_ to_fp 11 53) x0_ack!2942))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2940) ((_ to_fp 11 53) x1_ack!2938))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2941) ((_ to_fp 11 53) y0_ack!2939))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2941) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2938)
                       ((_ to_fp 11 53) x0_ack!2942))
               ((_ to_fp 11 53) x0_ack!2942))
       ((_ to_fp 11 53) x1_ack!2938)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2938)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2938)
                       ((_ to_fp 11 53) x0_ack!2942)))
       ((_ to_fp 11 53) x0_ack!2942)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2939))
               ((_ to_fp 11 53) y0_ack!2939))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2939)))
       ((_ to_fp 11 53) y0_ack!2939)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!2940)
                  ((_ to_fp 11 53) x0_ack!2942))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2938)
                  ((_ to_fp 11 53) x0_ack!2942)))))

(check-sat)
(exit)
