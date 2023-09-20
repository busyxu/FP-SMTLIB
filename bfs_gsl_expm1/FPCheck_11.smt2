(declare-fun a_ack!20 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!20)) ((_ to_fp 11 53) #x3fe62e42fefa39ef)))
(assert (FPCHECK_FADD_ACCURACY
  a_ack!20
  (fp.mul roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!20)
                  ((_ to_fp 11 53) #x3ff0000000000000))
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!20)
                  ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
