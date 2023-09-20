(declare-fun x1_ack!612 () (_ BitVec 64))
(declare-fun x0_ack!616 () (_ BitVec 64))
(declare-fun y0_ack!613 () (_ BitVec 64))
(declare-fun x_ack!614 () (_ BitVec 64))
(declare-fun y_ack!615 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!616) ((_ to_fp 11 53) x1_ack!612))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!613) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!614) ((_ to_fp 11 53) x0_ack!616))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!614) ((_ to_fp 11 53) x1_ack!612))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!615) ((_ to_fp 11 53) y0_ack!613))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!615) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!614) ((_ to_fp 11 53) x0_ack!616))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!614) ((_ to_fp 11 53) x1_ack!612))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!615) ((_ to_fp 11 53) y0_ack!613))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!615) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!612)
                       ((_ to_fp 11 53) x0_ack!616))
               ((_ to_fp 11 53) x0_ack!616))
       ((_ to_fp 11 53) x1_ack!612)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!612)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!612)
                       ((_ to_fp 11 53) x0_ack!616)))
       ((_ to_fp 11 53) x0_ack!616)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!613))
               ((_ to_fp 11 53) y0_ack!613))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!613)))
       ((_ to_fp 11 53) y0_ack!613)))
(assert (FPCHECK_FDIV_ACCURACY
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!613))))

(check-sat)
(exit)
