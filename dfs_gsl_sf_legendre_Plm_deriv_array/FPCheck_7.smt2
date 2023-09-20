(declare-fun b_ack!24 () (_ BitVec 32))
(declare-fun a_ack!26 () (_ BitVec 32))
(declare-fun c_ack!25 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!24 #x00000000)))
(assert (not (bvslt a_ack!26 b_ack!24)))
(assert (= #x00000000 b_ack!24))
(assert (not (bvslt a_ack!26 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!25) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!25) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 a_ack!26))
(assert (bvsle #x00000000 a_ack!26))
(assert (not (bvsle #x00000001 a_ack!26)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.abs (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!25)
                  ((_ to_fp 11 53) #x3ff0000000000000)))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!26)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
