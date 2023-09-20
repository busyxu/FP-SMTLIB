(declare-fun b_ack!1116 () (_ BitVec 64))
(declare-fun a_ack!1117 () (_ BitVec 32))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1116) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1116) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!1117 #x00000000)))
(assert (not (= #x00000000 a_ack!1117)))
(assert (not (= #x00000001 a_ack!1117)))
(assert (bvslt #x000186a0 a_ack!1117))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1116) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.lt (CF_acos b_ack!1116) ((_ to_fp 11 53) #x3f20000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (CF_acos b_ack!1116)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1116)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FDIV_INVALID
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fc0000000000000) a!1)
    (fp.mul roundNearestTiesToEven (CF_acos b_ack!1116) (CF_acos b_ack!1116)))))

(check-sat)
(exit)
