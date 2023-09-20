(declare-fun x1_ack!2105 () (_ BitVec 64))
(declare-fun x0_ack!2112 () (_ BitVec 64))
(declare-fun x2_ack!2106 () (_ BitVec 64))
(declare-fun b_ack!2111 () (_ BitVec 64))
(declare-fun a_ack!2110 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!2107 () (_ BitVec 64))
(declare-fun y1_ack!2108 () (_ BitVec 64))
(declare-fun y2_ack!2109 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2112) ((_ to_fp 11 53) x1_ack!2105)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2105) ((_ to_fp 11 53) x2_ack!2106)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2105)
                       ((_ to_fp 11 53) x0_ack!2112))
               ((_ to_fp 11 53) x0_ack!2112))
       ((_ to_fp 11 53) x1_ack!2105)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2105)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2105)
                       ((_ to_fp 11 53) x0_ack!2112)))
       ((_ to_fp 11 53) x0_ack!2112)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2106)
                       ((_ to_fp 11 53) x1_ack!2105))
               ((_ to_fp 11 53) x1_ack!2105))
       ((_ to_fp 11 53) x2_ack!2106)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2106)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2106)
                       ((_ to_fp 11 53) x1_ack!2105)))
       ((_ to_fp 11 53) x1_ack!2105)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2105)
                    ((_ to_fp 11 53) x0_ack!2112))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2106)
                    ((_ to_fp 11 53) x1_ack!2105))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2110) ((_ to_fp 11 53) b_ack!2111))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2110) ((_ to_fp 11 53) x0_ack!2112))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2111) ((_ to_fp 11 53) x2_ack!2106))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2110) ((_ to_fp 11 53) b_ack!2111))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2110) ((_ to_fp 11 53) x0_ack!2112))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2110) ((_ to_fp 11 53) x1_ack!2105)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2105) ((_ to_fp 11 53) a_ack!2110))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2111) ((_ to_fp 11 53) x1_ack!2105))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2111) ((_ to_fp 11 53) x2_ack!2106))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2106)
                    ((_ to_fp 11 53) x1_ack!2105))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2109)
                           ((_ to_fp 11 53) y1_ack!2108))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2106)
                                   ((_ to_fp 11 53) x1_ack!2105)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2108)
                           ((_ to_fp 11 53) y0_ack!2107))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2105)
                                   ((_ to_fp 11 53) x0_ack!2112)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2106)
                                   ((_ to_fp 11 53) x1_ack!2105))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2105)
                                   ((_ to_fp 11 53) x0_ack!2112))))))
  (FPCHECK_FMUL_ACCURACY
    #x4000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
