(declare-fun x1_ack!7889 () (_ BitVec 64))
(declare-fun x0_ack!7896 () (_ BitVec 64))
(declare-fun x2_ack!7890 () (_ BitVec 64))
(declare-fun b_ack!7895 () (_ BitVec 64))
(declare-fun a_ack!7894 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7891 () (_ BitVec 64))
(declare-fun y1_ack!7892 () (_ BitVec 64))
(declare-fun y2_ack!7893 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7896) ((_ to_fp 11 53) x1_ack!7889)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7889) ((_ to_fp 11 53) x2_ack!7890)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7889)
                       ((_ to_fp 11 53) x0_ack!7896))
               ((_ to_fp 11 53) x0_ack!7896))
       ((_ to_fp 11 53) x1_ack!7889)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7889)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7889)
                       ((_ to_fp 11 53) x0_ack!7896)))
       ((_ to_fp 11 53) x0_ack!7896)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7890)
                       ((_ to_fp 11 53) x1_ack!7889))
               ((_ to_fp 11 53) x1_ack!7889))
       ((_ to_fp 11 53) x2_ack!7890)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7890)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7890)
                       ((_ to_fp 11 53) x1_ack!7889)))
       ((_ to_fp 11 53) x1_ack!7889)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7889)
                    ((_ to_fp 11 53) x0_ack!7896))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7890)
                    ((_ to_fp 11 53) x1_ack!7889))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7894) ((_ to_fp 11 53) b_ack!7895))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7894) ((_ to_fp 11 53) x0_ack!7896))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7895) ((_ to_fp 11 53) x2_ack!7890))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7894) ((_ to_fp 11 53) b_ack!7895))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7894) ((_ to_fp 11 53) x0_ack!7896))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7894) ((_ to_fp 11 53) x1_ack!7889))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7895) ((_ to_fp 11 53) x0_ack!7896)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7889)
                    ((_ to_fp 11 53) x0_ack!7896))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7893)
                           ((_ to_fp 11 53) y1_ack!7892))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7890)
                                   ((_ to_fp 11 53) x1_ack!7889)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7892)
                           ((_ to_fp 11 53) y0_ack!7891))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7889)
                                   ((_ to_fp 11 53) x0_ack!7896)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7890)
                                   ((_ to_fp 11 53) x1_ack!7889))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7889)
                                   ((_ to_fp 11 53) x0_ack!7896))))))
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
                                   ((_ to_fp 11 53) x1_ack!7889)
                                   ((_ to_fp 11 53) x0_ack!7896))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!7892)
                                   ((_ to_fp 11 53) y0_ack!7891))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7889)
                                   ((_ to_fp 11 53) x0_ack!7896)))
                   a!5)))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fe0000000000000) a!6)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!7894)
                    ((_ to_fp 11 53) x0_ack!7896))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!7895)
                    ((_ to_fp 11 53) x0_ack!7896)))))))))

(check-sat)
(exit)
