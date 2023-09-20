(declare-fun b_ack!1999 () (_ BitVec 64))
(declare-fun a_ack!2000 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1999) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2000) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1999) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1999) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2000) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1999) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2000) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1999) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2000) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1999) ((_ to_fp 11 53) #x3ff8000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2000) ((_ to_fp 11 53) #x4034000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2000)
                                   ((_ to_fp 11 53) a_ack!2000))
                           ((_ to_fp 11 53) #x3fd0000000000000))))
      (a!2 (ite (fp.geq (fp.sub roundNearestTiesToEven
                                ((_ to_fp 11 53) #x3ff0000000000000)
                                ((_ to_fp 11 53) b_ack!1999))
                        ((_ to_fp 11 53) #x0000000000000000))
                #x00000001
                #xffffffff)))
  (FPCHECK_FMUL_ACCURACY a!1 ((_ to_fp 11 53) roundNearestTiesToEven a!2))))

(check-sat)
(exit)
