(declare-fun b_ack!192 () (_ BitVec 32))
(declare-fun a_ack!194 () (_ BitVec 32))
(declare-fun c_ack!193 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!192 #x00000000)))
(assert (not (bvslt a_ack!194 b_ack!192)))
(assert (= #x00000000 b_ack!192))
(assert (not (bvslt a_ack!194 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!193) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!193) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!194)))
(assert (= #x00000001 a_ack!194))
(assert (bvsle #x00000000 a_ack!194))
(assert (bvsle #x00000001 a_ack!194))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.abs (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!193)
                  ((_ to_fp 11 53) #x3ff0000000000000)))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!194)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
