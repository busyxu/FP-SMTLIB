(declare-fun x1_ack!5960 () (_ BitVec 64))
(declare-fun x0_ack!5967 () (_ BitVec 64))
(declare-fun x2_ack!5961 () (_ BitVec 64))
(declare-fun b_ack!5966 () (_ BitVec 64))
(declare-fun a_ack!5965 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!5962 () (_ BitVec 64))
(declare-fun y1_ack!5963 () (_ BitVec 64))
(declare-fun y2_ack!5964 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5967) ((_ to_fp 11 53) x1_ack!5960)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5960) ((_ to_fp 11 53) x2_ack!5961)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5960)
                       ((_ to_fp 11 53) x0_ack!5967))
               ((_ to_fp 11 53) x0_ack!5967))
       ((_ to_fp 11 53) x1_ack!5960)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5960)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5960)
                       ((_ to_fp 11 53) x0_ack!5967)))
       ((_ to_fp 11 53) x0_ack!5967)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5961)
                       ((_ to_fp 11 53) x1_ack!5960))
               ((_ to_fp 11 53) x1_ack!5960))
       ((_ to_fp 11 53) x2_ack!5961)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5961)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5961)
                       ((_ to_fp 11 53) x1_ack!5960)))
       ((_ to_fp 11 53) x1_ack!5960)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5960)
                    ((_ to_fp 11 53) x0_ack!5967))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5961)
                    ((_ to_fp 11 53) x1_ack!5960))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5965) ((_ to_fp 11 53) b_ack!5966))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5965) ((_ to_fp 11 53) x0_ack!5967))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5966) ((_ to_fp 11 53) x2_ack!5961))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5965) ((_ to_fp 11 53) b_ack!5966))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5965) ((_ to_fp 11 53) x0_ack!5967))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5965) ((_ to_fp 11 53) x1_ack!5960)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5960) ((_ to_fp 11 53) a_ack!5965))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5966) ((_ to_fp 11 53) x1_ack!5960))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!5966) ((_ to_fp 11 53) x2_ack!5961))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5961)
                    ((_ to_fp 11 53) x1_ack!5960))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5964)
                           ((_ to_fp 11 53) y1_ack!5963))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5961)
                                   ((_ to_fp 11 53) x1_ack!5960)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5963)
                           ((_ to_fp 11 53) y0_ack!5962))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5960)
                                   ((_ to_fp 11 53) x0_ack!5967)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5961)
                                   ((_ to_fp 11 53) x1_ack!5960))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5960)
                                   ((_ to_fp 11 53) x0_ack!5967))))))
  (FPCHECK_FMUL_OVERFLOW
    #x4000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
