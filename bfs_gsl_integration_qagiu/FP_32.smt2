(declare-fun limit_ack!836 () (_ BitVec 64))
(declare-fun epsabs_ack!834 () (_ BitVec 64))
(declare-fun epsrel_ack!835 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!837 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!836)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!834) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!835)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!835)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!837)
                                   ((_ to_fp 11 53) #x3f9abcb2bd7da4dd))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fc4aee469e6fcc6))
                           ((_ to_fp 11 53) #x3fef2f8bc73e3114))
                   ((_ to_fp 11 53) #x3fef2f8bc73e3114))))
(let ((a!3 (fp.eq (fp.mul roundNearestTiesToEven
                          a!2
                          ((_ to_fp 11 53) #x3fef2f8bc73e3114))
                  (fp.div roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x3fc4aee469e6fcc6))
                          ((_ to_fp 11 53) #x3fef2f8bc73e3114)))))
  (not a!3)))))
(assert (let ((a!1 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!837)
                                   ((_ to_fp 11 53) #x3f9abcb2bd7da4dd))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fc4aee469e6fcc6))
                           ((_ to_fp 11 53) #x3fef2f8bc73e3114))
                   ((_ to_fp 11 53) #x3fef2f8bc73e3114))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!837)
                                   ((_ to_fp 11 53) #x3f9abcb2bd7da4dd))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fc4aee469e6fcc6))
                           ((_ to_fp 11 53) #x3fef2f8bc73e3114))
                   ((_ to_fp 11 53) #x3fef2f8bc73e3114))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fc4aee469e6fcc6))
                           ((_ to_fp 11 53) #x3fef2f8bc73e3114))
                   a!2)))
  (fp.eq a!3 ((_ to_fp 11 53) #x3fef2f8bc73e3114))))))

(check-sat)
(exit)
