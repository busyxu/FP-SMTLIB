(declare-fun x1_ack!2652 () (_ BitVec 64))
(declare-fun x0_ack!2659 () (_ BitVec 64))
(declare-fun x2_ack!2653 () (_ BitVec 64))
(declare-fun b_ack!2658 () (_ BitVec 64))
(declare-fun a_ack!2657 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2654 () (_ BitVec 64))
(declare-fun y1_ack!2655 () (_ BitVec 64))
(declare-fun y2_ack!2656 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2659) ((_ to_fp 11 53) x1_ack!2652)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2652) ((_ to_fp 11 53) x2_ack!2653)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2652)
                       ((_ to_fp 11 53) x0_ack!2659))
               ((_ to_fp 11 53) x0_ack!2659))
       ((_ to_fp 11 53) x1_ack!2652)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2652)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2652)
                       ((_ to_fp 11 53) x0_ack!2659)))
       ((_ to_fp 11 53) x0_ack!2659)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2653)
                       ((_ to_fp 11 53) x1_ack!2652))
               ((_ to_fp 11 53) x1_ack!2652))
       ((_ to_fp 11 53) x2_ack!2653)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2653)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2653)
                       ((_ to_fp 11 53) x1_ack!2652)))
       ((_ to_fp 11 53) x1_ack!2652)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2652)
                    ((_ to_fp 11 53) x0_ack!2659))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2653)
                    ((_ to_fp 11 53) x1_ack!2652))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2657) ((_ to_fp 11 53) b_ack!2658))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2657) ((_ to_fp 11 53) x0_ack!2659))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2658) ((_ to_fp 11 53) x2_ack!2653))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2657) ((_ to_fp 11 53) b_ack!2658))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2657) ((_ to_fp 11 53) x0_ack!2659))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2657) ((_ to_fp 11 53) x1_ack!2652))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2658) ((_ to_fp 11 53) x0_ack!2659))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2658) ((_ to_fp 11 53) x1_ack!2652)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2652) ((_ to_fp 11 53) b_ack!2658))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2652)
                    ((_ to_fp 11 53) x0_ack!2659))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2653)
                    ((_ to_fp 11 53) x1_ack!2652))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2656)
                           ((_ to_fp 11 53) y1_ack!2655))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2653)
                                   ((_ to_fp 11 53) x1_ack!2652)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2655)
                           ((_ to_fp 11 53) y0_ack!2654))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2652)
                                   ((_ to_fp 11 53) x0_ack!2659)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2653)
                                   ((_ to_fp 11 53) x1_ack!2652))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2652)
                                   ((_ to_fp 11 53) x0_ack!2659))))))
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
                                   ((_ to_fp 11 53) x2_ack!2653)
                                   ((_ to_fp 11 53) x1_ack!2652))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fd0000000000000) a!5)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2652)
                    ((_ to_fp 11 53) x1_ack!2652))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2658)
                    ((_ to_fp 11 53) x1_ack!2652))))))))

(check-sat)
(exit)
