(declare-fun limit_ack!3036 () (_ BitVec 64))
(declare-fun a_ack!3037 () (_ BitVec 64))
(declare-fun b_ack!3033 () (_ BitVec 64))
(declare-fun epsabs_ack!3035 () (_ BitVec 64))
(declare-fun c_ack!3034 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!3036)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!3033) ((_ to_fp 11 53) a_ack!3037)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3035)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3034) ((_ to_fp 11 53) a_ack!3037))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3034) ((_ to_fp 11 53) b_ack!3033))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3034))
                   ((_ to_fp 11 53) a_ack!3037))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!3033))
                 ((_ to_fp 11 53) b_ack!3033))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!3034))
                   ((_ to_fp 11 53) a_ack!3037))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!3033)))
         ((_ to_fp 11 53) b_ack!3033))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!3034))
                           ((_ to_fp 11 53) a_ack!3037))
                   ((_ to_fp 11 53) b_ack!3033))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3037)
                                   ((_ to_fp 11 53) b_ack!3033))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))

(check-sat)
(exit)
