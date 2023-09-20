(declare-fun x1_ack!5106 () (_ BitVec 64))
(declare-fun x0_ack!5113 () (_ BitVec 64))
(declare-fun x2_ack!5107 () (_ BitVec 64))
(declare-fun b_ack!5112 () (_ BitVec 64))
(declare-fun a_ack!5111 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!5108 () (_ BitVec 64))
(declare-fun y1_ack!5109 () (_ BitVec 64))
(declare-fun y2_ack!5110 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5113) ((_ to_fp 11 53) x1_ack!5106)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5106) ((_ to_fp 11 53) x2_ack!5107)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5106)
                       ((_ to_fp 11 53) x0_ack!5113))
               ((_ to_fp 11 53) x0_ack!5113))
       ((_ to_fp 11 53) x1_ack!5106)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5106)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5106)
                       ((_ to_fp 11 53) x0_ack!5113)))
       ((_ to_fp 11 53) x0_ack!5113)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5107)
                       ((_ to_fp 11 53) x1_ack!5106))
               ((_ to_fp 11 53) x1_ack!5106))
       ((_ to_fp 11 53) x2_ack!5107)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5107)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5107)
                       ((_ to_fp 11 53) x1_ack!5106)))
       ((_ to_fp 11 53) x1_ack!5106)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5106)
                    ((_ to_fp 11 53) x0_ack!5113))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5107)
                    ((_ to_fp 11 53) x1_ack!5106))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5111) ((_ to_fp 11 53) b_ack!5112))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5111) ((_ to_fp 11 53) x0_ack!5113))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5112) ((_ to_fp 11 53) x2_ack!5107))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5111) ((_ to_fp 11 53) b_ack!5112))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5111) ((_ to_fp 11 53) x0_ack!5113))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5111) ((_ to_fp 11 53) x1_ack!5106)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5106) ((_ to_fp 11 53) a_ack!5111))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5112) ((_ to_fp 11 53) x1_ack!5106))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5112) ((_ to_fp 11 53) x2_ack!5107)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5107)
                    ((_ to_fp 11 53) x1_ack!5106))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5111)
                       ((_ to_fp 11 53) x1_ack!5106))
               ((_ to_fp 11 53) x1_ack!5106))
       ((_ to_fp 11 53) a_ack!5111)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5111)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5111)
                       ((_ to_fp 11 53) x1_ack!5106)))
       ((_ to_fp 11 53) x1_ack!5106)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5110)
                           ((_ to_fp 11 53) y1_ack!5109))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5107)
                                   ((_ to_fp 11 53) x1_ack!5106)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5109)
                           ((_ to_fp 11 53) y0_ack!5108))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5106)
                                   ((_ to_fp 11 53) x0_ack!5113)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5107)
                                   ((_ to_fp 11 53) x1_ack!5106))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5106)
                                   ((_ to_fp 11 53) x0_ack!5113))))))
  (FPCHECK_FMUL_OVERFLOW
    #x3fd5555555555555
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
