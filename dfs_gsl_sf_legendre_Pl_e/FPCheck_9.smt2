(declare-fun a_ack!35 () (_ BitVec 32))
(declare-fun b_ack!34 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!35 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!34) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!34) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!35)))
(assert (not (= #x00000001 a_ack!35)))
(assert (not (= #x00000002 a_ack!35)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!34) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!34) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!35 #x000186a0)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!35)
          ((_ to_fp 11 53) #x3fe0000000000000))
  (CF_acos b_ack!34)))

(check-sat)
(exit)
