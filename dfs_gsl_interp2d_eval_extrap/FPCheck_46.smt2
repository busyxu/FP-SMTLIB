(declare-fun x1_ack!479 () (_ BitVec 64))
(declare-fun x0_ack!483 () (_ BitVec 64))
(declare-fun y0_ack!480 () (_ BitVec 64))
(declare-fun x_ack!481 () (_ BitVec 64))
(declare-fun y_ack!482 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!483) ((_ to_fp 11 53) x1_ack!479))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!480) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!481) ((_ to_fp 11 53) x0_ack!483))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!481) ((_ to_fp 11 53) x1_ack!479))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!482) ((_ to_fp 11 53) y0_ack!480))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!482) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!479)
                       ((_ to_fp 11 53) x0_ack!483))
               ((_ to_fp 11 53) x0_ack!483))
       ((_ to_fp 11 53) x1_ack!479)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!479)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!479)
                       ((_ to_fp 11 53) x0_ack!483)))
       ((_ to_fp 11 53) x0_ack!483)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!480))
               ((_ to_fp 11 53) y0_ack!480))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!480)))
       ((_ to_fp 11 53) y0_ack!480)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!482)
                       ((_ to_fp 11 53) y0_ack!480))
               ((_ to_fp 11 53) y0_ack!480))
       ((_ to_fp 11 53) y_ack!482)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!482)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!482)
                       ((_ to_fp 11 53) y0_ack!480)))
       ((_ to_fp 11 53) y0_ack!480)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!481)
                  ((_ to_fp 11 53) x0_ack!483))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!479)
                  ((_ to_fp 11 53) x0_ack!483)))))

(check-sat)
(exit)
