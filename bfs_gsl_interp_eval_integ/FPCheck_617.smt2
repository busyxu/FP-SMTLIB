(declare-fun x1_ack!7740 () (_ BitVec 64))
(declare-fun x0_ack!7747 () (_ BitVec 64))
(declare-fun x2_ack!7741 () (_ BitVec 64))
(declare-fun b_ack!7746 () (_ BitVec 64))
(declare-fun a_ack!7745 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7742 () (_ BitVec 64))
(declare-fun y1_ack!7743 () (_ BitVec 64))
(declare-fun y2_ack!7744 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7747) ((_ to_fp 11 53) x1_ack!7740)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7740) ((_ to_fp 11 53) x2_ack!7741)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7740)
                       ((_ to_fp 11 53) x0_ack!7747))
               ((_ to_fp 11 53) x0_ack!7747))
       ((_ to_fp 11 53) x1_ack!7740)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7740)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7740)
                       ((_ to_fp 11 53) x0_ack!7747)))
       ((_ to_fp 11 53) x0_ack!7747)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7741)
                       ((_ to_fp 11 53) x1_ack!7740))
               ((_ to_fp 11 53) x1_ack!7740))
       ((_ to_fp 11 53) x2_ack!7741)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7741)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7741)
                       ((_ to_fp 11 53) x1_ack!7740)))
       ((_ to_fp 11 53) x1_ack!7740)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7740)
                    ((_ to_fp 11 53) x0_ack!7747))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7741)
                    ((_ to_fp 11 53) x1_ack!7740))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7745) ((_ to_fp 11 53) b_ack!7746))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7745) ((_ to_fp 11 53) x0_ack!7747))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7746) ((_ to_fp 11 53) x2_ack!7741))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7745) ((_ to_fp 11 53) b_ack!7746))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7745) ((_ to_fp 11 53) x0_ack!7747))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7745) ((_ to_fp 11 53) x1_ack!7740))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7746) ((_ to_fp 11 53) x0_ack!7747))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7746) ((_ to_fp 11 53) x1_ack!7740)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7740) ((_ to_fp 11 53) b_ack!7746))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7740)
                    ((_ to_fp 11 53) x0_ack!7747))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7741)
                    ((_ to_fp 11 53) x1_ack!7740))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7744)
                           ((_ to_fp 11 53) y1_ack!7743))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7741)
                                   ((_ to_fp 11 53) x1_ack!7740)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7743)
                           ((_ to_fp 11 53) y0_ack!7742))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7740)
                                   ((_ to_fp 11 53) x0_ack!7747)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7741)
                                   ((_ to_fp 11 53) x1_ack!7740))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7740)
                                   ((_ to_fp 11 53) x0_ack!7747)))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7740)
                                   ((_ to_fp 11 53) x1_ack!7740))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7740)
                                   ((_ to_fp 11 53) x1_ack!7740)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7746)
                                   ((_ to_fp 11 53) x1_ack!7740))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7746)
                                   ((_ to_fp 11 53) x1_ack!7740))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7740)
                                   ((_ to_fp 11 53) x1_ack!7740))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7746)
                                   ((_ to_fp 11 53) x1_ack!7740))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!7741)
                           ((_ to_fp 11 53) x1_ack!7740))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!4)))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!7744)
                                   ((_ to_fp 11 53) y1_ack!7743))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7741)
                                   ((_ to_fp 11 53) x1_ack!7740)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7740)
                                   ((_ to_fp 11 53) x1_ack!7740))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7746)
                                   ((_ to_fp 11 53) x1_ack!7740))))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y1_ack!7743) a!7)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd5555555555555)
                    a!4)
            a!9))))))))

(check-sat)
(exit)
