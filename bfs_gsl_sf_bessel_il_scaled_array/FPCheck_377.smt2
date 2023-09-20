(declare-fun b_ack!1329 () (_ BitVec 64))
(declare-fun a_ack!1330 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1329) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1329) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!1330) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1329) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!1330)))
(assert (not (= #x00000000 a_ack!1330)))
(assert (= #x00000001 a_ack!1330))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1329) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1329))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1329))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc000000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!1329))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1329)
                    ((_ to_fp 11 53) b_ack!1329)))
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1))))

(check-sat)
(exit)
