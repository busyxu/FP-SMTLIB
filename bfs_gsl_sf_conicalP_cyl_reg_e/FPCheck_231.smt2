(declare-fun c_ack!963 () (_ BitVec 64))
(declare-fun a_ack!964 () (_ BitVec 32))
(declare-fun b_ack!962 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!963) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!964 #xffffffff)))
(assert (= #xffffffff a_ack!964))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!963) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!962) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!963) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!962) ((_ to_fp 11 53) #x408f400000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!963)
          ((_ to_fp 11 53) c_ack!963))))

(check-sat)
(exit)
