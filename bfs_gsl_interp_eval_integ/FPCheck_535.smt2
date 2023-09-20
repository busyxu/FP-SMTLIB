(declare-fun x1_ack!6737 () (_ BitVec 64))
(declare-fun x0_ack!6744 () (_ BitVec 64))
(declare-fun x2_ack!6738 () (_ BitVec 64))
(declare-fun b_ack!6743 () (_ BitVec 64))
(declare-fun a_ack!6742 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!6739 () (_ BitVec 64))
(declare-fun y1_ack!6740 () (_ BitVec 64))
(declare-fun y2_ack!6741 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6744) ((_ to_fp 11 53) x1_ack!6737)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6737) ((_ to_fp 11 53) x2_ack!6738)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6737)
                       ((_ to_fp 11 53) x0_ack!6744))
               ((_ to_fp 11 53) x0_ack!6744))
       ((_ to_fp 11 53) x1_ack!6737)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6737)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6737)
                       ((_ to_fp 11 53) x0_ack!6744)))
       ((_ to_fp 11 53) x0_ack!6744)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6738)
                       ((_ to_fp 11 53) x1_ack!6737))
               ((_ to_fp 11 53) x1_ack!6737))
       ((_ to_fp 11 53) x2_ack!6738)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6738)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6738)
                       ((_ to_fp 11 53) x1_ack!6737)))
       ((_ to_fp 11 53) x1_ack!6737)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6737)
                    ((_ to_fp 11 53) x0_ack!6744))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6738)
                    ((_ to_fp 11 53) x1_ack!6737))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6742) ((_ to_fp 11 53) b_ack!6743))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6742) ((_ to_fp 11 53) x0_ack!6744))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6743) ((_ to_fp 11 53) x2_ack!6738))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6742) ((_ to_fp 11 53) b_ack!6743))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6742) ((_ to_fp 11 53) x0_ack!6744))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6742) ((_ to_fp 11 53) x1_ack!6737))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6743) ((_ to_fp 11 53) x0_ack!6744))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6743) ((_ to_fp 11 53) x1_ack!6737)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6737) ((_ to_fp 11 53) b_ack!6743))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6737)
                    ((_ to_fp 11 53) x0_ack!6744))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6738)
                    ((_ to_fp 11 53) x1_ack!6737))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6741)
                           ((_ to_fp 11 53) y1_ack!6740))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6738)
                                   ((_ to_fp 11 53) x1_ack!6737)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6740)
                           ((_ to_fp 11 53) y0_ack!6739))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6737)
                                   ((_ to_fp 11 53) x0_ack!6744)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6738)
                                   ((_ to_fp 11 53) x1_ack!6737))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6737)
                                   ((_ to_fp 11 53) x0_ack!6744))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FADD_ACCURACY #x0000000000000000 a!4))))

(check-sat)
(exit)
