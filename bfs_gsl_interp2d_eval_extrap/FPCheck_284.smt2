(declare-fun x1_ack!2948 () (_ BitVec 64))
(declare-fun x0_ack!2952 () (_ BitVec 64))
(declare-fun y0_ack!2949 () (_ BitVec 64))
(declare-fun x_ack!2950 () (_ BitVec 64))
(declare-fun y_ack!2951 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2952) ((_ to_fp 11 53) x1_ack!2948))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2949) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2950) ((_ to_fp 11 53) x0_ack!2952))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2950) ((_ to_fp 11 53) x1_ack!2948))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2951) ((_ to_fp 11 53) y0_ack!2949))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2951) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2948)
                       ((_ to_fp 11 53) x0_ack!2952))
               ((_ to_fp 11 53) x0_ack!2952))
       ((_ to_fp 11 53) x1_ack!2948)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2948)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2948)
                       ((_ to_fp 11 53) x0_ack!2952)))
       ((_ to_fp 11 53) x0_ack!2952)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2949))
               ((_ to_fp 11 53) y0_ack!2949))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2949)))
       ((_ to_fp 11 53) y0_ack!2949)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!2950)
                  ((_ to_fp 11 53) x0_ack!2952))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2948)
                  ((_ to_fp 11 53) x0_ack!2952)))))

(check-sat)
(exit)
