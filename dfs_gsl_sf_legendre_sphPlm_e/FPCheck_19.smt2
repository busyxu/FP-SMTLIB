(declare-fun b_ack!66 () (_ BitVec 32))
(declare-fun a_ack!68 () (_ BitVec 32))
(declare-fun c_ack!67 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!66 #x00000000)))
(assert (not (bvslt a_ack!68 b_ack!66)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!67) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!67) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!66))
(assert (not (bvslt a_ack!68 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!67) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!67) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!68)))
(assert (= #x00000001 a_ack!68))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!68))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x402921fb54442d18))))
  (FPCHECK_FINVALID_SQRT a!1 a!1)))

(check-sat)
(exit)
