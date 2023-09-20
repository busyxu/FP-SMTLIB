(declare-fun a_ack!189 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!188 () (_ BitVec 64))
(assert (fp.geq ((_ to_fp 11 53) a_ack!189) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!189) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!189) ((_ to_fp 11 53) #x4034000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x8000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!188)
          ((_ to_fp 11 53) #x0012492492492492))))

(check-sat)
(exit)
