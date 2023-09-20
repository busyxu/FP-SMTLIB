(declare-fun b_ack!48 () (_ BitVec 32))
(declare-fun a_ack!50 () (_ BitVec 32))
(declare-fun c_ack!49 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!48 #x00000000)))
(assert (not (bvslt a_ack!50 b_ack!48)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!49) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!49) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!48))
(assert (not (bvslt a_ack!50 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!49) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!49) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!50)))
(assert (= #x00000001 a_ack!50))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!50))
  #x3ff0000000000000))

(check-sat)
(exit)
