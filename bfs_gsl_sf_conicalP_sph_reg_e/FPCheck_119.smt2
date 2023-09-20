(declare-fun c_ack!408 () (_ BitVec 64))
(declare-fun a_ack!409 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!408) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!409 #xffffffff)))
(assert (not (= #xffffffff a_ack!409)))
(assert (not (= #x00000000 a_ack!409)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!408) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!408) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!408) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  #x3fe0000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!409)))

(check-sat)
(exit)
