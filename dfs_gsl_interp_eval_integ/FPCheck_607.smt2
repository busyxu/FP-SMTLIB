(declare-fun x1_ack!7713 () (_ BitVec 64))
(declare-fun x0_ack!7720 () (_ BitVec 64))
(declare-fun x2_ack!7714 () (_ BitVec 64))
(declare-fun b_ack!7719 () (_ BitVec 64))
(declare-fun a_ack!7718 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7715 () (_ BitVec 64))
(declare-fun y1_ack!7716 () (_ BitVec 64))
(declare-fun y2_ack!7717 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7720) ((_ to_fp 11 53) x1_ack!7713)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7713) ((_ to_fp 11 53) x2_ack!7714)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7713)
                       ((_ to_fp 11 53) x0_ack!7720))
               ((_ to_fp 11 53) x0_ack!7720))
       ((_ to_fp 11 53) x1_ack!7713)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7713)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7713)
                       ((_ to_fp 11 53) x0_ack!7720)))
       ((_ to_fp 11 53) x0_ack!7720)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7714)
                       ((_ to_fp 11 53) x1_ack!7713))
               ((_ to_fp 11 53) x1_ack!7713))
       ((_ to_fp 11 53) x2_ack!7714)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7714)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7714)
                       ((_ to_fp 11 53) x1_ack!7713)))
       ((_ to_fp 11 53) x1_ack!7713)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7713)
                    ((_ to_fp 11 53) x0_ack!7720))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7714)
                    ((_ to_fp 11 53) x1_ack!7713))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7718) ((_ to_fp 11 53) b_ack!7719))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7718) ((_ to_fp 11 53) x0_ack!7720))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7719) ((_ to_fp 11 53) x2_ack!7714))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7718) ((_ to_fp 11 53) b_ack!7719))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7718) ((_ to_fp 11 53) x0_ack!7720))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7718) ((_ to_fp 11 53) x1_ack!7713))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7719) ((_ to_fp 11 53) x0_ack!7720)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7713)
                    ((_ to_fp 11 53) x0_ack!7720))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7717)
                           ((_ to_fp 11 53) y1_ack!7716))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7714)
                                   ((_ to_fp 11 53) x1_ack!7713)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7716)
                           ((_ to_fp 11 53) y0_ack!7715))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7713)
                                   ((_ to_fp 11 53) x0_ack!7720)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7714)
                                   ((_ to_fp 11 53) x1_ack!7713))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7713)
                                   ((_ to_fp 11 53) x0_ack!7720))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_ZERO
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7713)
                    ((_ to_fp 11 53) x0_ack!7720)))))))

(check-sat)
(exit)
