(declare-fun x_ack!921 () (_ BitVec 64))
(declare-fun nu1_ack!919 () (_ BitVec 64))
(declare-fun nu2_ack!920 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!921) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!921) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!919) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!920) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!921) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!921) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!921) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!921) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!921) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!920) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!919) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!921) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!921) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!921) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (and (fp.eq ((_ to_fp 11 53) nu2_ack!920)
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) nu2_ack!920)
                               ((_ to_fp 11 53) nu1_ack!919))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (fp.lt ((_ to_fp 11 53) x_ack!921) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!920)
                                   ((_ to_fp 11 53) nu1_ack!919))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!920)
                                   ((_ to_fp 11 53) nu1_ack!919))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) nu2_ack!920)
                     ((_ to_fp 11 53) nu1_ack!919))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!920)
                    ((_ to_fp 11 53) nu1_ack!919))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu2_ack!920)
                                  ((_ to_fp 11 53) nu1_ack!919)))
                  ((_ to_fp 11 53) #x3f947ae147ae147b))))
  (not a!1)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!920)
               ((_ to_fp 11 53) nu1_ack!919))
       ((_ to_fp 11 53) #xc3045f306dc9c883)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x400921fb54442d18
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) nu2_ack!920)
                  ((_ to_fp 11 53) nu1_ack!919)))))

(check-sat)
(exit)
