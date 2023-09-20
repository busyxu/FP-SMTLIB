(declare-fun x1_ack!3612 () (_ BitVec 64))
(declare-fun x0_ack!3616 () (_ BitVec 64))
(declare-fun y0_ack!3613 () (_ BitVec 64))
(declare-fun x_ack!3614 () (_ BitVec 64))
(declare-fun y_ack!3615 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3616) ((_ to_fp 11 53) x1_ack!3612))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3613) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3614) ((_ to_fp 11 53) x0_ack!3616)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!3615) ((_ to_fp 11 53) y0_ack!3613)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3612)
                       ((_ to_fp 11 53) x0_ack!3616))
               ((_ to_fp 11 53) x0_ack!3616))
       ((_ to_fp 11 53) x1_ack!3612)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3612)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3612)
                       ((_ to_fp 11 53) x0_ack!3616)))
       ((_ to_fp 11 53) x0_ack!3616)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3615)
                       ((_ to_fp 11 53) y0_ack!3613))
               ((_ to_fp 11 53) y0_ack!3613))
       ((_ to_fp 11 53) y_ack!3615)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3615)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3615)
                       ((_ to_fp 11 53) y0_ack!3613)))
       ((_ to_fp 11 53) y0_ack!3613)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!3614)
                  ((_ to_fp 11 53) x0_ack!3616))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!3612)
                  ((_ to_fp 11 53) x0_ack!3616)))))

(check-sat)
(exit)
