(declare-fun limit_ack!5486 () (_ BitVec 64))
(declare-fun a_ack!5487 () (_ BitVec 64))
(declare-fun b_ack!5482 () (_ BitVec 64))
(declare-fun epsabs_ack!5484 () (_ BitVec 64))
(declare-fun epsrel_ack!5485 () (_ BitVec 64))
(declare-fun c_ack!5483 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!5486)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!5482) ((_ to_fp 11 53) a_ack!5487)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!5484) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5485)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5485)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5483) ((_ to_fp 11 53) a_ack!5487))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5483) ((_ to_fp 11 53) b_ack!5482))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5483))
                   ((_ to_fp 11 53) a_ack!5487))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!5482))
                 ((_ to_fp 11 53) b_ack!5482))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5483))
                   ((_ to_fp 11 53) a_ack!5487))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!5482)))
         ((_ to_fp 11 53) b_ack!5482))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!5483))
                           ((_ to_fp 11 53) a_ack!5487))
                   ((_ to_fp 11 53) b_ack!5482))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5487)
                                   ((_ to_fp 11 53) b_ack!5482))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5482)
                           ((_ to_fp 11 53) a_ack!5487))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5487)
                                   ((_ to_fp 11 53) b_ack!5482)))
                   ((_ to_fp 11 53) #x3fee5f178e7c6229))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x1f746b175301848d)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x1f9f9719f460e766))))
  (FPCHECK_FADD_OVERFLOW
    (fp.div roundNearestTiesToEven
            a!3
            (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven a!1 a!2)
                    ((_ to_fp 11 53) c_ack!5483)))
    (fp.div roundNearestTiesToEven
            a!4
            (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!1 a!2)
                    ((_ to_fp 11 53) c_ack!5483)))))))

(check-sat)
(exit)
