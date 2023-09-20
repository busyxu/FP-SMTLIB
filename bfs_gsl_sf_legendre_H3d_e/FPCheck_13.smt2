(declare-fun c_ack!71 () (_ BitVec 64))
(declare-fun a_ack!72 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun b_ack!70 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!71) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!71) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!72)))
(assert (= #x00000001 a_ack!72))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!70)
          ((_ to_fp 11 53) b_ack!70))
  #x3ff0000000000000))

(check-sat)
(exit)
