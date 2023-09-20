(declare-fun a_ack!128 () (_ BitVec 32))
(declare-fun b_ack!127 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!128 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!127) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!127) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!128)))
(assert (not (= #x00000001 a_ack!128)))
(assert (not (= #x00000002 a_ack!128)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!127) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!127) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!128 #x000186a0)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!128)
          ((_ to_fp 11 53) #x3fe0000000000000))
  (CF_acos b_ack!127)))

(check-sat)
(exit)
