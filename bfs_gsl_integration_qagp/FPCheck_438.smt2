(declare-fun limit_ack!6614 () (_ BitVec 64))
(declare-fun epsabs_ack!6619 () (_ BitVec 64))
(declare-fun a_ack!6620 () (_ BitVec 64))
(declare-fun x1_ack!6615 () (_ BitVec 64))
(declare-fun x2_ack!6616 () (_ BitVec 64))
(declare-fun x3_ack!6617 () (_ BitVec 64))
(declare-fun b_ack!6618 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!6614)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6619)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6615) ((_ to_fp 11 53) a_ack!6620))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6616) ((_ to_fp 11 53) x1_ack!6615))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6617) ((_ to_fp 11 53) x2_ack!6616))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6618) ((_ to_fp 11 53) x3_ack!6617))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6620)
                                   ((_ to_fp 11 53) x1_ack!6615))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!6620)
                           ((_ to_fp 11 53) x1_ack!6615))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6615)
                                   ((_ to_fp 11 53) a_ack!6620)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (FPCHECK_FADD_ACCURACY a!3 a!4))))

(check-sat)
(exit)
