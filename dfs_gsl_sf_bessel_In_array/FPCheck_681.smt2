(declare-fun c_ack!2896 () (_ BitVec 64))
(declare-fun a_ack!2897 () (_ BitVec 32))
(declare-fun b_ack!2895 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!2896))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!2895 a_ack!2897)))
(assert (not (bvslt a_ack!2897 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2896) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!2895)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2896))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) c_ack!2896))
                          (fp.abs ((_ to_fp 11 53) c_ack!2896)))
                  ((_ to_fp 11 53) #x41fd6e2bc3b82b06))))
  (not a!1)))
(assert (FPCHECK_FADD_ACCURACY
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!2896))
          (fp.abs ((_ to_fp 11 53) c_ack!2896)))))

(check-sat)
(exit)
