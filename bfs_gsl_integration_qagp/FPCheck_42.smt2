(declare-fun limit_ack!713 () (_ BitVec 64))
(declare-fun epsabs_ack!718 () (_ BitVec 64))
(declare-fun a_ack!719 () (_ BitVec 64))
(declare-fun x1_ack!714 () (_ BitVec 64))
(declare-fun x2_ack!715 () (_ BitVec 64))
(declare-fun x3_ack!716 () (_ BitVec 64))
(declare-fun b_ack!717 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!713)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!718)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!714) ((_ to_fp 11 53) a_ack!719))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!715) ((_ to_fp 11 53) x1_ack!714))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!716) ((_ to_fp 11 53) x2_ack!715))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!717) ((_ to_fp 11 53) x3_ack!716))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!719)
                                   ((_ to_fp 11 53) x1_ack!714))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!714)
                                   ((_ to_fp 11 53) a_ack!719)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!719)
                    ((_ to_fp 11 53) x1_ack!714)))
    a!1)))

(check-sat)
(exit)
