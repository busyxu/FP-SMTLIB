(declare-fun a_ack!1117 () (_ BitVec 32))
(declare-fun b_ack!1115 () (_ BitVec 32))
(declare-fun c_ack!1116 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!1117 #x00000000)))
(assert (not (bvslt b_ack!1115 a_ack!1117)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1116) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1117 #x00000000)))
(assert (not (= #x00000000 a_ack!1117)))
(assert (= #x00000001 a_ack!1117))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1116) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1116) ((_ to_fp 11 53) #x001922d0e5604189))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1116) ((_ to_fp 11 53) #x3e60000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!1116))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1116))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1116))
       ((_ to_fp 11 53) #x3e66a09e667f3bcd)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe45f306dc9c883)
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!1116))))))
  (FPCHECK_FMUL_UNDERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            ((_ to_fp 11 53) c_ack!1116)))))

(check-sat)
(exit)
