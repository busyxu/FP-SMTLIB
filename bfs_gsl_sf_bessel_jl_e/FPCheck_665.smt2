(declare-fun a_ack!2104 () (_ BitVec 32))
(declare-fun b_ack!2103 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_acos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!2104 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2103) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2103) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!2104)))
(assert (not (= #x00000001 a_ack!2104)))
(assert (not (= #x00000002 a_ack!2104)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2104)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!2103)
                      ((_ to_fp 11 53) b_ack!2103))
              a!1))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd (bvmul a_ack!2104 a_ack!2104) a_ack!2104))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) b_ack!2103))
              a!1))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2104)
       ((_ to_fp 11 53) #x407965fea53d6e3a)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2103) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2104)
                     ((_ to_fp 11 53) #x3fe0000000000000))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2103)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2104)
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!2103)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!2104)
                                  ((_ to_fp 11 53) #x3fe0000000000000)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!2103)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2104)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x7ff8000000000001))
    (CF_acos (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     a!1)))))

(check-sat)
(exit)
