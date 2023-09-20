(declare-fun limit_ack!4844 () (_ BitVec 64))
(declare-fun a_ack!4845 () (_ BitVec 64))
(declare-fun b_ack!4840 () (_ BitVec 64))
(declare-fun epsabs_ack!4842 () (_ BitVec 64))
(declare-fun epsrel_ack!4843 () (_ BitVec 64))
(declare-fun c_ack!4841 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!4844)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4840) ((_ to_fp 11 53) a_ack!4845))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4842) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4843)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4843)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4841) ((_ to_fp 11 53) a_ack!4845))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4841) ((_ to_fp 11 53) b_ack!4840))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4841))
                   ((_ to_fp 11 53) b_ack!4840))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!4845))
                 ((_ to_fp 11 53) a_ack!4845))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4841))
                   ((_ to_fp 11 53) b_ack!4840))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!4845)))
         ((_ to_fp 11 53) a_ack!4845))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4841))
                           ((_ to_fp 11 53) b_ack!4840))
                   ((_ to_fp 11 53) a_ack!4845))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!4840)
                               ((_ to_fp 11 53) a_ack!4845))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4841))
                           ((_ to_fp 11 53) b_ack!4840))
                   ((_ to_fp 11 53) a_ack!4845))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4840)
                                   ((_ to_fp 11 53) a_ack!4845))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4845)
                           ((_ to_fp 11 53) b_ack!4840)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x1f86a09e667f3bcd))))
  (FPCHECK_FMUL_ACCURACY
    (fp.div roundNearestTiesToEven
            a!2
            (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!4841)))
    #x3fdabfd7e03c2fa6))))

(check-sat)
(exit)
