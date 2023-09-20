(declare-fun x1_ack!72 () (_ BitVec 64))
(declare-fun x0_ack!76 () (_ BitVec 64))
(declare-fun y0_ack!73 () (_ BitVec 64))
(declare-fun x_ack!74 () (_ BitVec 64))
(declare-fun y_ack!75 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!76) ((_ to_fp 11 53) x1_ack!72))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!73) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!74) ((_ to_fp 11 53) x0_ack!76))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!74) ((_ to_fp 11 53) x1_ack!72))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!75) ((_ to_fp 11 53) y0_ack!73))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!75) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!74) ((_ to_fp 11 53) x0_ack!76))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!74) ((_ to_fp 11 53) x1_ack!72))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!75) ((_ to_fp 11 53) y0_ack!73))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!75) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!72)
                       ((_ to_fp 11 53) x0_ack!76))
               ((_ to_fp 11 53) x0_ack!76))
       ((_ to_fp 11 53) x1_ack!72)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!72)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!72)
                       ((_ to_fp 11 53) x0_ack!76)))
       ((_ to_fp 11 53) x0_ack!76)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!73))
               ((_ to_fp 11 53) y0_ack!73))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!73)))
       ((_ to_fp 11 53) y0_ack!73)))
(assert (FPCHECK_FDIV_ACCURACY
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!72)
          ((_ to_fp 11 53) x0_ack!76))))

(check-sat)
(exit)
