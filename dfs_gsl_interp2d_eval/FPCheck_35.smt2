(declare-fun x1_ack!353 () (_ BitVec 64))
(declare-fun x0_ack!357 () (_ BitVec 64))
(declare-fun y0_ack!354 () (_ BitVec 64))
(declare-fun x_ack!355 () (_ BitVec 64))
(declare-fun y_ack!356 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!357) ((_ to_fp 11 53) x1_ack!353))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!354) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!355) ((_ to_fp 11 53) x0_ack!357))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!355) ((_ to_fp 11 53) x1_ack!353))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!356) ((_ to_fp 11 53) y0_ack!354))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!356) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!355) ((_ to_fp 11 53) x0_ack!357))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!355) ((_ to_fp 11 53) x1_ack!353))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!356) ((_ to_fp 11 53) y0_ack!354))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!356) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!353)
                       ((_ to_fp 11 53) x0_ack!357))
               ((_ to_fp 11 53) x0_ack!357))
       ((_ to_fp 11 53) x1_ack!353)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!353)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!353)
                       ((_ to_fp 11 53) x0_ack!357)))
       ((_ to_fp 11 53) x0_ack!357)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!354))
               ((_ to_fp 11 53) y0_ack!354))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!354)))
       ((_ to_fp 11 53) y0_ack!354)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!356)
                  ((_ to_fp 11 53) y0_ack!354))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!354)))))

(check-sat)
(exit)
