(declare-fun c_ack!262 () (_ BitVec 64))
(declare-fun a_ack!263 () (_ BitVec 32))
(declare-fun b_ack!261 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!262) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!262) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!263)))
(assert (not (= #x00000001 a_ack!263)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!262) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!261))
                          ((_ to_fp 11 53) c_ack!262))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (FPCHECK_FADD_OVERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven (bvmul a_ack!263 a_ack!263))
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!261))
          (fp.abs ((_ to_fp 11 53) b_ack!261)))))

(check-sat)
(exit)
