(declare-fun x1_ack!2044 () (_ BitVec 64))
(declare-fun x0_ack!2048 () (_ BitVec 64))
(declare-fun y0_ack!2045 () (_ BitVec 64))
(declare-fun x_ack!2046 () (_ BitVec 64))
(declare-fun y_ack!2047 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2048) ((_ to_fp 11 53) x1_ack!2044))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2045) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2046) ((_ to_fp 11 53) x0_ack!2048))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2046) ((_ to_fp 11 53) x1_ack!2044)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2047) ((_ to_fp 11 53) y0_ack!2045))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2047) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2044)
                       ((_ to_fp 11 53) x0_ack!2048))
               ((_ to_fp 11 53) x0_ack!2048))
       ((_ to_fp 11 53) x1_ack!2044)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2044)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2044)
                       ((_ to_fp 11 53) x0_ack!2048)))
       ((_ to_fp 11 53) x0_ack!2048)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2047)
                       ((_ to_fp 11 53) y0_ack!2045))
               ((_ to_fp 11 53) y0_ack!2045))
       ((_ to_fp 11 53) y_ack!2047)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2047)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2047)
                       ((_ to_fp 11 53) y0_ack!2045)))
       ((_ to_fp 11 53) y0_ack!2045)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!2046)
                  ((_ to_fp 11 53) x0_ack!2048))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2044)
                  ((_ to_fp 11 53) x0_ack!2048)))))

(check-sat)
(exit)
