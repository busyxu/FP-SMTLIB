(declare-fun x_ack!9251 () (_ BitVec 64))
(declare-fun nu1_ack!9249 () (_ BitVec 64))
(declare-fun nu2_ack!9250 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!9251) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!9251) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!9251) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!9251) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!9249) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!9250) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!9249) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!9250) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!9249) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) nu2_ack!9250) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) nu2_ack!9250) (CF_floor nu2_ack!9250))
                  #x00000001
                  #x00000000))))
  (not (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!9249) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!9250) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!9249)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) nu1_ack!9249)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!9249)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!9249)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!9249)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!9249)
                       ((_ to_fp 11 53) #x4000000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!9249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010d666dada6aa8))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!9249)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x4010d666dada6aa8))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!9249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010d666dada6aa8))
                   ((_ to_fp 11 53) #x4010d666dada6aa8))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) nu1_ack!9249)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!9249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!9249)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!9249)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (FPCHECK_FMUL_ACCURACY
    a!1
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) nu1_ack!9249)
            ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
