(declare-fun x1_ack!2791 () (_ BitVec 64))
(declare-fun x0_ack!2798 () (_ BitVec 64))
(declare-fun x2_ack!2792 () (_ BitVec 64))
(declare-fun b_ack!2797 () (_ BitVec 64))
(declare-fun a_ack!2796 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2793 () (_ BitVec 64))
(declare-fun y1_ack!2794 () (_ BitVec 64))
(declare-fun y2_ack!2795 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2798) ((_ to_fp 11 53) x1_ack!2791)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2791) ((_ to_fp 11 53) x2_ack!2792)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2791)
                       ((_ to_fp 11 53) x0_ack!2798))
               ((_ to_fp 11 53) x0_ack!2798))
       ((_ to_fp 11 53) x1_ack!2791)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2791)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2791)
                       ((_ to_fp 11 53) x0_ack!2798)))
       ((_ to_fp 11 53) x0_ack!2798)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2792)
                       ((_ to_fp 11 53) x1_ack!2791))
               ((_ to_fp 11 53) x1_ack!2791))
       ((_ to_fp 11 53) x2_ack!2792)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2792)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2792)
                       ((_ to_fp 11 53) x1_ack!2791)))
       ((_ to_fp 11 53) x1_ack!2791)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2791)
                    ((_ to_fp 11 53) x0_ack!2798))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2792)
                    ((_ to_fp 11 53) x1_ack!2791))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2796) ((_ to_fp 11 53) b_ack!2797))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2796) ((_ to_fp 11 53) x0_ack!2798))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2797) ((_ to_fp 11 53) x2_ack!2792))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2796) ((_ to_fp 11 53) b_ack!2797))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2796) ((_ to_fp 11 53) x0_ack!2798))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2796) ((_ to_fp 11 53) x1_ack!2791))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2797) ((_ to_fp 11 53) x0_ack!2798))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2797) ((_ to_fp 11 53) x1_ack!2791)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2791) ((_ to_fp 11 53) b_ack!2797))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2791)
                    ((_ to_fp 11 53) x0_ack!2798))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2792)
                    ((_ to_fp 11 53) x1_ack!2791))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2795)
                           ((_ to_fp 11 53) y1_ack!2794))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2792)
                                   ((_ to_fp 11 53) x1_ack!2791)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2794)
                           ((_ to_fp 11 53) y0_ack!2793))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2791)
                                   ((_ to_fp 11 53) x0_ack!2798)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2792)
                                   ((_ to_fp 11 53) x1_ack!2791))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2791)
                                   ((_ to_fp 11 53) x0_ack!2798)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2791)
                                   ((_ to_fp 11 53) x1_ack!2791))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2791)
                                   ((_ to_fp 11 53) x1_ack!2791)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2797)
                                   ((_ to_fp 11 53) x1_ack!2791))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2797)
                                   ((_ to_fp 11 53) x1_ack!2791))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2792)
                                   ((_ to_fp 11 53) x1_ack!2791))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           a!5)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2791)
                                   ((_ to_fp 11 53) x1_ack!2791))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2797)
                                   ((_ to_fp 11 53) x1_ack!2791))))))
  (FPCHECK_FMUL_UNDERFLOW a!6 a!7))))))

(check-sat)
(exit)
