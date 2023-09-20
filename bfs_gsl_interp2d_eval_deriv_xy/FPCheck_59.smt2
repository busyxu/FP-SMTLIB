(declare-fun x1_ack!642 () (_ BitVec 64))
(declare-fun x0_ack!646 () (_ BitVec 64))
(declare-fun y0_ack!643 () (_ BitVec 64))
(declare-fun x_ack!644 () (_ BitVec 64))
(declare-fun y_ack!645 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!646) ((_ to_fp 11 53) x1_ack!642))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!643) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!644) ((_ to_fp 11 53) x0_ack!646))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!644) ((_ to_fp 11 53) x1_ack!642))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!645) ((_ to_fp 11 53) y0_ack!643))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!645) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!644) ((_ to_fp 11 53) x0_ack!646))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!644) ((_ to_fp 11 53) x1_ack!642))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!645) ((_ to_fp 11 53) y0_ack!643))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!645) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!642)
                       ((_ to_fp 11 53) x0_ack!646))
               ((_ to_fp 11 53) x0_ack!646))
       ((_ to_fp 11 53) x1_ack!642)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!642)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!642)
                       ((_ to_fp 11 53) x0_ack!646)))
       ((_ to_fp 11 53) x0_ack!646)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!643))
               ((_ to_fp 11 53) y0_ack!643))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!643)))
       ((_ to_fp 11 53) y0_ack!643)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!642)
                  ((_ to_fp 11 53) x0_ack!646)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!643)))))

(check-sat)
(exit)
