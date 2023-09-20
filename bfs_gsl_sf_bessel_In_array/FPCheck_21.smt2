(declare-fun c_ack!135 () (_ BitVec 64))
(declare-fun a_ack!136 () (_ BitVec 32))
(declare-fun b_ack!134 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!135))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!134 a_ack!136)))
(assert (not (bvslt a_ack!136 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!135) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!134)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!135))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) c_ack!135))
                          (fp.abs ((_ to_fp 11 53) c_ack!135)))
                  ((_ to_fp 11 53) #x41fd6e2bc3b82b06))))
  (not a!1)))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!135))
          (fp.abs ((_ to_fp 11 53) c_ack!135)))))

(check-sat)
(exit)
