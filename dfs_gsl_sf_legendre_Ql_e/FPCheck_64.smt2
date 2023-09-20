(declare-fun b_ack!186 () (_ BitVec 64))
(declare-fun a_ack!187 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!186) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!186) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!187 #x00000000)))
(assert (not (= #x00000000 a_ack!187)))
(assert (not (= #x00000001 a_ack!187)))
(assert (not (bvslt #x000186a0 a_ack!187)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!186) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000002 a_ack!187))
          ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
