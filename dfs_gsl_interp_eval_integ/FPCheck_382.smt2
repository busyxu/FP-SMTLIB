(declare-fun x1_ack!4675 () (_ BitVec 64))
(declare-fun x0_ack!4682 () (_ BitVec 64))
(declare-fun x2_ack!4676 () (_ BitVec 64))
(declare-fun b_ack!4681 () (_ BitVec 64))
(declare-fun a_ack!4680 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!4677 () (_ BitVec 64))
(declare-fun y1_ack!4678 () (_ BitVec 64))
(declare-fun y2_ack!4679 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4682) ((_ to_fp 11 53) x1_ack!4675)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4675) ((_ to_fp 11 53) x2_ack!4676)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4675)
                       ((_ to_fp 11 53) x0_ack!4682))
               ((_ to_fp 11 53) x0_ack!4682))
       ((_ to_fp 11 53) x1_ack!4675)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4675)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4675)
                       ((_ to_fp 11 53) x0_ack!4682)))
       ((_ to_fp 11 53) x0_ack!4682)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4676)
                       ((_ to_fp 11 53) x1_ack!4675))
               ((_ to_fp 11 53) x1_ack!4675))
       ((_ to_fp 11 53) x2_ack!4676)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4676)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4676)
                       ((_ to_fp 11 53) x1_ack!4675)))
       ((_ to_fp 11 53) x1_ack!4675)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4675)
                    ((_ to_fp 11 53) x0_ack!4682))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4676)
                    ((_ to_fp 11 53) x1_ack!4675))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4680) ((_ to_fp 11 53) b_ack!4681))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4680) ((_ to_fp 11 53) x0_ack!4682))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4681) ((_ to_fp 11 53) x2_ack!4676))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4680) ((_ to_fp 11 53) b_ack!4681))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4680) ((_ to_fp 11 53) x0_ack!4682))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4680) ((_ to_fp 11 53) x1_ack!4675)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4675) ((_ to_fp 11 53) a_ack!4680))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4681) ((_ to_fp 11 53) x1_ack!4675))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4681) ((_ to_fp 11 53) x2_ack!4676)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4676)
                    ((_ to_fp 11 53) x1_ack!4675))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4679)
                           ((_ to_fp 11 53) y1_ack!4678))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4676)
                                   ((_ to_fp 11 53) x1_ack!4675)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4678)
                           ((_ to_fp 11 53) y0_ack!4677))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4675)
                                   ((_ to_fp 11 53) x0_ack!4682)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4676)
                                   ((_ to_fp 11 53) x1_ack!4675))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4675)
                                   ((_ to_fp 11 53) x0_ack!4682))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4676)
                    ((_ to_fp 11 53) x1_ack!4675))
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!4))
    #x4008000000000000))))

(check-sat)
(exit)
