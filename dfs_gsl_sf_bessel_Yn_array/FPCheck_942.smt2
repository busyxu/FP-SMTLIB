(declare-fun a_ack!4361 () (_ BitVec 32))
(declare-fun b_ack!4359 () (_ BitVec 32))
(declare-fun c_ack!4360 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_acos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!4361 #x00000000)))
(assert (not (bvslt b_ack!4359 a_ack!4361)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4360) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!4361 #x00000000)))
(assert (not (= #x00000000 a_ack!4361)))
(assert (not (= #x00000001 a_ack!4361)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4360) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4360) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) c_ack!4360))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!4361 a_ack!4361))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (bvslt #x00000032 a_ack!4361))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4360) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4361)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4360)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4361))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4360)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4361))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (CF_acos (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4360)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!4361))))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4360)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4361))
            ((_ to_fp 11 53) #x7ff8000000000001))
    a!1)))

(check-sat)
(exit)
