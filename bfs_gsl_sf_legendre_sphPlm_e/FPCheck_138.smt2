(declare-fun b_ack!660 () (_ BitVec 32))
(declare-fun a_ack!662 () (_ BitVec 32))
(declare-fun c_ack!661 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!660 #x00000000)))
(assert (not (bvslt a_ack!662 b_ack!660)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!661) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!661) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!660))
(assert (not (bvslt a_ack!662 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!661) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!661) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!662)))
(assert (not (= #x00000001 a_ack!662)))
(assert (= #x00000002 a_ack!662))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4008000000000000)
          ((_ to_fp 11 53) c_ack!661))
  c_ack!661))

(check-sat)
(exit)
