(declare-fun b_ack!235 () (_ BitVec 32))
(declare-fun a_ack!237 () (_ BitVec 32))
(declare-fun c_ack!236 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!235 #x00000000)))
(assert (not (bvslt a_ack!237 b_ack!235)))
(assert (= #x00000000 b_ack!235))
(assert (not (bvslt a_ack!237 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!236) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!236) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!237)))
(assert (= #x00000001 a_ack!237))
(assert (bvsle #x00000000 a_ack!237))
(assert (bvsle #x00000001 a_ack!237))
(assert (FPCHECK_FADD_OVERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!237)
  #x3ff0000000000000))

(check-sat)
(exit)
