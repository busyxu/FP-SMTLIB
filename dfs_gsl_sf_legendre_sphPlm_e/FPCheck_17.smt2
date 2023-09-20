(declare-fun b_ack!57 () (_ BitVec 32))
(declare-fun a_ack!59 () (_ BitVec 32))
(declare-fun c_ack!58 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!57 #x00000000)))
(assert (not (bvslt a_ack!59 b_ack!57)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!58) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!58) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!57))
(assert (not (bvslt a_ack!59 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!58) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!58) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!59)))
(assert (= #x00000001 a_ack!59))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.add roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!59))
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x402921fb54442d18))

(check-sat)
(exit)
