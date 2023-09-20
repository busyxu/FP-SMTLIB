(declare-fun x1_ack!2431 () (_ BitVec 64))
(declare-fun x0_ack!2435 () (_ BitVec 64))
(declare-fun y0_ack!2432 () (_ BitVec 64))
(declare-fun x_ack!2433 () (_ BitVec 64))
(declare-fun y_ack!2434 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2435) ((_ to_fp 11 53) x1_ack!2431))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2432) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2433) ((_ to_fp 11 53) x0_ack!2435))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2433) ((_ to_fp 11 53) x1_ack!2431))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2434) ((_ to_fp 11 53) y0_ack!2432)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2431)
                       ((_ to_fp 11 53) x0_ack!2435))
               ((_ to_fp 11 53) x0_ack!2435))
       ((_ to_fp 11 53) x1_ack!2431)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2431)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2431)
                       ((_ to_fp 11 53) x0_ack!2435)))
       ((_ to_fp 11 53) x0_ack!2435)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2432))
               ((_ to_fp 11 53) y0_ack!2432))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2432)))
       ((_ to_fp 11 53) y0_ack!2432)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!2434)
          ((_ to_fp 11 53) y0_ack!2432))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!2432))))

(check-sat)
(exit)
