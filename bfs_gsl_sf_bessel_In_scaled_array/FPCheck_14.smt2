(declare-fun a_ack!98 () (_ BitVec 32))
(declare-fun b_ack!96 () (_ BitVec 32))
(declare-fun c_ack!97 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!96 a_ack!98)))
(assert (not (bvslt a_ack!98 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!97) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!96)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!97))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) c_ack!97))
                          (fp.abs ((_ to_fp 11 53) c_ack!97)))
                  ((_ to_fp 11 53) #x41fd6e2bc3b82b06))))
  (not a!1)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.abs ((_ to_fp 11 53) c_ack!97))
  (fp.abs ((_ to_fp 11 53) c_ack!97))))

(check-sat)
(exit)
