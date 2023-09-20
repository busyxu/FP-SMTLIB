(declare-fun h_ack!72 () (_ BitVec 64))
(declare-fun x_ack!73 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!73)
                    ((_ to_fp 11 53) h_ack!72))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  x_ack!73
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) h_ack!72)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
