(declare-fun b_ack!2256 () (_ BitVec 32))
(declare-fun a_ack!2258 () (_ BitVec 32))
(declare-fun c_ack!2257 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!2256 #x00000000)))
(assert (not (bvslt a_ack!2258 b_ack!2256)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2257) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2257) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!2256))
(assert (not (bvslt a_ack!2258 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2257) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2257) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!2258)))
(assert (not (= #x00000001 a_ack!2258)))
(assert (not (= #x00000002 a_ack!2258)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2257) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2257) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (bvslt a_ack!2258 #x000186a0))
(assert (bvsle #x00000002 a_ack!2258))
(assert (bvsle #x00000003 a_ack!2258))
(assert (not (bvsle #x00000004 a_ack!2258)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4000000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2258)))

(check-sat)
(exit)
