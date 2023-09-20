(declare-fun c_ack!65 () (_ BitVec 64))
(declare-fun a_ack!66 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!64 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!65) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!65) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!66)))
(assert (= #x00000001 a_ack!66))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!64)
          ((_ to_fp 11 53) b_ack!64))
  #x3ff0000000000000))

(check-sat)
(exit)
