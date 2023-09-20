(declare-fun x1_ack!494 () (_ BitVec 64))
(declare-fun x0_ack!498 () (_ BitVec 64))
(declare-fun y0_ack!495 () (_ BitVec 64))
(declare-fun x_ack!496 () (_ BitVec 64))
(declare-fun y_ack!497 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!498) ((_ to_fp 11 53) x1_ack!494))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!495) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!496) ((_ to_fp 11 53) x0_ack!498))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!496) ((_ to_fp 11 53) x1_ack!494))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!497) ((_ to_fp 11 53) y0_ack!495))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!497) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!496) ((_ to_fp 11 53) x0_ack!498))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!496) ((_ to_fp 11 53) x1_ack!494))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!497) ((_ to_fp 11 53) y0_ack!495))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!497) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!494)
                       ((_ to_fp 11 53) x0_ack!498))
               ((_ to_fp 11 53) x0_ack!498))
       ((_ to_fp 11 53) x1_ack!494)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!494)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!494)
                       ((_ to_fp 11 53) x0_ack!498)))
       ((_ to_fp 11 53) x0_ack!498)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!495))
               ((_ to_fp 11 53) y0_ack!495))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!495)))
       ((_ to_fp 11 53) y0_ack!495)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!496)
                  ((_ to_fp 11 53) x0_ack!498))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!494)
                  ((_ to_fp 11 53) x0_ack!498)))))

(check-sat)
(exit)
