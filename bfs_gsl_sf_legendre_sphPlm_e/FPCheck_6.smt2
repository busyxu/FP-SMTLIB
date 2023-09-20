(declare-fun b_ack!18 () (_ BitVec 32))
(declare-fun a_ack!20 () (_ BitVec 32))
(declare-fun c_ack!19 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!18 #x00000000)))
(assert (not (bvslt a_ack!20 b_ack!18)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!19) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!19) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!18))
(assert (not (bvslt a_ack!20 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!19) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!19) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 a_ack!20))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.add roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!20))
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x402921fb54442d18))

(check-sat)
(exit)
