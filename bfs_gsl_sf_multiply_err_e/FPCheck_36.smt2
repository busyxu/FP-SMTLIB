(declare-fun a_ack!186 () (_ BitVec 64))
(declare-fun c_ack!185 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!186) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!185) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!186))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) c_ack!185))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3cc0000000000000
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!186)
                  ((_ to_fp 11 53) c_ack!185)))))

(check-sat)
(exit)
