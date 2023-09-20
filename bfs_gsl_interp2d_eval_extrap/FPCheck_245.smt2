(declare-fun x1_ack!2541 () (_ BitVec 64))
(declare-fun x0_ack!2545 () (_ BitVec 64))
(declare-fun y0_ack!2542 () (_ BitVec 64))
(declare-fun x_ack!2543 () (_ BitVec 64))
(declare-fun y_ack!2544 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2545) ((_ to_fp 11 53) x1_ack!2541))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2542) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2543) ((_ to_fp 11 53) x0_ack!2545))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2543) ((_ to_fp 11 53) x1_ack!2541))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2544) ((_ to_fp 11 53) y0_ack!2542))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2544) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2541)
                       ((_ to_fp 11 53) x0_ack!2545))
               ((_ to_fp 11 53) x0_ack!2545))
       ((_ to_fp 11 53) x1_ack!2541)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2541)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2541)
                       ((_ to_fp 11 53) x0_ack!2545)))
       ((_ to_fp 11 53) x0_ack!2545)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2542))
               ((_ to_fp 11 53) y0_ack!2542))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2542)))
       ((_ to_fp 11 53) y0_ack!2542)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!2543)
          ((_ to_fp 11 53) x0_ack!2545))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2541)
          ((_ to_fp 11 53) x0_ack!2545))))

(check-sat)
(exit)
