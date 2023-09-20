(declare-fun b_ack!996 () (_ BitVec 64))
(declare-fun a_ack!997 () (_ BitVec 32))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!996) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!996) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!997 #x00000000)))
(assert (not (= #x00000000 a_ack!997)))
(assert (not (= #x00000001 a_ack!997)))
(assert (bvslt #x000186a0 a_ack!997))
(assert (fp.lt ((_ to_fp 11 53) b_ack!996) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.lt (CF_acos b_ack!996) ((_ to_fp 11 53) #x3f20000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (CF_acos b_ack!996)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!996)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FDIV_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fc0000000000000) a!1)
    (fp.mul roundNearestTiesToEven (CF_acos b_ack!996) (CF_acos b_ack!996)))))

(check-sat)
(exit)
