(declare-fun x1_ack!3615 () (_ BitVec 64))
(declare-fun x0_ack!3622 () (_ BitVec 64))
(declare-fun x2_ack!3616 () (_ BitVec 64))
(declare-fun b_ack!3621 () (_ BitVec 64))
(declare-fun a_ack!3620 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!3617 () (_ BitVec 64))
(declare-fun y1_ack!3618 () (_ BitVec 64))
(declare-fun y2_ack!3619 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3622) ((_ to_fp 11 53) x1_ack!3615)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3615) ((_ to_fp 11 53) x2_ack!3616)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3615)
                       ((_ to_fp 11 53) x0_ack!3622))
               ((_ to_fp 11 53) x0_ack!3622))
       ((_ to_fp 11 53) x1_ack!3615)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3615)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3615)
                       ((_ to_fp 11 53) x0_ack!3622)))
       ((_ to_fp 11 53) x0_ack!3622)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3616)
                       ((_ to_fp 11 53) x1_ack!3615))
               ((_ to_fp 11 53) x1_ack!3615))
       ((_ to_fp 11 53) x2_ack!3616)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3616)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3616)
                       ((_ to_fp 11 53) x1_ack!3615)))
       ((_ to_fp 11 53) x1_ack!3615)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3615)
                    ((_ to_fp 11 53) x0_ack!3622))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3616)
                    ((_ to_fp 11 53) x1_ack!3615))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3620) ((_ to_fp 11 53) b_ack!3621))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3620) ((_ to_fp 11 53) x0_ack!3622))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3621) ((_ to_fp 11 53) x2_ack!3616))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3620) ((_ to_fp 11 53) b_ack!3621))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3620) ((_ to_fp 11 53) x0_ack!3622))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3620) ((_ to_fp 11 53) x1_ack!3615))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3621) ((_ to_fp 11 53) x0_ack!3622))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3621) ((_ to_fp 11 53) x1_ack!3615))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3615)
                    ((_ to_fp 11 53) x0_ack!3622))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3619)
                           ((_ to_fp 11 53) y1_ack!3618))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3616)
                                   ((_ to_fp 11 53) x1_ack!3615)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3618)
                           ((_ to_fp 11 53) y0_ack!3617))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3615)
                                   ((_ to_fp 11 53) x0_ack!3622)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3616)
                                   ((_ to_fp 11 53) x1_ack!3615))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3615)
                                   ((_ to_fp 11 53) x0_ack!3622))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3615)
                                   ((_ to_fp 11 53) x0_ack!3622))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!3618)
                                   ((_ to_fp 11 53) y0_ack!3617))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3615)
                                   ((_ to_fp 11 53) x0_ack!3622)))
                   a!5)))
  (FPCHECK_FMUL_OVERFLOW #x3fe0000000000000 a!6))))))

(check-sat)
(exit)
