(declare-fun limit_ack!6650 () (_ BitVec 64))
(declare-fun a_ack!6651 () (_ BitVec 64))
(declare-fun b_ack!6646 () (_ BitVec 64))
(declare-fun epsabs_ack!6648 () (_ BitVec 64))
(declare-fun epsrel_ack!6649 () (_ BitVec 64))
(declare-fun c_ack!6647 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!6650)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!6646) ((_ to_fp 11 53) a_ack!6651)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6648) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6649)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6649)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6647) ((_ to_fp 11 53) a_ack!6651))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6647) ((_ to_fp 11 53) b_ack!6646))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!6647))
                   ((_ to_fp 11 53) a_ack!6651))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!6646))
                 ((_ to_fp 11 53) b_ack!6646))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!6647))
                   ((_ to_fp 11 53) a_ack!6651))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!6646)))
         ((_ to_fp 11 53) b_ack!6646))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6647))
                           ((_ to_fp 11 53) a_ack!6651))
                   ((_ to_fp 11 53) b_ack!6646))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6651)
                                   ((_ to_fp 11 53) b_ack!6646))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!6646)
                           ((_ to_fp 11 53) a_ack!6651))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6651)
                                   ((_ to_fp 11 53) b_ack!6646)))
                   ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x1f8701ea33d39961)))
      (a!5 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x1f9ddc59a55733d2))))
(let ((a!4 (fp.abs (fp.div roundNearestTiesToEven
                           a!3
                           (fp.sub roundNearestTiesToEven
                                   (fp.sub roundNearestTiesToEven a!1 a!2)
                                   ((_ to_fp 11 53) c_ack!6647)))))
      (a!6 (fp.abs (fp.div roundNearestTiesToEven
                           a!5
                           (fp.sub roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!1 a!2)
                                   ((_ to_fp 11 53) c_ack!6647))))))
  (FPCHECK_FADD_ACCURACY a!4 a!6)))))

(check-sat)
(exit)
