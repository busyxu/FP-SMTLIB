(declare-fun b_ack!120 () (_ BitVec 32))
(declare-fun a_ack!122 () (_ BitVec 32))
(declare-fun c_ack!121 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!120 #x00000000)))
(assert (not (bvslt a_ack!122 b_ack!120)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!121) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!121) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!120))
(assert (not (bvslt a_ack!122 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!121) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!121) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!122)))
(assert (= #x00000001 a_ack!122))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.add roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!122))
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x402921fb54442d18))

(check-sat)
(exit)
