(declare-fun b_ack!30 () (_ BitVec 32))
(declare-fun a_ack!32 () (_ BitVec 32))
(declare-fun c_ack!31 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!30 #x00000000)))
(assert (not (bvslt a_ack!32 b_ack!30)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!31) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!31) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!30))
(assert (not (bvslt a_ack!32 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!31) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!31) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 a_ack!32))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!32))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x402921fb54442d18))))
  (FPCHECK_FINVALID_SQRT a!1 a!1)))

(check-sat)
(exit)
