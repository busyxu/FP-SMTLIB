(declare-fun b_ack!69 () (_ BitVec 32))
(declare-fun a_ack!71 () (_ BitVec 32))
(declare-fun c_ack!70 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!69 #x00000000)))
(assert (not (bvslt a_ack!71 b_ack!69)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!70) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!70) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!69)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!70) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!70) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven b_ack!69))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FINVALID_SQRT a!1 a!1)))

(check-sat)
(exit)
