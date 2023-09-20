(declare-fun x1_ack!7590 () (_ BitVec 64))
(declare-fun x0_ack!7597 () (_ BitVec 64))
(declare-fun x2_ack!7591 () (_ BitVec 64))
(declare-fun b_ack!7596 () (_ BitVec 64))
(declare-fun a_ack!7595 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!7592 () (_ BitVec 64))
(declare-fun y1_ack!7593 () (_ BitVec 64))
(declare-fun y2_ack!7594 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7597) ((_ to_fp 11 53) x1_ack!7590)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7590) ((_ to_fp 11 53) x2_ack!7591)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7590)
                       ((_ to_fp 11 53) x0_ack!7597))
               ((_ to_fp 11 53) x0_ack!7597))
       ((_ to_fp 11 53) x1_ack!7590)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7590)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7590)
                       ((_ to_fp 11 53) x0_ack!7597)))
       ((_ to_fp 11 53) x0_ack!7597)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7591)
                       ((_ to_fp 11 53) x1_ack!7590))
               ((_ to_fp 11 53) x1_ack!7590))
       ((_ to_fp 11 53) x2_ack!7591)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7591)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7591)
                       ((_ to_fp 11 53) x1_ack!7590)))
       ((_ to_fp 11 53) x1_ack!7590)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7590)
                    ((_ to_fp 11 53) x0_ack!7597))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7591)
                    ((_ to_fp 11 53) x1_ack!7590))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7595) ((_ to_fp 11 53) b_ack!7596))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7595) ((_ to_fp 11 53) x0_ack!7597))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7596) ((_ to_fp 11 53) x2_ack!7591))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7595) ((_ to_fp 11 53) b_ack!7596))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7595) ((_ to_fp 11 53) x0_ack!7597))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7595) ((_ to_fp 11 53) x1_ack!7590))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7596) ((_ to_fp 11 53) x0_ack!7597)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7590)
                    ((_ to_fp 11 53) x0_ack!7597))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7594)
                           ((_ to_fp 11 53) y1_ack!7593))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7591)
                                   ((_ to_fp 11 53) x1_ack!7590)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7593)
                           ((_ to_fp 11 53) y0_ack!7592))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7590)
                                   ((_ to_fp 11 53) x0_ack!7597)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7591)
                                   ((_ to_fp 11 53) x1_ack!7590))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7590)
                                   ((_ to_fp 11 53) x0_ack!7597))))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
