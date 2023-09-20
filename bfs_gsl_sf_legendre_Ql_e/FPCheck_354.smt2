(declare-fun b_ack!1110 () (_ BitVec 64))
(declare-fun a_ack!1111 () (_ BitVec 32))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1110) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1110) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!1111 #x00000000)))
(assert (not (= #x00000000 a_ack!1111)))
(assert (not (= #x00000001 a_ack!1111)))
(assert (bvslt #x000186a0 a_ack!1111))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1110) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.lt (CF_acos b_ack!1110) ((_ to_fp 11 53) #x3f20000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (CF_acos b_ack!1110)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1110)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fc0000000000000) a!1)
    (fp.mul roundNearestTiesToEven (CF_acos b_ack!1110) (CF_acos b_ack!1110)))))

(check-sat)
(exit)
