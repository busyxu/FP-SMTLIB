(declare-fun a_ack!2996 () (_ BitVec 64))
(declare-fun c_ack!2995 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2996) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2995) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2995)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2995)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x40142eb8f3a779b9))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2995)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x40142eb8f3a779b9))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2995)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x40142eb8f3a779b9))
                   ((_ to_fp 11 53) #x40142eb8f3a779b9))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) c_ack!2995)
                 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa0163058fbcc17)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2995)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf9a901651b2b525)
                         a!1)
                 ((_ to_fp 11 53) #xbf9a901651b2b525))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa0163058fbcc17)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2995)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf9a901651b2b525)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xbf9a901651b2b525))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf9a901651b2b525)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa0163058fbcc17)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2995)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f93c8855b9a90b0)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2995)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x3f93c8855b9a90b0))
         (fp.mul roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) c_ack!2995)
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 a!1)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf9a901651b2b525)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa0163058fbcc17)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2995)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f93c8855b9a90b0)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2995)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2995)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1))))
  (fp.eq a!3 ((_ to_fp 11 53) #x3f93c8855b9a90b0))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf9a901651b2b525)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fa0163058fbcc17)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2995)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f93c8855b9a90b0)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2995)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf886be8ce175c95)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2995)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!2))))
  (FPCHECK_FADD_ACCURACY
    #x3f7399c6b2fe3c2e
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!2995)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            a!3))))))

(check-sat)
(exit)
