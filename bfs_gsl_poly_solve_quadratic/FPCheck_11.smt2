(declare-fun a_ack!46 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!45 () (_ BitVec 64))
(declare-fun b_ack!44 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!46) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!44)
          ((_ to_fp 11 53) b_ack!44))
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4010000000000000)
                  ((_ to_fp 11 53) a_ack!46))
          ((_ to_fp 11 53) c_ack!45))))

(check-sat)
(exit)
