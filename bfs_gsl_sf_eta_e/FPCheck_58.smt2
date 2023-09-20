(declare-fun a_ack!77 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!77) ((_ to_fp 11 53) #x4059000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!77)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f7e5078049f59f0)))
(assert (FPCHECK_FADD_OVERFLOW
  #x3f59b4d403ff42d9
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!77)
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) #x3f489262c32f6cad))))

(check-sat)
(exit)
