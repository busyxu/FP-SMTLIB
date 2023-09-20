(declare-fun b_ack!6 () (_ BitVec 32))
(declare-fun a_ack!8 () (_ BitVec 32))
(declare-fun c_ack!7 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!6 #x00000000)))
(assert (not (bvslt a_ack!8 b_ack!6)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!7) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!7) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!6))
(assert (not (bvslt a_ack!8 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!7) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!7) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 a_ack!8))
(assert (FPCHECK_FMUL_ACCURACY
  #x4000000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!8)))

(check-sat)
(exit)
