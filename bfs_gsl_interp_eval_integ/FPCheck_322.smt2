(declare-fun x1_ack!4034 () (_ BitVec 64))
(declare-fun x0_ack!4041 () (_ BitVec 64))
(declare-fun x2_ack!4035 () (_ BitVec 64))
(declare-fun b_ack!4040 () (_ BitVec 64))
(declare-fun a_ack!4039 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!4036 () (_ BitVec 64))
(declare-fun y1_ack!4037 () (_ BitVec 64))
(declare-fun y2_ack!4038 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4041) ((_ to_fp 11 53) x1_ack!4034)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4034) ((_ to_fp 11 53) x2_ack!4035)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4034)
                       ((_ to_fp 11 53) x0_ack!4041))
               ((_ to_fp 11 53) x0_ack!4041))
       ((_ to_fp 11 53) x1_ack!4034)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4034)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4034)
                       ((_ to_fp 11 53) x0_ack!4041)))
       ((_ to_fp 11 53) x0_ack!4041)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4035)
                       ((_ to_fp 11 53) x1_ack!4034))
               ((_ to_fp 11 53) x1_ack!4034))
       ((_ to_fp 11 53) x2_ack!4035)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4035)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4035)
                       ((_ to_fp 11 53) x1_ack!4034)))
       ((_ to_fp 11 53) x1_ack!4034)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4034)
                    ((_ to_fp 11 53) x0_ack!4041))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4035)
                    ((_ to_fp 11 53) x1_ack!4034))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4039) ((_ to_fp 11 53) b_ack!4040))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4039) ((_ to_fp 11 53) x0_ack!4041))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4040) ((_ to_fp 11 53) x2_ack!4035))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4039) ((_ to_fp 11 53) b_ack!4040))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4039) ((_ to_fp 11 53) x0_ack!4041))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4039) ((_ to_fp 11 53) x1_ack!4034))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4040) ((_ to_fp 11 53) x0_ack!4041))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4040) ((_ to_fp 11 53) x1_ack!4034))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4034)
                    ((_ to_fp 11 53) x0_ack!4041))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4038)
                           ((_ to_fp 11 53) y1_ack!4037))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4035)
                                   ((_ to_fp 11 53) x1_ack!4034)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4037)
                           ((_ to_fp 11 53) y0_ack!4036))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4034)
                                   ((_ to_fp 11 53) x0_ack!4041)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4035)
                                   ((_ to_fp 11 53) x1_ack!4034))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4034)
                                   ((_ to_fp 11 53) x0_ack!4041))))))
  (FPCHECK_FSUB_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
