(declare-fun limit_ack!2912 () (_ BitVec 64))
(declare-fun a_ack!2913 () (_ BitVec 64))
(declare-fun b_ack!2908 () (_ BitVec 64))
(declare-fun epsabs_ack!2910 () (_ BitVec 64))
(declare-fun epsrel_ack!2911 () (_ BitVec 64))
(declare-fun c_ack!2909 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2912)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2908) ((_ to_fp 11 53) a_ack!2913))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!2910) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2911)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2911)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2909) ((_ to_fp 11 53) a_ack!2913))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2909) ((_ to_fp 11 53) b_ack!2908))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2909))
                   ((_ to_fp 11 53) b_ack!2908))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!2913))
                 ((_ to_fp 11 53) a_ack!2913))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!2909))
                   ((_ to_fp 11 53) b_ack!2908))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!2913)))
         ((_ to_fp 11 53) a_ack!2913))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!2909))
                           ((_ to_fp 11 53) b_ack!2908))
                   ((_ to_fp 11 53) a_ack!2913))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!2908)
                               ((_ to_fp 11 53) a_ack!2913))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!2909))
                           ((_ to_fp 11 53) b_ack!2908))
                   ((_ to_fp 11 53) a_ack!2913))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2908)
                                   ((_ to_fp 11 53) a_ack!2913))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!2913))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2908)
                  ((_ to_fp 11 53) a_ack!2913)))
  #x3fe6a09e667f3bcc))

(check-sat)
(exit)
