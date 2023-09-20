(declare-fun a_ack!283 () (_ BitVec 32))
(declare-fun b_ack!282 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!283 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!282) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!282) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!283)))
(assert (not (= #x00000001 a_ack!283)))
(assert (not (= #x00000002 a_ack!283)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!282) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!282) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (bvslt a_ack!283 #x000186a0))
(assert (bvsle #x00000002 a_ack!283))
(assert (bvsle #x00000003 a_ack!283))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!282))
          ((_ to_fp 11 53) #x3cb0000000000000))))

(check-sat)
(exit)
